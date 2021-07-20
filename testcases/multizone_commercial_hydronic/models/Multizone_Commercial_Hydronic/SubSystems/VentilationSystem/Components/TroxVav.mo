within Multizone_Commercial_Hydronic.SubSystems.VentilationSystem.Components;
model TroxVav
  extends IDEAS.Fluid.Interfaces.PartialTwoPortInterface;
  parameter Modelica.SIunits.Pressure dpValve_nominal(displayUnit="Pa")
    "Series pressure drop at nominal flow rate in addition to dp_nominal";
  parameter Modelica.SIunits.Pressure dpFixed_nominal(displayUnit="Pa") = 0
    "Series pressure drop at nominal flow rate in addition to dp_nominal";
  parameter Boolean homotopyInitialization = true "= true, use homotopy method"
    annotation(Evaluate=true, Dialog(tab="Advanced"));
  parameter Boolean use_inputFilter=true
    "= true, if opening is filtered with a 2nd order CriticalDamping filter"
    annotation(Dialog(tab="Dynamics", group="Filtered opening"));
  parameter Modelica.SIunits.Time riseTime=120
    "Rise time of the filter (time to reach 99.6 % of an opening step)"
    annotation(Dialog(tab="Dynamics", group="Filtered opening",enable=use_inputFilter));
  parameter Modelica.Blocks.Types.Init init=Modelica.Blocks.Types.Init.InitialOutput
    "Type of initialization (no init/steady state/initial state/initial output)"
    annotation(Dialog(tab="Dynamics", group="Filtered opening",enable=use_inputFilter));
  parameter Real y_start=1 "Initial value of output"
    annotation(Dialog(tab="Dynamics", group="Filtered opening",enable=use_inputFilter));
  parameter Real l(min=1e-10, max=1) = 0.0001
    "Valve leakage, l=Kv(y=0)/Kv(y=1)";
  parameter Real nParallel = 1 "Number of units in parallel";
  parameter Real fraMax = 1
    "Upper bound for volumetric mass flow rate, fraction of nominal";
  parameter Real fraMin = 0
    "Lower bound for volumetric mass flow rate, fraction of nominal";
  parameter Boolean simplifyRho = true
    "Use constant density for the computation for the volumetric mass flow rate";
  parameter Real deltaM = 0.1
    "Fraction of nominal mass flow rate where transition to turbulent occurs";
  parameter Modelica.SIunits.Density rhoStd=Medium.density_pTX(
      101325,
      Medium.T_default,
      Medium.X_default)
    "Inlet density for which valve coefficients are defined"
  annotation(Dialog(group="Nominal condition", tab="Advanced"));
  Modelica.Blocks.Interfaces.RealInput y "Valve set point"
    annotation (Placement(transformation(extent={{-124,50},{-84,90}})));
  UnitTests.Components.TwoWayPressureIndependent         val(
    final dpValve_nominal=dpValve_nominal,
    final dpFixed_nominal=dpFixed_nominal,
    redeclare final package Medium = Medium,
    final allowFlowReversal=allowFlowReversal,
    m_flow_nominal=nParallel*m_flow_nominal,
    final use_inputFilter=use_inputFilter,
    final riseTime=riseTime,
    final init=init,
    final y_start=y_start,
    final homotopyInitialization=homotopyInitialization,
    final deltaM=deltaM,
    final rhoStd=rhoStd,
    final show_T=show_T,
    l=l)       "Pressure independent valve"
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=fraMin + (fraMax -
        fraMin)*y)
    annotation (Placement(transformation(extent={{-80,30},{-20,50}})));
initial equation
  assert(fraMin<=fraMax, "In " + getInstanceName() + ": fraMin="+String(fraMin)+
  " should be smaller than fraMax="+String(fraMax));
equation
  connect(val.port_a, port_a)
    annotation (Line(points={{-10,0},{-55,0},{-100,0}}, color={0,127,255}));
  connect(val.port_b, port_b) annotation (Line(points={{10,0},{56,0},{100,0}},
               color={0,127,255}));
  connect(realExpression.y, val.y)
    annotation (Line(points={{-17,40},{0,40},{0,12}},   color={0,0,127}));
    annotation (Dialog(enable = not use_massFlowRate),
              Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),
    Icon(graphics={
        Rectangle(heaSys(     port_a2)),
        Line(heaSys(     port_a2)),
        Line(heaSys(     port_a2))}));
end TroxVav;
