within INFRAX.SubSystems.Controllers;
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
          extent={{-100,-100},{100,100}},
          lineColor={0,0,127},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-150,150},{150,110}},
          textString="%name",
          lineColor={0,0,255}),
          Ellipse(extent={{-80,80},{80,-80}}, lineColor={160,160,164},
            fillColor={215,215,215},
            fillPattern=FillPattern.Solid),
          Line(points={{0,80},{0,60}}, color={160,160,164}),
          Line(points={{80,0},{60,0}}, color={160,160,164}),
          Line(points={{0,-80},{0,-60}}, color={160,160,164}),
          Line(points={{-80,0},{-60,0}}, color={160,160,164}),
          Line(points={{37,70},{26,50}}, color={160,160,164}),
          Line(points={{70,38},{49,26}}, color={160,160,164}),
          Line(points={{71,-37},{52,-27}}, color={160,160,164}),
          Line(points={{39,-70},{29,-51}}, color={160,160,164}),
          Line(points={{-39,-70},{-29,-52}}, color={160,160,164}),
          Line(points={{-71,-37},{-50,-26}}, color={160,160,164}),
          Line(points={{-71,37},{-54,28}}, color={160,160,164}),
          Line(points={{-38,70},{-28,51}}, color={160,160,164}),
          Line(
            points={{0,0},{-50,50}},
            thickness=0.5),
          Line(
            points={{0,0},{40,0}},
            thickness=0.5)}),                                      Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end Clock;
end Components;
