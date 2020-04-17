within INFRAX.Air.AHU;
model Example
  recov_AHU recov_AHU1(
    eps=0.9,
    m1_flow_nominal=10000/3600*1.225,
    m2_flow_nominal=8850/3600*1.225,
    dp1_nominal=0,
    dp2_nominal=0,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState)
    annotation (Placement(transformation(extent={{-12,18},{18,-12}})));
  IDEAS.Fluid.Sources.MassFlowSource_T supply(
    redeclare package Medium = IDEAS.Media.Air,
    m_flow=10000/3600*1.225,
    nPorts=1,
    T=283.15) annotation (Placement(transformation(extent={{-72,-12},{-60,0}})));
  IDEAS.Fluid.Sources.MassFlowSource_T exhaust(
    redeclare package Medium = IDEAS.Media.Air,
    m_flow=8850/3600*1.225,
    T=295.15,
    nPorts=1) annotation (Placement(transformation(extent={{82,6},{70,18}})));
  IDEAS.Fluid.Sources.Boundary_pT zones(nPorts=1, redeclare package Medium =
        IDEAS.Media.Air)
    annotation (Placement(transformation(extent={{82,-12},{70,0}})));
  IDEAS.Fluid.Sources.Boundary_pT amb(nPorts=1, redeclare package Medium =
        IDEAS.Media.Air)
    annotation (Placement(transformation(extent={{-72,6},{-60,18}})));
  Modelica.Blocks.Sources.Ramp ramp(
    height=5,
    duration=7200,
    offset=273.15 + 18,
    startTime=3600)
    annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
  IDEAS.Fluid.Sensors.TemperatureTwoPort senTem(
    redeclare package Medium = IDEAS.Media.Air,
    m_flow_nominal=10000/3600*1.225,
    tau=0) annotation (Placement(transformation(extent={{34,-16},{54,4}})));
  IDEAS.Fluid.Sensors.TemperatureTwoPort senTem1(
    redeclare package Medium = IDEAS.Media.Air,
    m_flow_nominal=8850/3600*1.225,
    tau=0) annotation (Placement(transformation(extent={{-26,2},{-46,22}})));
equation
  connect(ramp.y, recov_AHU1.TSet)
    annotation (Line(points={{1,-50},{9,-50},{9,-12}}, color={0,0,127}));
  connect(senTem.port_b, zones.ports[1])
    annotation (Line(points={{54,-6},{70,-6}}, color={0,127,255}));
  connect(senTem1.port_b, amb.ports[1])
    annotation (Line(points={{-46,12},{-60,12}}, color={0,127,255}));
  connect(supply.ports[1], recov_AHU1.port_a1)
    annotation (Line(points={{-60,-6},{-12,-6}}, color={0,127,255}));
  connect(recov_AHU1.port_b1, senTem.port_a)
    annotation (Line(points={{18,-6},{34,-6}}, color={0,127,255}));
  connect(senTem1.port_a, recov_AHU1.port_b2)
    annotation (Line(points={{-26,12},{-12,12}}, color={0,127,255}));
  connect(recov_AHU1.port_a2, exhaust.ports[1])
    annotation (Line(points={{18,12},{70,12}}, color={0,127,255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=14400,
      __Dymola_NumberOfIntervals=1500,
      Tolerance=1e-06,
      __Dymola_fixedstepsize=30,
      __Dymola_Algorithm="Euler"),
    __Dymola_experimentSetupOutput,
    __Dymola_experimentFlags(
      Advanced(GenerateVariableDependencies=false, OutputModelicaCode=false),
      Evaluate=false,
      OutputCPUtime=false,
      OutputFlatModelica=false));
end Example;
