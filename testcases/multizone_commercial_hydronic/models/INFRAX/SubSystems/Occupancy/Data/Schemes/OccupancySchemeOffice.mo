within INFRAX.SubSystems.Occupancy.Data.Schemes;
model OccupancySchemeOffice

//Based on InfraxBuildingDilbeek

//INPUTS AND PARAMETERS
  parameter Integer nZones "Total Number of Floor Levels";
  parameter Integer profileType[nZones]  "Profile type of the zone 
    0= no occupants,
    1 = Kitchen, 
    2 = Flr 0 MT1
    3 = Flr 0 MT2
    4 = Fl 1 Small Meeting Rooms
    5 = Fl 1 Landscape office (SouthZone and Northzone)
    6 = Fl 2 Small Meeting Rooms
    7 = Fl 2 Landscape Office
    8 = Fl 2 Meeting Room Atomium
    9 = Fl 2 Landscape Office
";

 //parameter String filenameTables = "C:/Users/Administrator/Documents/GitHub/HybridGeotabs/TablesOccupancyInfrax.txt" "File where matrix is stored";
  parameter String filenameTables = "C:/Users/u0112721/Documents/Dymola/hybridGEOTABS/INFRAX/SubSystems/Occupancy/Data/Tables/TablesOccupancyInfrax.txt";
 parameter Integer startYear = 2018;
 parameter Integer startDay = 1;

//OUTPUTS
 Modelica.Blocks.Interfaces.RealOutput nOcc[nZones] "Total Number of Occupants for each zone"
    annotation (Placement(transformation(extent={{98,60},{118,80}})));

//INTERNAL VARIABLES
  Modelica.Blocks.Logical.LessThreshold Weekday(each threshold=5.5)
    annotation (Placement(transformation(extent={{-56,82},{-48,90}})));
  Modelica.Blocks.Logical.And buildingOpen
    annotation (Placement(transformation(extent={{-6,64},{14,84}})));
  Modelica.Blocks.Sources.CombiTimeTable
                                    Holidays(
    table=[0,0; 1,0; 1.00001,1; 121,1; 121.00001,0; 122,0; 122.00001,1; 202,1; 202.00001,
        0; 203,0; 203.00001,1; 227,1; 227.00001,0; 228,0; 228.00001,1; 305,1; 305.00001,
        0; 306,0; 306.00001,1; 315,1; 315.00001,0; 316,0; 316.00001,1; 359,1; 359.00001,
        0; 360,0; 360.00001,1; 366,1],
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    startTime=startTime,
    timeScale=86400)
    annotation (Placement(transformation(extent={{-60,48},{-40,68}})));
  Modelica.Blocks.Math.RealToBoolean realToBoolean
    annotation (Placement(transformation(extent={{-30,54},{-20,64}})));
  Modelica.Blocks.Sources.CombiTimeTable Kitchen(
    tableOnFile=true,
    tableName="Kitchen",
    fileName=filenameTables,
    timeScale = 3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-60,8},{-48,20}})));
  Modelica.Blocks.Sources.CombiTimeTable LargeMeetingRoom_MT1(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="0_MT1",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-40,8},{-28,20}})));
  Modelica.Blocks.Sources.CombiTimeTable LargeMeetingRoom_MT2(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="0_MT2",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-20,8},{-8,20}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr1_SmallMeetingRooms(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="1_SmallMR",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-60,-24},{-48,-12}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr1_LandscapeOffice(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="1_LandscapeOffice",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-40,-24},{-28,-12}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr2_SmallMeetingRooms1(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="2_SmallMR",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-60,-52},{-48,-40}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr2_LandscapeOffice1(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="2_LandscapeOffice",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-40,-52},{-28,-40}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr3_MeetingRoomAtomium(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="3_MR_Atomium",
    startTime=startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-60,-84},{-48,-72}})));
  Modelica.Blocks.Sources.CombiTimeTable Flr3_LandscapeOffice(
    tableOnFile=true,
    fileName=filenameTables,
    timeScale=3600,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic,
    tableName="3_LandscapeOffice",
    startTime(displayUnit="s") = startHour,
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments)
    annotation (Placement(transformation(extent={{-40,-84},{-28,-72}})));

  IDEAS.Utilities.Time.CalendarTime calTim(zerTim=IDEAS.Utilities.Time.Types.ZeroTime.NY2010)
    annotation (Placement(transformation(extent={{-96,72},{-76,92}})));
  Modelica.Blocks.Math.IntegerToReal integerToReal
    annotation (Placement(transformation(extent={{-68,82},{-60,90}})));

  parameter Modelica.SIunits.Time startHour(fixed=false);
  parameter Modelica.SIunits.Time startTime(fixed=false);

