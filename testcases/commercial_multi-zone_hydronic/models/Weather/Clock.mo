within INFRAX.Weather;
model Clock
"Give the hour, the day, the month and the season during the year. The DST and bisectile year are taken into account. The calculation is only not correct if you simulate more than 1 year in which
  a bisectile year is present."

  parameter Integer year = 2014;
  final parameter Integer start_day = if year==2012 then 7 elseif year==2013 then 2 elseif year==2014 then 3 elseif year==2015 then 4 elseif year==2016 then 5 else 1
    "Day of the week at starting time."                                                                                                     annotation(hideResult=true);
  final parameter Integer nbSecMon[12] = if not (year==2012 or year == 2016) then {2678400,  2419200,  2678400,  2592000,  2678400,  2592000,  2678400,  2678400,  2592000,  2678400,  2592000,  2678400} else
  {2678400,  2419200 + 3600*24, 2678400,  2592000,  2678400,  2592000,  2678400,  2678400,  2592000,  2678400,  2592000,  2678400}
    "Number of seconds per month for a normal year or a bisectil year (2012, 2016)" annotation(hideResult=true);

  // FIXME: it would be better if yearTime would allow multi year simulation without error when a bissectile year is included.
  Real yearTime = time - floor(time/sum(nbSecMon))*sum(nbSecMon)
    "Time with substract of year if simulation is longer that 1 year.";

  discrete Real dst
    "Daylight saving correction factor compared to winter hour.";

  Modelica.Blocks.Sources.RealExpression dayVal(y=mod( floor(time/3600/24 + start_day-1), 7) + 1)
    "Day of the week"
    annotation (Placement(transformation(extent={{-20,10},{40,30}})));
 Modelica.Blocks.Sources.RealExpression hourVal(y=mod( floor( time/3600) + dst,  24))
    "Hour of the day"
   annotation (Placement(transformation(extent={{-20,50},{40,70}})));

  Modelica.Blocks.Sources.RealExpression monthVal( y = sum({if yearTime > sum(nbSecMon[1:i]) then 1 else 0 for i in 1:12})  + 1)
    annotation (Placement(transformation(extent={{-20,-30},{40,-10}})));

  Modelica.Blocks.Interfaces.RealOutput hour "Value of Real output" annotation (
     Placement(transformation(extent={{100,50},{120,70}}), iconTransformation(
          extent={{100,50},{120,70}})));
  Modelica.Blocks.Interfaces.RealOutput day "Value of Real output" annotation (
      Placement(transformation(extent={{100,10},{120,30}}),  iconTransformation(
          extent={{100,10},{120,30}})));
  Modelica.Blocks.Interfaces.RealOutput month "Value of Real output"
    annotation (Placement(transformation(extent={{100,-30},{120,-10}}),
        iconTransformation(extent={{100,-30},{120,-10}})));
  Modelica.Blocks.Sources.BooleanExpression summer(y = if yearTime > sum(nbSecMon[1:2])+20*24*3600 and yearTime < sum(nbSecMon[1:8])+20*24*3600 then true else false)
    "Summer from 21/03 to 21/09" annotation (Placement(transformation(extent={{-20,-70},{40,-50}})));
  Modelica.Blocks.Interfaces.BooleanOutput season
    "Season: 0 = winter, 1 = summer"
    annotation (Placement(transformation(extent={{100,-70},{120,-50}}),
        iconTransformation(extent={{100,-80},{120,-60}})));
protected
  Real hour_winter = mod( floor( time/3600),  24) "Winter hour";

  discrete Real month_d;
  discrete Real day_d;
  discrete Real hour_winter_d;
  Boolean changeToSummer = month_d==3 and day_d==7 and hour_winter_d==2 and yearTime > (sum(nbSecMon[1:3]) - 7*3600*24);
  Boolean changeToWinter = month_d==10 and day_d==7 and hour_winter_d==2 and yearTime > (sum(nbSecMon[1:10]) - 7*3600*24);

equation
  when sample(0, 3600) then
    month_d = month;
    day_d = day;
    hour_winter_d = hour_winter;
  end when;

  when  initial() then
    dst = 0;
  elsewhen edge(changeToSummer) then //Last week-end of march, winter hour 2h00 becomes summer hour 3h00
    dst = 1;
  elsewhen edge(changeToWinter) then //Last week-end of october, summer hour 3h00 becomes winter hour 2h00
    dst = 0;
  end when;

  connect(hourVal.y, hour) annotation (Line(
      points={{43,60},{110,60}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(dayVal.y, day) annotation (Line(
      points={{43,20},{110,20}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(monthVal.y, month) annotation (Line(
      points={{43,-20},{110,-20}},
      color={0,0,127},
      smooth=Smooth.None));

  connect(summer.y, season) annotation (Line(points={{43,-60},{110,-60},{110,-60}},
        color={255,0,255}));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),           Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Ellipse(
          extent={{-100,100},{100,-100}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{40,92}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{38,76},{-2,-2},{34,-32}},
          color={0,0,0},
          smooth=Smooth.None,
          thickness=1),
        Text(
          extent={{-100,-100},{100,-120}},
          lineColor={0,0,255},
          textString="%name")}),
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Clock;
