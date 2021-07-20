within Multizone_Commercial_Hydronic.SubSystems.Controllers.Components;
model Transition
  "Transition between steps (optionally with delayed transition and/or condition input port)"
  parameter Boolean use_conditionPort=false "= true, if conditionPort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  input Boolean condition=true
    "Fire condition (time varying Boolean expression)"
    annotation (Dialog(enable=not use_conditionPort));

  parameter Boolean delayedTransition=false
    "= true, if transition fires after waitTime" annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));
  parameter Modelica.SIunits.Time waitTime=0
    "Wait time before transition fires (> 0 required)"
    annotation (Dialog(enable=delayedTransition));

  parameter Boolean use_firePort=false "= true, if firePort enabled"
    annotation (
    Evaluate=true,
    HideResult=true,
    choices(__Dymola_checkBox=true));

  parameter Boolean loopCheck=true
    "= true, if one delayed transition per loop required" annotation (
    Evaluate=true,
    HideResult=true,
    Dialog(tab="Advanced"),
    choices(__Dymola_checkBox=true));

  Modelica_StateGraph2.Internal.Interfaces.Transition_in inPort
    "Input port of transition (exactly one connection to this port is required)"
    annotation (Placement(transformation(extent={{-17,83},{17,117}})));

  Modelica_StateGraph2.Internal.Interfaces.Transition_out outPort
    "Output port of transition (exactly one connection from this port is required)"
    annotation (Placement(transformation(extent={{-25,-150},{25,-100}})));

  Modelica.Blocks.Interfaces.BooleanInput conditionPort if use_conditionPort
    "Fire condition as Boolean input."
    annotation (Placement(transformation(extent={{-150,-25},{-100,25}})));

  Modelica.Blocks.Interfaces.BooleanOutput firePort=fire if use_firePort
    "= true, if transition fires"
    annotation (Placement(transformation(extent={{90,-15},{120,15}})));

  output Boolean fire "= true, if transition fires";
  output Boolean enableFire "= true, if firing condition is true";

protected
  constant Modelica.SIunits.Time minimumWaitTime=100*Modelica.Constants.eps;
  Modelica.SIunits.Time t_start
    "Time instant at which the transition would fire, if waitTime would be zero";
  Modelica.Blocks.Interfaces.BooleanInput localCondition;
initial equation
  pre(enableFire) = false;
  if delayedTransition then
    pre(t_start) = 0;
  end if;
equation
  // Handle conditional conditionPort
  connect(conditionPort, localCondition);
  if not use_conditionPort then
    localCondition = condition;
  end if;

  // Determine firing condition
  enableFire = localCondition and inPort.available;

  if delayedTransition then
    when enableFire then
      t_start = time;
    end when;
    fire = enableFire and time >= t_start + waitTime;
    outPort.checkOneDelayedTransitionPerLoop = true;
  else
    t_start = 0;
    fire = enableFire;
    if loopCheck then
      outPort.checkOneDelayedTransitionPerLoop = inPort.checkOneDelayedTransitionPerLoop;
    else
      outPort.checkOneDelayedTransitionPerLoop = true;
    end if;
  end if;

  inPort.fire = fire;
  outPort.fire = fire;

  // Handling of node
  Connections.branch(inPort.node, outPort.node);
  outPort.node = inPort.node;

  // Asserts
  assert(not delayedTransition or delayedTransition and waitTime >
    minimumWaitTime, "Either set delayTransition = false, or set waitTime (= "
     + String(waitTime) + ") > " + String(minimumWaitTime));
  annotation (
    defaultComponentName="T1",
    Icon(coordinateSystem(
        extent={{-100,-100},{100,100}},
        initialScale=0.04,
        preserveAspectRatio=true,
        grid={1,1}), graphics={
        Text(
          heaSys.e005.port_a2.visible),
        Line(
          heaSys.e005.port_a2.visible),
        Line(
          heaSys.e005.port_a2.visible),
        Line(
          heaSys.e005.port_a2.visible),
        Line(
          heaSys.e005.port_a2.visible),
        Text(
          heaSys.e005.port_a2.extent),
        Rectangle(
          heaSys.e005.port_a2.extent),
        Line(heaSys.e005.port_a2.points),
        Text(
          heaSys.e005.port_a2.visible),
          heaSys.e005.port_a2.textString},
      heaSys(e005(port_a2(
          origin={-155,-3},
          rotation=90)))),
        Text(heaSys(e005(port_a2(
          visible=not loopCheck,
          extent={{10,-60},{400,-80}},
          lineColor={255,0,0},
          fillColor={170,255,213},
          fillPattern=FillPattern.Solid,
          textString="no check")))),
        Line(heaSys(e005(port_a2(
          visible=not loopCheck,
          points={{0,-15},{0,-100}},
          color={255,0,0},
          smooth=Smooth.None)))));
end Transition;
