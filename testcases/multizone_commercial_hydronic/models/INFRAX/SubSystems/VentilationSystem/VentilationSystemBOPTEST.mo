within INFRAX.SubSystems.VentilationSystem;
model VentilationSystemBOPTEST
  extends VentilationSystemSim;
  IBPSA.Utilities.IO.SignalExchange.Read pumPow9(
    description="Power of hydraulic pump 9",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "hydraulic pump 9 power"
    annotation (Placement(transformation(extent={{-180,-4},{-200,16}})));

  IBPSA.Utilities.IO.SignalExchange.Read pumPow13(
    description="Power of hydraulic pump 13",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "hydraulic pump 13 power"
    annotation (Placement(transformation(extent={{-70,-92},{-50,-72}})));

  IBPSA.Utilities.IO.SignalExchange.Read pumPow6(
    description="Power of hydraulic pump 6",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "hydraulic pump 6 power"
    annotation (Placement(transformation(extent={{116,-78},{96,-58}})));

  IBPSA.Utilities.IO.SignalExchange.Read fanPowSup(
    description="Power of AHU supply fan",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "supply fan power"
    annotation (Placement(transformation(extent={{-8,-34},{12,-14}})));

  IBPSA.Utilities.IO.SignalExchange.Read fanPowExh(
    description="Power of AHU exhaust fan",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,
    y(unit="W")) "exhaust fan power"
    annotation (Placement(transformation(extent={{-78,28},{-98,48}})));

equation
    connect(pump9.P, pumPow9.u) annotation (Line(points={{-167.65,-31.75},{-167.65,
          6},{-178,6}}, color={0,0,127}));
  connect(pump13.P, pumPow13.u) annotation (Line(points={{-87.2,-53.3},{-87.2,-82},
          {-72,-82}}, color={0,0,127}));
  connect(pump6.P, pumPow6.u) annotation (Line(points={{152.8,-63.2},{137.4,-63.2},
          {137.4,-68},{118,-68}}, color={0,0,127}));
  connect(supplyFan.P,fanPowSup. u) annotation (Line(points={{-15,-37},{-15,-30.5},
          {-10,-30.5},{-10,-24}}, color={0,0,127}));
  connect(fanPowExh.u, exhaustFan.P) annotation (Line(points={{-76,38},{-70,38},
          {-70,27},{-65,27}}, color={0,0,127}));

end VentilationSystemBOPTEST;
