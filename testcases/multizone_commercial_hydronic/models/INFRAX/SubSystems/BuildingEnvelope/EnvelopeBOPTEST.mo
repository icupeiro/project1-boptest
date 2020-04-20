within INFRAX.SubSystems.BuildingEnvelope;
model EnvelopeBOPTEST
  extends EnvelopeSim;
  IBPSA.Utilities.IO.SignalExchange.Read fanPowExt(
    description="Power of toilet extraction fan",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "extraction fan power"
    annotation (Placement(transformation(extent={{-118,28},{-138,48}})));

equation
  connect(toiletExtract.P, fanPowExt.u) annotation (Line(points={{-98.6,-22.6},
          {-98.6,6.7},{-116,6.7},{-116,38}}, color={0,0,127}));
end EnvelopeBOPTEST;
