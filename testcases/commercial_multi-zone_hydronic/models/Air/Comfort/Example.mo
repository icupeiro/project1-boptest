within INFRAX.Air.Comfort;
model Example
  parameter String weatherFileN= Modelica.Utilities.Files.loadResource("modelica://Air/Resources/1518z.txt");
  parameter String weatherFile= Modelica.Utilities.Files.loadResource("modelica://Air/Resources/Zurich.TMY");
  Limits limits(nZones=2, typeLimit=1) annotation (Placement(transformation(extent={{-6,-12},{18,14}})));
  Modelica.Blocks.Sources.Sine zone1(
    amplitude=2.5,
    freqHz=1/(36000*4*24),
    offset=273.15 + 20) annotation (Placement(transformation(extent={{-60,-30},{-40,-10}})));
  Modelica.Blocks.Sources.ExpSine zone2(
    amplitude=5,
    freqHz=1/(36000*4*24),
    damping=0.00000002,
    offset=273.15 + 20,
    startTime=36000) annotation (Placement(transformation(extent={{-60,6},{-40,26}})));
  inner HausM.Components.SimInfoManagerInputs
                                        sim(
    filNam=weatherFile,
    fileNameLocalWeather=weatherFileN,
    fileNameLocalWeatherTAmb=weatherFileN)         annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
equation
  connect(zone1.y, limits.TSensor[1]) annotation (Line(points={{-39,-20},{-20,-20},{-20,-1},{-8,-1}},color={0,0,127}));
  connect(zone2.y, limits.TSensor[2]) annotation (Line(points={{-39,16},{-20,16},{-20,1},{-8,1}},    color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={28,108,200},
          fillColor={255,255,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{0,100},{-10,100},{-22,98},{-40,92},{-56,84},{-66,76},{-84,56},{-92,40},{-96,30},{-98,24},{-100,12},{-100,0},{0,0},{0,100}},
          lineColor={28,108,200},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{50,50},{40,50},{28,48},{10,42},{-6,34},{-16,26},{-34,6},{-42,-10},{-46,-20},{-48,-26},{-50,-38},{-50,-50},{50,-50},{50,50}},
          lineColor={28,108,200},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          origin={50,-50},
          rotation=180)}),                                       Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=60480000,
      Interval=3600.00288,
      Tolerance=1e-06,
      __Dymola_Algorithm="Cvode"),
    __Dymola_experimentSetupOutput,
    __Dymola_experimentFlags(
      Advanced(
        EvaluateAlsoTop=false,
        GenerateVariableDependencies=false,
        OutputModelicaCode=false),
      Evaluate=true,
      OutputCPUtime=true,
      OutputFlatModelica=false));
end Example;
