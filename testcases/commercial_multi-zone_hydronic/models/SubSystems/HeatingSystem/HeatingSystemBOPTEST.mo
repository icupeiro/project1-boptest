within INFRAX.SubSystems.HeatingSystem;
model HeatingSystemBOPTEST
  extends HeatingSystem;
  IBPSA.Utilities.IO.SignalExchange.Read read_gshp1(
    description="compressor energy use of the ground source heat pump 1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "ground source heat pump 1"
    annotation (Placement(transformation(extent={{-100,36},{-84,52}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_gshp2(
    description="compressor energy use of the ground source heat pump 2",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "ground source heat pump 2"
    annotation (Placement(transformation(extent={{-98,126},{-82,142}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump1(
    description="electrical energy use of the pump 1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "borefield pump"
    annotation (Placement(transformation(extent={{-176,-60},{-192,-44}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump2(
    description="electrical energy use of the pump 1",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "borefield pump"
    annotation (Placement(transformation(extent={{-260,-26},{-276,-10}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump3(
    description="electrical energy use of the pump 3",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "gshp pump"
    annotation (Placement(transformation(extent={{-12,82},{-28,98}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump4(
    description="electrical energy use of the pump 4",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "ahu primary cooling pump"
    annotation (Placement(transformation(extent={{-80,10},{-96,26}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump5(
    description="electrical energy use of the pump 5",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "passive cooling pump"
    annotation (Placement(transformation(extent={{-74,-112},{-90,-96}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_ct(
    description="electrical energy use of the cooling tower fan",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "cooling tower energy"
    annotation (Placement(transformation(extent={{138,-94},{122,-78}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump7(
    description="electrical energy use of the pump 7",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "tabs pump"
    annotation (Placement(transformation(extent={{56,-14},{40,2}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump8(
    description="electrical energy use of the pump 8",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "ahu heating coil primary pump"
    annotation (Placement(transformation(extent={{42,-38},{26,-22}})));
  IBPSA.Utilities.IO.SignalExchange.Read read_pump10_11(
    description="electrical energy use of the pump 10 and 11",
    KPIs=IBPSA.Utilities.IO.SignalExchange.SignalTypes.SignalsForKPIs.ElectricPower,

    y(unit="W")) "cooling tower pumps"
    annotation (Placement(transformation(extent={{214,112},{198,128}})));
equation
  connect(heaPum1.P, read_gshp1.u) annotation (Line(points={{-114,83},{-114,44},
          {-101.6,44}}, color={0,0,127}));
  connect(heaPum2.P, read_gshp2.u) annotation (Line(points={{-114,119},{-114,
          134},{-99.6,134}}, color={0,0,127}));
  connect(pump1.P, read_pump1.u) annotation (Line(points={{-159,-41},{-167.5,
          -41},{-167.5,-52},{-174.4,-52}}, color={0,0,127}));
  connect(pump3.P, read_pump3.u) annotation (Line(points={{-44.9,43.1},{-44.9,
          58},{-4,58},{-4,90},{-10.4,90}}, color={0,0,127}));
  connect(pump4.P, read_pump4.u)
    annotation (Line(points={{-63,1},{-63,18},{-78.4,18}}, color={0,0,127}));
  connect(pump5.P, read_pump5.u) annotation (Line(points={{-59.2,-52.9},{-59.2,
          -106},{-72.4,-106},{-72.4,-104}}, color={0,0,127}));
  connect(read_pump7.u, tABS_detailed.P_pump) annotation (Line(points={{57.6,-6},
          {57.6,-8},{72,-8},{72,75.5},{85.0909,75.5}}, color={0,0,127}));
  connect(pump8.P, read_pump8.u) annotation (Line(points={{123.9,41.8},{84.95,
          41.8},{84.95,-30},{43.6,-30}}, color={0,0,127}));
  connect(coolingTower_detailed.P_pumps, read_pump10_11.u) annotation (Line(
        points={{219,97.2},{238,97.2},{238,120},{215.6,120}}, color={0,0,127}));
  connect(coolingTower_detailed.P_CT, read_ct.u) annotation (Line(points={{219,
          99},{224,99},{224,-86},{139.6,-86}}, color={0,0,127}));
end HeatingSystemBOPTEST;
