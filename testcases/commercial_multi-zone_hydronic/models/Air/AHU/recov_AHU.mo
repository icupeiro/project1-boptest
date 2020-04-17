within INFRAX.Air.AHU;
model recov_AHU
  Modelica.Fluid.Interfaces.FluidPort_a port_a1(
    redeclare final package Medium = Medium1)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b1(
    redeclare final package Medium = Medium1)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{110,50},{90,70}})));
  Modelica.Fluid.Interfaces.FluidPort_a port_a2(
    redeclare final package Medium = Medium2)
    "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{90,-70},{110,-50}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b2(
    redeclare final package Medium = Medium2)
    "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
    annotation (Placement(transformation(extent={{-90,-70},{-110,-50}})));
  IDEAS.Fluid.Actuators.Valves.Simplified.Thermostatic3WayValve thermostatic3WayValve(
    redeclare package Medium = Medium1,
    energyDynamics=energyDynamics,
    massDynamics=massDynamics,
    tau=tau,
    m_flow_nominal=m1_flow_nominal,
    l=0,
    allowFlowReversal=false,
    dynamicValve=true,
    y_min=0,
    y_max=1)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}},
        rotation=0,
        origin={40,20})));
  IDEAS.Fluid.HeatExchangers.ConstantEffectiveness hex(
    m1_flow_nominal=m1_flow_nominal,
    m2_flow_nominal=m2_flow_nominal,
    allowFlowReversal1=false,
    allowFlowReversal2=false,
    eps=eps,
    dp1_nominal=dp1_nominal,
    dp2_nominal=dp2_nominal,
    redeclare package Medium1 = Medium1,
    redeclare package Medium2 = Medium2)
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  IDEAS.Fluid.FixedResistances.Junction spl(
    dp_nominal={0,0,0},
    massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    tau=tau,
    energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
    redeclare package Medium = Medium1,
    m_flow_nominal={m1_flow_nominal,m1_flow_nominal,m1_flow_nominal})
    annotation (Placement(transformation(extent={{-36,14},{-24,26}})));
  Modelica.Blocks.Interfaces.RealInput TSet
    "Mixed outlet temperature setpoint"
    annotation (Placement(transformation(
        extent={{20,-20},{-20,20}},
        rotation=90,
        origin={40,100})));
  replaceable package Medium1 = IDEAS.Media.Air;
  replaceable package Medium2 = IDEAS.Media.Air;
  parameter Modelica.SIunits.Efficiency eps=eps "Heat exchanger effectiveness";
  parameter Modelica.SIunits.MassFlowRate m1_flow_nominal
    "Nominal mass flow rate";
  parameter Modelica.SIunits.MassFlowRate m2_flow_nominal
    "Nominal mass flow rate";
  parameter Modelica.SIunits.PressureDifference dp1_nominal
    "Pressure difference";
  parameter Modelica.SIunits.PressureDifference dp2_nominal
    "Pressure difference";
  parameter Modelica.Fluid.Types.Dynamics energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial
    "Type of energy balance: dynamic (3 initialization options) or steady state"
     annotation (Dialog(tab="Dynamics"));
  parameter Modelica.Fluid.Types.Dynamics massDynamics= Modelica.Fluid.Types.Dynamics.DynamicFreeInitial
    "Type of mass balance: dynamic (3 initialization options) or steady state"
     annotation (Dialog(tab="Dynamics"));
  parameter Real tau=30 "Thermal time constant"
    annotation (Dialog(tab="Dynamics", enable = if massDynamics == Modelica.Fluid.Types.Dynamics.SteadyState then false else true));
equation
  connect(port_a1, port_a1)
    annotation (Line(points={{-100,60},{-100,60}}, color={0,127,255}));
  connect(port_b1, port_b1)
    annotation (Line(points={{100,60},{100,60}}, color={0,127,255}));
  connect(port_a2, hex.port_a2) annotation (Line(points={{100,-60},{40,-60},{40,
          -6},{10,-6}}, color={0,127,255}));
  connect(port_b2, hex.port_b2) annotation (Line(points={{-100,-60},{-40,-60},{-40,
          -6},{-10,-6}}, color={0,127,255}));
  connect(port_a1, spl.port_1) annotation (Line(points={{-100,60},{-80,60},{-80,
          20},{-36,20}}, color={0,127,255}));
  connect(thermostatic3WayValve.port_b, port_b1) annotation (Line(points={{50,20},
          {60,20},{60,60},{100,60}},
                     color={0,127,255}));
  connect(spl.port_3, hex.port_a1)
    annotation (Line(points={{-30,14},{-30,6},{-10,6}}, color={0,127,255}));
  connect(TSet, thermostatic3WayValve.TMixedSet)
    annotation (Line(points={{40,100},{40,30}}, color={0,0,127}));
  connect(thermostatic3WayValve.port_a1, spl.port_2)
    annotation (Line(points={{30,20},{-24,20}}, color={0,127,255}));
  connect(hex.port_b1, thermostatic3WayValve.port_a2)
    annotation (Line(points={{10,6},{40,6},{40,10}}, color={0,127,255}));
  annotation (Icon(graphics={
        Polygon(
          points={{-80,0},{0,80},{80,0},{0,-80},{-80,0}},
          lineColor={0,0,0},
          smooth=Smooth.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(
          points={{0,80},{-80,0},{0,-80},{80,0},{0,80}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{90,-14},{14,-90}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{22,-62},{22,-76}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{24,-60},{38,-60}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{40,-44},{40,-58}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{42,-42},{56,-42}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{58,-26},{58,-40}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{62,-24},{76,-24}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{78,-6},{78,-20}},
          color={0,0,0},
          smooth=Smooth.None),
        Line(
          points={{-100,60},{-60,60},{0,8},{60,60}},
          color={85,85,255},
          smooth=Smooth.None,
          thickness=1),
        Line(
          points={{60,60},{100,60}},
          color={85,85,255},
          smooth=Smooth.None,
          thickness=1),
        Line(
          points={{60,-60},{100,-60}},
          color={170,255,255},
          smooth=Smooth.None,
          thickness=1),
        Line(
          points={{-100,-60},{-60,-60},{0,-8},{60,-60}},
          color={170,255,255},
          smooth=Smooth.None,
          thickness=1),
        Text(
          extent={{-26,54},{26,40}},
          lineColor={0,0,0},
          lineThickness=1,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="Supply"),
        Text(
          extent={{-28,-40},{24,-54}},
          lineColor={0,0,0},
          lineThickness=1,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          textString="Return"),
        Rectangle(extent={{-100,100},{100,-100}}, lineColor={0,0,0})}));
end recov_AHU;
