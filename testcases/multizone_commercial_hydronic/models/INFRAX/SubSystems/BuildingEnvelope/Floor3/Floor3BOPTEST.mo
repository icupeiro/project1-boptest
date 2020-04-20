within INFRAX.SubSystems.BuildingEnvelope.Floor3;
model Floor3BOPTEST
  extends Floor3Sim;
  IBPSA.Utilities.IO.SignalExchange.Read ppm3rdFlrSZ(
    description="CO2 concentration of 3rdFlrSZ",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="3rdFlrSZ") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-90,12},{-110,32}})));

  IBPSA.Utilities.IO.SignalExchange.Read ppm3rdFlrMTR(
    description="CO2 concentration of 3rdFlrMTR",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="3rdFlrMTR") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{88,8},{108,28}})));

equation
  connect(southZone.ppm, ppm3rdFlrSZ.u) annotation (Line(points={{22,-40},{-30,
          -40},{-30,8},{-88,8},{-88,22}}, color={0,0,127}));
  connect(meetingRoom.ppm, ppm3rdFlrMTR.u) annotation (Line(points={{41,50},{64,
          50},{64,18},{86,18}}, color={0,0,127}));
end Floor3BOPTEST;
