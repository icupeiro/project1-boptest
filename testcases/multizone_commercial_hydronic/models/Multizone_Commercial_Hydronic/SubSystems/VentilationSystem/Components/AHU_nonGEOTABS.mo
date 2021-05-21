within Multizone_Commercial_Hydronic.SubSystems.VentilationSystem.Components;
model AHU_nonGEOTABS
  extends
    Multizone_Commercial_Hydronic.SubSystems.VentilationSystem.Components.Dependencies.PartialAHU;
  Buildings.Fluid.FixedResistances.Junction                   spl(
    dp_nominal={0,0,0},
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    tau=tau,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    portFlowDirection_1=Modelica.Fluid.Types.PortFlowDirection.Entering,
    portFlowDirection_2=Modelica.Fluid.Types.PortFlowDirection.Leaving,
    m_flow_nominal={mFlowAirSup_nominal,mFlowAirSup_nominal,mFlowAirSup_nominal},
    redeclare package Medium = MediumAir,
    portFlowDirection_3=Modelica.Fluid.Types.PortFlowDirection.Leaving)
    annotation (Placement(transformation(extent={{74,-54},{62,-66}})));
  IDEAS.Fluid.Actuators.Valves.Simplified.ThreeWayValveMotor  threeWayValveMotor(
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    m_flow_nominal=mFlowAirSup_nominal,
    redeclare package Medium = MediumAir,
    tau=0)                              annotation (Placement(transformation(
        extent={{10,10},{-10,-10}},
        rotation=0,
        origin={28,-60})));
  IDEAS.Fluid.Sensors.TemperatureTwoPort senTemSup(
    allowFlowReversal=false,
    m_flow_nominal=10,
    tau=0,
    redeclare package Medium = MediumAir) annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-84,-60})));
  IDEAS.Fluid.Sensors.TemperatureTwoPort senTemHea(
    allowFlowReversal=false,
    m_flow_nominal=10,
    tau=0,
    redeclare package Medium = MediumAir) annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={-38,-60})));
  IDEAS.Fluid.Sensors.TemperatureTwoPort senTemRecMix(
    allowFlowReversal=false,
    m_flow_nominal=10,
    tau=0,
    redeclare package Medium = MediumAir)
    "Temperature sensor after heat recovery unit, mixed" annotation (Placement(
        transformation(
        extent={{-6,-6},{6,6}},
        rotation=180,
        origin={6,-60})));
  Modelica.Blocks.Interfaces.RealOutput TOutHea annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-10,-110})));
  Modelica.Blocks.Interfaces.RealOutput TOutCoo annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-96,-110})));
  Controllers.EnergyKPIBus energyKPIBus annotation (Placement(transformation(
          extent={{-80,-20},{-120,20}}),
                                      iconTransformation(extent={{-110,8},{-90,
            28}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=if hexUA.Q2_flow > 0
         then hexUA.Q2_flow else 0)
    annotation (Placement(transformation(extent={{-18,26},{-32,42}})));
  Modelica.Blocks.Math.Gain gain(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-44,30},{-52,38}})));
  Modelica.Blocks.Continuous.Integrator integrator(k=1/3600)
    annotation (Placement(transformation(extent={{-58,30},{-66,38}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=if hexUA.Q2_flow < 0
         then hexUA.Q2_flow else 0)
    annotation (Placement(transformation(extent={{-18,10},{-32,26}})));
  Modelica.Blocks.Math.Gain gain1(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-44,14},{-52,22}})));
  Modelica.Blocks.Continuous.Integrator integrator1(k=1/3600)
    annotation (Placement(transformation(extent={{-58,14},{-66,22}})));
  Modelica.Blocks.Math.Gain gain2(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-44,-26},{-52,-18}})));
  Modelica.Blocks.Math.Gain gain3(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-44,-10},{-52,-2}})));
  Modelica.Blocks.Continuous.Integrator integrator2(k=1/3600)
    annotation (Placement(transformation(extent={{-58,-10},{-66,-2}})));
  Modelica.Blocks.Continuous.Integrator integrator3(k=1/3600)
    annotation (Placement(transformation(extent={{-58,-26},{-66,-18}})));
  Modelica.Blocks.Sources.RealExpression realExpression3(y=cooCoi.Q2_flow)
    annotation (Placement(transformation(extent={{-18,-14},{-32,2}})));
  Modelica.Blocks.Sources.RealExpression realExpression4(y=heaCoi.Q2_flow)
    annotation (Placement(transformation(extent={{-20,-30},{-34,-14}})));
  Modelica.Blocks.Interfaces.RealOutput TOutRec annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={16,-110})));
  IBPSA.Fluid.HeatExchangers.DryCoilEffectivenessNTU
                                    hexUA(
    redeclare package Medium2 = MediumAir,
    allowFlowReversal1=false,
    allowFlowReversal2=false,
    from_dp2=false,
    redeclare package Medium1 = MediumAir,
    m1_flow_nominal=mFlowAirSup_nominal,
    dp2_nominal=0,
    m2_flow_nominal=mFlowAirRet_nominal,
    configuration=IBPSA.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
    Q_flow_nominal=42000,
    T_a1_nominal=294.15,
    T_a2_nominal=274.85,
    UA=abs(42000/Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        21,
        5.4,
        1.7,
        13.7)),
    dp1_nominal=277,
    from_dp1=false) "Heat recovery wheel"
    annotation (Placement(transformation(extent={{38,2},{58,22}})));
  IBPSA.Fluid.HeatExchangers.DryCoilEffectivenessNTU
                                      heaCoi(
    m2_flow_nominal=mFlowAirSup_nominal,
    redeclare package Medium1 = MediumHeaCoi,
    redeclare package Medium2 = MediumAir,
    m1_flow_nominal=mFlowWatHeaCoi_nominal,
    configuration=IBPSA.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
    Q_flow_nominal=QHeaCoi_nominal,
    T_a1_nominal=THeaCoiWatSup_nominal,
    T_a2_nominal=THeaCoiAirSup_nominal,
    UA=QHeaCoi_nominal/Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        THeaCoiWatSup_nominal,
        THeaCoiWatRet_nominal,
        THeaCoiAirSup_nominal,
        THeaCoiAirRet_nominal),
    allowFlowReversal1=false,
    allowFlowReversal2=false,
    dp2_nominal=620,
    dp1_nominal=0)
    annotation (Placement(transformation(extent={{-26,-56},{-6,-76}})));
  IBPSA.Fluid.HeatExchangers.DryCoilEffectivenessNTU
                                      cooCoi(
    configuration=IBPSA.Fluid.Types.HeatExchangerConfiguration.CounterFlow,
    use_Q_flow_nominal=false,
    eps_nominal=0.85,
    UA=QCooCoi_nominal/Buildings.Fluid.HeatExchangers.BaseClasses.lmtd(
        TCooCoiWatSup_nominal,
        TCooCoiWatRet_nominal,
        TCooCoiAirSup_nominal,
        TCooCoiAirRet_nominal),
    m1_flow_nominal=mFlowWatCooCoi_nominal,
    m2_flow_nominal=mFlowAirSup_nominal,
    redeclare package Medium1 = MediumCooCoi,
    redeclare package Medium2 = MediumAir,
    allowFlowReversal1=false,
    allowFlowReversal2=false,
    from_dp2=false,
    dp2_nominal=0,
    dp1_nominal=0) "Cooling coil"
    annotation (Placement(transformation(extent={{-72,-56},{-52,-76}})));
  Modelica.Blocks.Sources.RealExpression heaCoiQ(y=heaCoi.Q2_flow)
    annotation (Placement(transformation(extent={{48,52},{34,68}})));
  Modelica.Blocks.Sources.RealExpression cooCoiQ(y=cooCoi.Q2_flow)
    annotation (Placement(transformation(extent={{48,40},{34,56}})));
