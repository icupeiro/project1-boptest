within INFRAX.SubSystems.BuildingEnvelope.Floor0;
model Floor0BOPTEST
  extends Floor0Sim;
  IBPSA.Utilities.IO.SignalExchange.Read ppmGndFlrMT1(
    description="CO2 concentration of GndFlrMT1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="GndFlrMT1") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-94,6},{-114,26}})));
  IBPSA.Utilities.IO.SignalExchange.Read ppmGndFlrMT2(
    description="CO2 concentration of GndFlrMT2",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="GndFlrMT2") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{-60,-96},{-40,-76}})));
  IBPSA.Utilities.IO.SignalExchange.Read ppmGndFlrKTR(
    description="CO2 concentration of GndFlrKTR",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.CO2Concentration,

    y(unit="ppm"),
    zone="GndFlrKTR") "Zone CO2 concentration"
    annotation (Placement(transformation(extent={{74,-24},{54,-4}})));
equation
  connect(MT1.ppm, ppmGndFlrMT1.u) annotation (Line(points={{23.2,-30},{-34,-30},
          {-34,16},{-92,16}}, color={0,0,127}));
  connect(MT2.ppm, ppmGndFlrMT2.u) annotation (Line(points={{-76.8,-70},{-70,
          -70},{-70,-86},{-62,-86}}, color={0,0,127}));
  connect(kitchen.ppm, ppmGndFlrKTR.u) annotation (Line(points={{122,0},{100,0},
          {100,-14},{76,-14}}, color={0,0,127}));
end Floor0BOPTEST;
