within Multizone_Commercial_Hydronic.SubSystems.Occupancy;
model OccupantwithCalendar

  extends BaseClasses.Occupant(nZones=1);

  parameter Integer id=1 "id-number on extern data references";
  parameter Real RatioConv = 0.67 "Part of Heat Load realted to occupancy describe to convective heat gain";
  parameter Integer profileType[nZones]= fill(0, nZones);

 //parameter String filenameTables = "C:/Users/Administrator/Documents/GitHub/HybridGeotabs/TablesOccupancyInfrax.txt" "File where matrix is stored";
 parameter String filenameTables = Modelica.Utilities.Files.loadResource("modelica://INFRAX/SubSystems/Occupancy/Data/Tables/TablesOccupancyInfrax.txt");
 parameter Integer startYear = 2018;
 parameter Integer startDay = 1;

//INTERNAL VARIABLES
// Heat Gain People
  Data.HeatGenerationPeople heatGenerationPeople annotation (Placement(transformation(extent={{-166,60},
            {-146,80}})));

//Occupancy Profiles

//Q_flow
  Real QHeatOccTotal[nZones];

   Occupancy.Data.Schemes.OccupancySchemeOffice occupancyScheme(
    profileType=profileType,
    nZones=nZones,
    filenameTables=filenameTables,
    startYear=startYear,
    startDay=startDay)
    annotation (Placement(transformation(extent={{-140,20},{-72,80}})));
  Modelica.Blocks.Interfaces.RealOutput[nZones] nOcc annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-56,110})));
equation

for i in 1:nZones loop
  QHeatOccTotal[i]=occupancyScheme.nOcc[i]*heatGenerationPeople.OfficeActivitiesTyping;
  heatPortCon[i].Q_flow = RatioConv*QHeatOccTotal[i];
  heatPortRad[i].Q_flow = (1-RatioConv)*QHeatOccTotal[i];
 end for;

  connect(occupancyScheme.nOcc, nOcc) annotation (Line(points={{-69.28,71},{-56,
          71},{-56,110}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-200,
            -100},{200,100}}),
                         graphics),
                                 Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-200,-100},{200,100}})));
end OccupantwithCalendar;
