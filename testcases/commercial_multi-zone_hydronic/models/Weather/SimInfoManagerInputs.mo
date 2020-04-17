within INFRAX.Weather;
model SimInfoManagerInputs
  extends IDEAS.BoundaryConditions.SimInfoManager(weaDat(
      TDryBulSou=IDEAS.BoundaryConditions.Types.DataSource.Input,
      TDewPoiSou=IDEAS.BoundaryConditions.Types.DataSource.Input,
      relHumSou=IDEAS.BoundaryConditions.Types.DataSource.Input,
      winSpeSou=IDEAS.BoundaryConditions.Types.DataSource.Input,
      winDirSou=IDEAS.BoundaryConditions.Types.DataSource.Input,
      HSou=IDEAS.BoundaryConditions.Types.RadiationDataSource.Input_HDirNor_HDifHor));

  parameter String fileNameLocalWeather=Modelica.Utilities.Files.loadResource(
      "modelica://SmartGeotherm/Resources/Validation/HH/XmasExperiment/weatherFile_lat_51_lon_5_date_2012_1_1_nbDays367.txt");
  parameter String fileNameLocalWeatherTAmb=Modelica.Utilities.Files.loadResource(
      "modelica://SmartGeotherm/Resources/Validation/HH/XmasExperiment/Measurements/TAmb_Hobo_XmasExp.txt");

  Modelica.Blocks.Routing.RealPassThrough trustWeatherData
    annotation (Placement(transformation(extent={{-20,-14},{-12,-6}})));
  Modelica.Blocks.Tables.CombiTable1Ds localWeather(
    final tableOnFile=true,
    tableName="data",
    final fileName=fileNameLocalWeather,
    final columns={2,3,4,5,6,7,8,9,10},
    final smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    "Data reader"
    annotation (Placement(transformation(extent={{-52,-20},{-32,0}})));
  Modelica.Blocks.Tables.CombiTable1Ds TAmb(
    final tableOnFile=true,
    tableName="data",
    final fileName=fileNameLocalWeatherTAmb,
    final columns={2},
    final smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    "Data reader"
    annotation (Placement(transformation(extent={{-52,-48},{-32,-28}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=time)
    annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
equation
  connect(localWeather.y[2], weaDat.TDewPoi_in) annotation (Line(points={{-31,-10},
          {-26,-10},{-26,-78.8},{-81,-78.8}},   color={0,0,127}));
  connect(localWeather.y[4], weaDat.winSpe_in) annotation (Line(points={{-31,-10},
          {-26,-10},{-26,-93.9},{-81,-93.9}},   color={0,0,127}));
  connect(localWeather.y[5], weaDat.winDir_in) annotation (Line(points={{-31,-10},
          {-26,-10},{-26,-96},{-81,-96}},     color={0,0,127}));
  connect(localWeather.y[6], weaDat.relHum_in) annotation (Line(points={{-31,-10},
          {-26,-10},{-26,-85},{-81,-85}},     color={0,0,127}));
  connect(localWeather.y[7], weaDat.HDirNor_in) annotation (Line(points={{-31,-10},
          {-31,35.1},{-81,35.1},{-81,-101}},  color={0,0,127}));
  connect(localWeather.y[8], weaDat.HDifHor_in) annotation (Line(points={{-31,-10},
          {-26,-10},{-26,-97.6},{-81,-97.6}},   color={0,0,127}));
  connect(localWeather.y[9], trustWeatherData.u)
    annotation (Line(points={{-31,-10},{-26,-10},{-20.8,-10}},
                                                     color={0,0,127}));

  connect(TAmb.y[1], weaDat.TDryBul_in) annotation (Line(points={{-31,-38},{-30,
          -38},{-30,-81},{-81,-81}},     color={0,0,127}));
  connect(realExpression.y, localWeather.u) annotation (Line(points={{-69,-20},
          {-64,-20},{-60,-20},{-60,-10},{-54,-10}}, color={0,0,127}));
  connect(realExpression.y, TAmb.u) annotation (Line(points={{-69,-20},{-60,-20},
          {-60,-38},{-54,-38}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),
    experiment(StartTime=3.07585e+007, StopTime=3.16691e+007),
    __Dymola_experimentSetupOutput);
end SimInfoManagerInputs;