equation
  heatPort.T=273.15;
  connect(threeWayValveMotor.port_1, spl.port_2)
    annotation (Line(points={{38,-60},{62,-60}},  color={0,127,255}));
  connect(senTemSup.port_b, port_b2)
    annotation (Line(points={{-90,-60},{-100,-60}}, color={0,127,255}));
  connect(senTemHea.T, TOutHea) annotation (Line(points={{-38,-66.6},{-38,-82},
          {-10,-82},{-10,-110}},
                              color={0,0,127}));
  connect(senTemSup.T, TOutCoo) annotation (Line(points={{-84,-66.6},{-84,-74},
          {-96,-74},{-96,-110}}, color={0,0,127}));
  connect(threeWayValveMotor.ctrl, signalBus.TW_bypass) annotation (Line(points={{28,
          -70.8},{28,-74},{12,-74},{12,82},{-80,82},{-80,100}},         color={
          0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(realExpression2.y, gain.u)
    annotation (Line(points={{-32.7,34},{-43.2,34}},
                                                   color={0,0,127}));
  connect(gain.y, integrator.u)
    annotation (Line(points={{-52.4,34},{-57.2,34}},
                                                   color={0,0,127}));
  connect(integrator.y, energyKPIBus.Q_TW_heating) annotation (Line(points={{-66.4,
          34},{-100.1,34},{-100.1,0.1}},     color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain.y, energyKPIBus.dotQ_TW_heating) annotation (Line(points={{-52.4,
          34},{-54,34},{-54,2},{-78,2},{-78,0.1},{-100.1,0.1}},
                                               color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression1.y, gain1.u)
    annotation (Line(points={{-32.7,18},{-43.2,18}},
                                                   color={0,0,127}));
  connect(gain1.y, integrator1.u)
    annotation (Line(points={{-52.4,18},{-57.2,18}},
                                                   color={0,0,127}));
  connect(integrator1.y, energyKPIBus.Q_TW_cooling) annotation (Line(points={{-66.4,
          18},{-96,18},{-96,0.1},{-100.1,0.1}},     color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain1.y, energyKPIBus.dotQ_TW_cooling) annotation (Line(points={{-52.4,
          18},{-54,18},{-54,0.1},{-100.1,0.1}},color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain3.y, integrator2.u) annotation (Line(points={{-52.4,-6},{-57.2,-6}},
                             color={0,0,127}));
  connect(gain2.y, integrator3.u)
    annotation (Line(points={{-52.4,-22},{-57.2,-22}},
                                                     color={0,0,127}));
  connect(realExpression3.y, gain3.u)
    annotation (Line(points={{-32.7,-6},{-43.2,-6}},
                                                 color={0,0,127}));
  connect(realExpression4.y, gain2.u)
    annotation (Line(points={{-34.7,-22},{-43.2,-22}},
                                                     color={0,0,127}));
  connect(gain3.y, energyKPIBus.dotQ_AHUcooCoi) annotation (Line(points={{-52.4,
          -6},{-54,-6},{-54,2},{-100.1,2},{-100.1,0.1}},
                                                    color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator2.y, energyKPIBus.Q_AHUcooCoi) annotation (Line(points={{-66.4,
          -6},{-100.1,-6},{-100.1,0.1}},   color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator3.y, energyKPIBus.Q_AHUheaCoi) annotation (Line(points={{-66.4,
          -22},{-100.1,-22},{-100.1,0.1}},     color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain2.y, energyKPIBus.dotQ_AHUheaCoi) annotation (Line(points={{-52.4,
          -22},{-54,-22},{-54,-14},{-100.1,-14},{-100.1,0.1}},
                                                          color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(senTemRecMix.port_a, threeWayValveMotor.port_2)
    annotation (Line(points={{12,-60},{18,-60}}, color={0,127,255}));
  connect(spl.port_1, port_a2)
    annotation (Line(points={{74,-60},{100,-60}}, color={0,127,255}));
  connect(senTemRecMix.T, TOutRec) annotation (Line(points={{6,-66.6},{6,-84},{
          16,-84},{16,-110}}, color={0,0,127}));
  connect(senTemRecMix.T, signalBus.TRecOut) annotation (Line(points={{6,-66.6},
          {6,70},{-80,70},{-80,100}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,6},{-3,6}},
      horizontalAlignment=TextAlignment.Right));
  connect(hexUA.port_a2, spl.port_3) annotation (Line(points={{58,6},{64,6},{64,
          -54},{68,-54}}, color={0,127,255}));
  connect(hexUA.port_b2, threeWayValveMotor.port_3) annotation (Line(points={{
          38,6},{34,6},{34,-50},{28,-50}}, color={0,127,255}));
  connect(hexUA.port_b1, port_b1) annotation (Line(points={{58,18},{78,18},{78,
          60},{100,60}}, color={0,127,255}));
  connect(hexUA.port_a1, port_a1) annotation (Line(points={{38,18},{-10,18},{
          -10,62},{-100,62},{-100,60}}, color={0,127,255}));
  connect(heaCoi.port_b2, senTemHea.port_a)
    annotation (Line(points={{-26,-60},{-32,-60}}, color={0,127,255}));
  connect(heaCoi.port_a2, senTemRecMix.port_b) annotation (Line(points={{-6,-60},
          {-2,-60},{-2,-60},{0,-60}}, color={0,127,255}));
  connect(heaCoi.port_b1, portHeaCoi_b1)
    annotation (Line(points={{-6,-72},{80,-72},{80,-100}}, color={0,127,255}));
  connect(portHeaCoi_a1, heaCoi.port_a1) annotation (Line(points={{40,-100},{40,
          -84},{-26,-84},{-26,-72}}, color={0,127,255}));
  connect(cooCoi.port_b2, senTemSup.port_a)
    annotation (Line(points={{-72,-60},{-78,-60}}, color={0,127,255}));
  connect(cooCoi.port_a2, senTemHea.port_b)
    annotation (Line(points={{-52,-60},{-44,-60}}, color={0,127,255}));
  connect(cooCoi.port_b1, portCooCoi_b1) annotation (Line(points={{-52,-72},{
          -40,-72},{-40,-100}},            color={0,127,255}));
  connect(cooCoi.port_a1, portCooCoi_a1) annotation (Line(points={{-72,-72},{
          -80,-72},{-80,-100}}, color={0,127,255}));
  connect(heaCoiQ.y, signalBus.QheaCoi) annotation (Line(points={{33.3,60},{20,
          60},{20,100},{-80,100}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  connect(cooCoiQ.y, signalBus.QcooCoi) annotation (Line(points={{33.3,48},{20,
          48},{20,100},{-80,100}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),           Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          heaSys.e005.port_a2.extent),
        Polygon(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Rectangle(
          heaSys.e005.port_a2.extent),
        Rectangle(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent)}),
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end AHU_nonGEOTABS;
