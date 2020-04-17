within INFRAX.SubSystems.Occupancy.Examples;
model OccupancywithCalendar
  extends Modelica.Icons.Example;
  parameter Integer nZones = 27;
  parameter String filenameTables = "C:/Users/u0112721/Documents/Dymola/hybridGEOTABS/INFRAX/SubSystems/Occupancy/Data/Tables/TablesOccupancyInfrax.txt" "File where matrix is stored";
  replaceable OccupantwithCalendar occ(
    nLoads=0,
    filenameTables=filenameTables,
    nZones=nZones,
    profileType={9,0,8,0,0,7,7,6,6,0,5,5,5,4,4,0,0,0,0,1,2,3,0,0,0,0,0})
    annotation (Placement(transformation(extent={{-20,-8},{20,12}})));

protected
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature prescribedTemperature[
    occ.nZones](each T=297.15) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-60,-62})));
  inner IDEAS.BoundaryConditions.SimInfoManager sim
    "Simulation information manager for climate data"
    annotation (Placement(transformation(extent={{78,-100},{98,-80}})));
public
  Modelica.Blocks.Interfaces.RealOutput TSet[nZones]    annotation (Placement(transformation(extent={{94,64},
            {114,84}})));
public
  Modelica.Blocks.Interfaces.RealOutput mDHW60    annotation (Placement(transformation(extent={{94,32},
            {114,52}})));
equation
  connect(prescribedTemperature.port, occ.heatPortCon) annotation (Line(points=
          {{-60,-52},{-60,-52},{-60,4},{-20,4}}, color={191,0,0}));
  connect(occ.heatPortRad, prescribedTemperature.port)
    annotation (Line(points={{-20,0},{-60,0},{-60,-52}}, color={191,0,0}));
  connect(occ.TSet, TSet) annotation (Line(points={{0,12},{2,12},{2,46},{-30,46},
          {-30,74},{104,74}}, color={0,0,127}));
  connect(occ.mDHW60C, mDHW60) annotation (Line(points={{6,12},{10,12},{10,42},{
          104,42}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}})),
    experiment(StopTime=31536000),
    __Dymola_experimentSetupOutput);
end OccupancywithCalendar;
