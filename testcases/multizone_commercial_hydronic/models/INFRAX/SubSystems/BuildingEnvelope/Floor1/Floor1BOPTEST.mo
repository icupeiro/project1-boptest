within INFRAX.SubSystems.BuildingEnvelope.Floor1;
model Floor1BOPTEST
  extends Floor1Sim;
  IBPSA.Utilities.IO.SignalExchange.Read ppm1stFlrMT1(
    description="CO2 concentration of 1stFlrMT1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="1stFlrMT1") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-28,-22},{-48,-2}})));

  IBPSA.Utilities.IO.SignalExchange.Read ppm1stFlrMT2(
    description="CO2 concentration of 1stFlrMT2",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="1stFlrMT2") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{132,32},{152,52}})));

  IBPSA.Utilities.IO.SignalExchange.Read ppm1stFlrNZ(
    description="CO2 concentration of 1stFlrNZ",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="1stFlrNZ") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{116,78},{136,98}})));

  IBPSA.Utilities.IO.SignalExchange.Read ppm1stFlrSZ1(
    description="CO2 concentration of 1stFlrSZ1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="1stFlrSZ1") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-118,-62},{-138,-42}})));

  IBPSA.Utilities.IO.SignalExchange.Read ppm1stFlrSZ2(
    description="CO2 concentration of 1stFlrSZ2",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,
    y(unit="ppm"),
    zone="1stFlrSZ2") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{102,-78},{122,-58}})));

equation
  connect(meetingRoom1.ppm, ppm1stFlrMT1.u) annotation (Line(points={{21,10},{
          -1.5,10},{-1.5,-12},{-26,-12}}, color={0,0,127}));
  connect(meetingRoom2.ppm, ppm1stFlrMT2.u) annotation (Line(points={{101,10},{
          101,26},{130,26},{130,42}}, color={0,0,127}));
  connect(northZone.ppm, ppm1stFlrNZ.u) annotation (Line(points={{65.4,68},{88,
          68},{88,88},{114,88}}, color={0,0,127}));
  connect(southZone1.ppm, ppm1stFlrSZ1.u) annotation (Line(points={{-18.1,-64},
          {-68.05,-64},{-68.05,-52},{-116,-52}}, color={0,0,127}));
  connect(southZone2.ppm, ppm1stFlrSZ2.u) annotation (Line(points={{71.9,-40},{
          71.9,-54},{100,-54},{100,-68}}, color={0,0,127}));
end Floor1BOPTEST;
