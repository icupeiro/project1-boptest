within INFRAX.Data;
model OccupantWriter
  IDEAS.Utilities.IO.Files.CombiTimeTableWriter combiTimeTableWriter(
    nin=27,
    samplePeriod=600,
    fileName="occupantsCyclic.csv")
    annotation (Placement(transformation(extent={{-58,8},{-78,28}})));
  replaceable SubSystems.Occupancy.OccupantwithCalendar
                                   occ(
    nLoads=0,
    profileType={9,0,8,0,0,7,7,6,6,0,5,5,5,4,4,0,0,0,0,1,2,3,0,0,0,0,0},
    nZones=27,
    startYear=1970,
    occupancyScheme(
      Kitchen(startTime=3600*24*4),
      LargeMeetingRoom_MT1(startTime=3600*24*4),
      LargeMeetingRoom_MT2(startTime=3600*24*4),
      Flr1_SmallMeetingRooms(startTime=3600*24*4),
      Flr1_LandscapeOffice(startTime=3600*24*4),
      Flr2_SmallMeetingRooms1(startTime=3600*24*4),
      Flr2_LandscapeOffice1(startTime=3600*24*4),
      Flr3_MeetingRoomAtomium(startTime=3600*24*4),
      Flr3_LandscapeOffice(startTime=3600*24*4)))
    annotation (Placement(transformation(extent={{12,32},{52,52}})));
protected
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature[27] prescribedTemperature(each T=
        297.15)                                                                                   annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-10,-10})));
equation
  connect(prescribedTemperature.port,occ. heatPortRad) annotation (Line(points={{-10,0},
          {-10,40},{12,40}},                     color={191,0,0}));
  connect(prescribedTemperature.port,occ. heatPortCon) annotation (Line(points={{-10,0},
          {-10,44},{12,44}},                     color={191,0,0}));
  connect(combiTimeTableWriter.u[1:27], occ.nOcc) annotation (Line(points={{-58,
          16.0741},{-16,16.0741},{-16,53},{26.4,53}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false), graphics={Text(
          extent={{-80,100},{80,80}},
          lineColor={28,108,200},
          textString=
              "This generates a table, intended to be used cyclically and using unix timestamps.")}),
    experiment(StartTime=1514764800, StopTime=1515369600));
end OccupantWriter;
