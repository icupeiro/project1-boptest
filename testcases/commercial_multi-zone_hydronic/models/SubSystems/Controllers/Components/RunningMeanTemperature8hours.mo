within INFRAX.SubSystems.Controllers.Components;
model RunningMeanTemperature8hours
  "Calculate the running mean temperature of the last 8 hours with 4 samples each 2 hours"

  parameter Real[4] TAveDayIni(unit="K", displayUnit="degC") = ones(4).* 283.15
    "Initial running mean temperature";

  // Interface
   discrete Modelica.Blocks.Interfaces.RealOutput TRm(unit="K",displayUnit = "degC")
    "Running mean average temperature"
     annotation (Placement(transformation(extent={{96,-10},{116,10}})));

protected
  discrete Real[4] TAveDay(unit="K",displayUnit = "degC")
    "Vector with the average hour temperatures of the last 8 hours";

public
  Modelica.Blocks.Sources.RealExpression TAmb(y=sim.Te)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  outer IDEAS.BoundaryConditions.SimInfoManager sim
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
algorithm
  when initial() then
    // initialization of the discrete variables
    TAveDay:= TAveDayIni;
  elsewhen sample(0,3600*2) then
    // Update of TAveDay

     for i in 2:4 loop
      TAveDay[i] := pre(TAveDay[i-1]);
     end for;

     TAveDay[1] := TAmb.y;

  end when;

initial equation
  TRm = TAveDayIni[1];

equation

  when sample(3600*8, 3600*2) then
    TRm = sum(TAveDay)/4;
  end when
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics),
    experiment(StopTime=864000),
    __Dymola_experimentSetupOutput,
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics={
        Rectangle(
          extent={{100,100},{-100,-100}},
          lineColor={100,100,100},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),
        Line(
          points={{0,100},{98,0},{0,-100}},
          color={100,100,100},
          smooth=Smooth.None),
        Text(
          extent={{-100,140},{100,100}},
          lineColor={0,0,255},
          textString="%name"),
        Text(
          extent={{-48,32},{58,-26}},
          lineColor={0,0,255},
          textString="EN15251")}),
Documentation(revisions="<html>
<ul>
<li>
January 19, 2015, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));

end RunningMeanTemperature8hours;
