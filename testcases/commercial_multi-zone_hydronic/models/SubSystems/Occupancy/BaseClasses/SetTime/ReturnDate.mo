within INFRAX.SubSystems.Occupancy.BaseClasses.SetTime;
model ReturnDate "Returns different parameters related to time: number of day, month and year"

//INPUTS

  parameter Integer startDay   "default 1 jan";
  parameter Integer startYear "To chech if the year is a leap year. Necessary when to compare with measurement data";

  //INTERNAL VARIABLES
protected
  Real leap;
  Real totalSecondsOneYear;
  Real totalSecondsPrevYear;
  Real timeYear;
  Real dayYear;
  Real yearAdd;

  Real AmountOfSecondsInMonth[12]=
  {31*24*3600,  (leap+28)*24*3600,  31*24*3600,  30*24*3600,
   31*24*3600,  30*24*3600,  31*24*3600,  31*24*3600,
   30*24*3600,  31*24*3600,  30*24*3600,  31*24*3600}   "Number of seconds per month";

  Real AmountOfDaysInMonth[12]=
  {31,  (leap+28),   31,   30,
   31,   30,   31,   31,
   30,   31,   30,   31}    "Number of days per month";

  Modelica.Blocks.Sources.RealExpression calculateHour(y=mod(floor(time/3600), 24))
    "returns hour between 0-24 "
    annotation (Placement(transformation(extent={{0,72},{58,96}})));

  Modelica.Blocks.Sources.RealExpression calculateDay(y=mod(floor(((startDay-1)*24*3600+time)/(3600*24)), 7)+1)
    "returns day between 1-7"
    annotation (Placement(transformation(extent={{-94,80},{-36,104}})));
  Modelica.Blocks.Sources.RealExpression calculateMonth(y=sum({if ((startDay-1)*24*3600+timeYear) > sum(
        AmountOfSecondsInMonth[1:i]) then 1 else 0 for i in 1:11})+1)
    "returns month between 1-12"
    annotation (Placement(transformation(extent={{0,-8},{58,16}})));

  Modelica.Blocks.Sources.RealExpression caculatelDayNumber(y=mod(floor(((startDay-1)*24*3600+timeYear)/(3600*24)),
        (365+leap))) "returns day between 1-366"
    annotation (Placement(transformation(extent={{0,-48},{58,-24}})));
  Modelica.Blocks.Sources.RealExpression calYear(y=startYear+yearAdd) "year"
    annotation (Placement(transformation(extent={{-98,-8},{-40,16}})));
  Modelica.Blocks.Sources.RealExpression calAmountDays(y=(365 + leap))
    "365 or 366"
    annotation (Placement(transformation(extent={{-98,14},{-40,38}})));

//OUTPUTS
public
  Modelica.Blocks.Interfaces.RealOutput hour "Output: returns hour between 0-24" annotation (
     Placement(transformation(extent={{100,74},{120,94}}), iconTransformation(
          extent={{100,74},{120,94}})));
  Modelica.Blocks.Interfaces.RealOutput day "Output: returns day between 1-7" annotation (
      Placement(transformation(extent={{100,34},{120,54}}),  iconTransformation(
          extent={{100,34},{120,54}})));
  Modelica.Blocks.Interfaces.RealOutput month "Output: returns month between 1-12"    annotation (Placement(transformation(extent={{100,-6},
            {120,14}}),
        iconTransformation(extent={{100,-6},{120,14}})));
  Modelica.Blocks.Interfaces.RealOutput numberDay "Output: returns day between 1-366"
    annotation (Placement(transformation(extent={{100,-70},{120,-50}}),
        iconTransformation(extent={{100,-64},{120,-44}})));
  Modelica.Blocks.Interfaces.RealOutput year "Output: returns years in the simulation starting from 1" annotation (
     Placement(transformation(extent={{-17,-17},{17,17}},
        rotation=-90,
        origin={-33,-117}),                                iconTransformation(
          extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={-54,-110})));
  Modelica.Blocks.Interfaces.RealOutput totalDaysYear "Output: Total Amount of days in year (365 or 366)" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={46,-110}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={46,-110})));
  GetDayYear getDayYear
    annotation (Placement(transformation(extent={{-56,64},{-36,84}})));
 Real tussenresultaatDag;

equation

//Leap year: adapt number of days for that year
//---------------------------------------------------------
  if mod(startYear, 4) == 0 then
    if mod(startYear,100) == 0 then
      if mod(startYear,400) == 0 then
        leap = 1;
      else leap = 0;
      end if;
    else leap = 1;
    end if;
  else leap = 0;
  end if;

//Calculates the total amount of seconds in that year
totalSecondsOneYear = sum(AmountOfSecondsInMonth);

if timeYear==totalSecondsOneYear then
  timeYear = timeYear-totalSecondsOneYear;
else
  timeYear = time-delay(totalSecondsPrevYear,1);
end if;

if timeYear==totalSecondsOneYear then
  totalSecondsPrevYear  = ((floor(time/sum(AmountOfSecondsInMonth)))*sum(AmountOfSecondsInMonth));
else
  totalSecondsPrevYear  = floor(time/sum(AmountOfSecondsInMonth))*sum(AmountOfSecondsInMonth);
end if;

if timeYear==totalSecondsOneYear then
  yearAdd  = ((floor(time/sum(AmountOfSecondsInMonth)))*1);
else
  yearAdd  = floor(time/sum(AmountOfSecondsInMonth))*1;
end if;
dayYear = 365 + leap;
//---------------------------------------------------------

//Adapt day [1-7] based on the startday of that year
//---------------------------------------------------------

tussenresultaatDag = getDayYear.dayStartYear + startDay;
//if tussenresultaatDag > 7 then
//  day = tussenresultaatDag-7;
//else
//  day = tussenresultaatDag;
//end if;

  connect(calculateHour.y, hour) annotation (Line(points={{60.9,84},{110,84}}, color={0,0,127}));

  connect(calculateMonth.y, month)    annotation (Line(points={{60.9,4},{110,4}},   color={0,0,127}));
  connect(caculatelDayNumber.y, numberDay)
    annotation (Line(points={{60.9,-36},{86,-36},{86,-60},{110,-60}},
                                                  color={0,0,127}));
  connect(calYear.y, year) annotation (Line(points={{-37.1,4},{-33,4},{-33,
          -117}},     color={0,0,127}));
  connect(calAmountDays.y, totalDaysYear) annotation (Line(points={{-37.1,26},{-32,
          26},{-32,10},{-22,10},{-22,-50},{46,-50},{46,-110}},
                                                 color={0,0,127}));

  connect(calAmountDays.y, getDayYear.dayYear) annotation (Line(points={{-37.1,26},
          {-37.1,48},{-84,48},{-84,76},{-56.6,76},{-56.6,73.8}}, color={0,0,127}));
  connect(calYear.y, getDayYear.year) annotation (Line(points={{-37.1,4},{-16,4},
          {-16,56},{-76,56},{-76,67.6},{-56.6,67.6}}, color={0,0,127}));
  connect(calculateDay.y, day) annotation (Line(points={{-33.1,92},{-12,92},{-12,
          46},{110,46},{110,44}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),           Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Line(
          points={{40,92}},
          color={0,0,0},
          smooth=Smooth.None),
        Text(
          extent={{-100,14},{100,-6}},
          lineColor={0,0,255},
          textString="%name"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
        Rectangle(extent={{-80,86},{-30,30}}, lineColor={28,108,200})}));
end ReturnDate;
