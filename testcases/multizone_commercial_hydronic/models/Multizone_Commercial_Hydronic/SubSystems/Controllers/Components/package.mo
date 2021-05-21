within Multizone_Commercial_Hydronic.SubSystems.Controllers;
package Components

  model RunningMeanTemperature7to18
    "Calculate the running mean temperature from 7h to 18h"

    parameter Real[24] TAveDayIni(unit="K", displayUnit="degC") = ones(24).* 283.15
      "Initial running mean temperature";

    // Interface
     discrete Modelica.Blocks.Interfaces.RealOutput TRm(unit="K",displayUnit = "degC")
      "Running mean average temperature"
       annotation (Placement(transformation(extent={{96,-10},{116,10}})));

protected
    discrete Real[24] TAveDay(unit="K",displayUnit = "degC")
      "Vector with the average hour temperatures of the previous day";


public
    Modelica.Blocks.Sources.RealExpression TAmb(y=sim.Te)
      annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
    outer IDEAS.BoundaryConditions.SimInfoManager sim
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
  algorithm
    when initial() then
      // initialization of the discrete variables
      TAveDay:= TAveDayIni;
    elsewhen sample(3600,3600) then
      // Update of TAveDay

       for i in 2:24 loop
        TAveDay[i] := pre(TAveDay[i-1]);
       end for;

       TAveDay[1] := TAmb.y;

    end when;

  initial equation
    TRm = TAveDayIni[1];

  equation

    when sample(3600*18, 3600*24) then
      TRm = sum(TAveDay[7:18])/12;
    end when
    annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -100},{100,100}}), graphics),
      experiment(StopTime=864000),
      __Dymola_experimentSetupOutput,
      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
          graphics={
          Rectangle(
            heaSys.e005.port_a2.extent),
          Line(
            heaSys.e005.port_a2.points),
          Text(
            heaSys.e005.port_a2.extent),
          Text(
            heaSys.e005.port_a2.extent)}),
  Documentation(revisions="<html>
<ul>
<li>
January 19, 2015, by Damien Picard:<br/>
First implementation.
</li>
</ul>
</html>"));


  end RunningMeanTemperature7to18;

  model Clock
    "Computation of hour and day assuming time = epoch time stamp +1 day and no daylight savings"
    parameter Modelica.SIunits.Time timZon = 0 "Time zone, GMT+1 = 3600 s";

    Modelica.Blocks.Sources.RealExpression hourExp(y=mod((time + timZon)/3600, 24))
      "Hour computation"
      annotation (Placement(transformation(extent={{-20,10},{0,30}})));
    Modelica.Blocks.Interfaces.RealOutput hour "Hour of the day"
      annotation (Placement(transformation(extent={{100,10},{120,30}})));
    Modelica.Blocks.Sources.RealExpression weekDayExp(y=1 + mod((time + timZon)/
          86400 + 4, 7)) "Day computation, monday=1, sunday=7"
      annotation (Placement(transformation(extent={{-20,-30},{0,-10}})));
    Modelica.Blocks.Interfaces.RealOutput weekDay
      "Day of the week, monday=1, sunday=7"
      annotation (Placement(transformation(extent={{100,-30},{120,-10}})));
  equation
    connect(hourExp.y, hour) annotation (Line(points={{1,20},{52,20},{52,20},{110,
            20}}, color={0,0,127}));
    connect(weekDayExp.y, weekDay)
      annotation (Line(points={{1,-20},{110,-20}}, color={0,0,127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                  Rectangle(
          heaSys(     port_a2)),          Text(
          heaSys(     port_a2)),
          Ellipse(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(heaSys(     port_a2)),
          Line(
            heaSys(     port_a2)),
          Line(
            heaSys(     port_a2))}),                               Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Clock;
end Components;