initial equation
  startHour = 3600*24*(calTim.weekDay-2);
  startTime = time;
equation

for i in 1:nZones loop
    if profileType[i]==0 then
      nOcc[i] = 0;
    elseif profileType[i]==1 then
      nOcc[i] =if buildingOpen.y then Kitchen.y[1] else 0;
    elseif profileType[i]==2 then
      nOcc[i] =if buildingOpen.y then LargeMeetingRoom_MT1.y[1] else 0;
    elseif profileType[i]==3 then
      nOcc[i] =if buildingOpen.y then LargeMeetingRoom_MT2.y[1] else 0;
    elseif profileType[i]==4 then
      nOcc[i] =if buildingOpen.y then Flr1_SmallMeetingRooms.y[1] else 0;
    elseif profileType[i]==5 then
      nOcc[i] =if buildingOpen.y then Flr1_LandscapeOffice.y[1] else 0;
    elseif profileType[i]==6 then
      nOcc[i] =if buildingOpen.y then Flr2_SmallMeetingRooms1.y[1] else 0;
    elseif profileType[i]==7 then
      nOcc[i] =if buildingOpen.y then Flr2_LandscapeOffice1.y[1] else 0;
    elseif profileType[i]==8 then
      nOcc[i] =if buildingOpen.y then Flr3_MeetingRoomAtomium.y[1] else 0;
    elseif profileType[i]==9 then
      nOcc[i] =if buildingOpen.y then Flr3_LandscapeOffice.y[1] else 0;
    else
      nOcc[i] = 0;
    end if;
end for;

  connect(Weekday.y, buildingOpen.u1) annotation (Line(points={{-47.6,86},{-28,86},
          {-28,74},{-8,74}}, color={255,0,255}));
  connect(realToBoolean.y, buildingOpen.u2)
    annotation (Line(points={{-19.5,59},{-8,59},{-8,66}}, color={255,0,255}));
  connect(integerToReal.y, Weekday.u)
    annotation (Line(points={{-59.6,86},{-56.8,86}}, color={0,0,127}));
  connect(calTim.weekDay, integerToReal.u) annotation (Line(points={{-75,77},{-68.8,
          77},{-68.8,86}}, color={255,127,0}));
  connect(Holidays.y[1], realToBoolean.u) annotation (Line(points={{-39,58},{-34,
          58},{-34,59},{-31,59}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
          Rectangle(extent={{-92,92},{90,-94}}, lineColor={28,108,200}), Text(
          extent={{-70,80},{80,46}},
          lineColor={28,108,200},
          textString="Name")}),                                  Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={
        Text(
          extent={{-64,94},{-30,94}},
          lineColor={28,108,200},
          textString="Weekday/Weekend"),
        Rectangle(extent={{-98,98},{94,36}},    lineColor={28,108,200}),
        Text(
          extent={{-62,76},{-36,76}},
          lineColor={28,108,200},
          textString="Fixed Hollidays"),
        Rectangle(extent={{-66,32},{94,-96}},   lineColor={28,108,200}),
        Text(
          extent={{-72,-4},{-26,-4}},
          lineColor={28,108,200},
          textString="FIRST FLOOR LEVEL"),
        Text(
          extent={{-74,26},{-28,26}},
          lineColor={28,108,200},
          textString="GROUND FLOOR"),
        Text(
          extent={{56,94},{92,94}},
          lineColor={28,108,200},
          textString="AMOUNT OF OCCUPANTS"),
        Text(
          extent={{-44,82},{-18,82}},
          lineColor={28,108,200},
          textString="1 Week December"),
        Text(
          extent={{58,26},{94,26}},
          lineColor={28,108,200},
          textString="OCCUPANCY PROFILES
(check excel)"),
        Text(
          extent={{-70,-34},{-24,-34}},
          lineColor={28,108,200},
          textString="SECOND FLOOR LEVEL"),
        Text(
          extent={{-72,-66},{-26,-66}},
          lineColor={28,108,200},
          textString="THIRD FLOOR LEVEL")}),
    Documentation(info="<html>
<p><code>Based on CO2 measurements in the Infrax Building Dilbeek</code></p>
</html>"));
end OccupancySchemeOffice;
