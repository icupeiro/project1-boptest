within INFRAX.SubSystems.BuildingEnvelope.Floor2;
model Floor2BOPTEST
  extends Floor2Sim;
  IBPSA.Utilities.IO.SignalExchange.Read ppm2ndFlrSZ(
    description="CO2 concentration of 2ndFlrSZ",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="2ndFlrSZ") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{30,-86},{50,-66}})));
  IBPSA.Utilities.IO.SignalExchange.Read ppm2ndFlrNZ(
    description="CO2 concentration of 2ndFlrNZ",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="2ndFlrNZ") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{104,54},{124,74}})));
  IBPSA.Utilities.IO.SignalExchange.Read ppm2ndFlrMT1(
    description="CO2 concentration of 2ndFlrMT1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="2ndFlrMT1") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-88,-2},{-108,18}})));
  IBPSA.Utilities.IO.SignalExchange.Read ppm2ndFlrMT2(
    description="CO2 concentration of 2ndFlrMT2",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="2ndFlrMT2") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{34,4},{14,24}})));
equation
  connect(southZone.ppm, ppm2ndFlrSZ.u) annotation (Line(points={{18,-52},{24,
          -52},{24,-76},{28,-76}}, color={0,0,127}));
  connect(northZone.ppm, ppm2ndFlrNZ.u) annotation (Line(points={{62,60},{84,60},
          {84,64},{102,64}}, color={0,0,127}));
  connect(meetingRoom1.ppm, ppm2ndFlrMT1.u)
    annotation (Line(points={{-39,0},{-86,0},{-86,8}}, color={0,0,127}));
  connect(meetingRoom2.ppm, ppm2ndFlrMT2.u)
    annotation (Line(points={{61,0},{48,0},{48,14},{36,14}}, color={0,0,127}));
end Floor2BOPTEST;
