within Modelica_StateGraph2;
package Blocks
  "Input/output blocks that are designed for StateGraph2 but shall be included in the Modelica Standard Library"
  package MathBoolean "Blocks with input and output signals of type Boolean"

    block ShowValue
      "Show Integer value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_activePort=true "= true, if activePort enabled"
        annotation (
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      input Boolean active=false
        "Boolean variable to visualize if use_activePort=false (time varying)"
        annotation (Dialog(enable=not use_activePort));
      Modelica.Blocks.Interfaces.BooleanInput activePort if use_activePort
        "Boolean variable to be shown in diagram layer if use_activePort = true"
        annotation (Placement(transformation(extent={{-130,-15},{-100,15}})));

      Modelica.Blocks.Interfaces.BooleanOutput active2;
    equation
      if use_activePort then
        connect(activePort, active2);
      else
        active2 = active;
      end if;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Text(
                    visible=not use_activePort,
                    extent={{-188,-60},{62,-80}},
                    lineColor={0,0,0},
                    textString="%active"),Ellipse(
                    extent={{-100,-40},{-20,40}},
                    fillColor=DynamicSelect({235,235,235}, if active2 > 0.5
                 then {0,255,0} else {235,235,235}),
                    lineColor={0,0,0},
                    pattern=LinePattern.None,
                    fillPattern=FillPattern.Sphere)}));
    end ShowValue;

    block And "Logical 'and': y = u[1] and u[2] and ... and u[nu]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialBooleanMISO;

    equation
      y = Modelica_StateGraph2.Blocks.BooleanFunctions.allTrue(u);
      annotation (defaultComponentName="and1", Icon(graphics={Text(
                    extent={{-76,40},{60,-40}},
                    lineColor={0,0,0},
                    textString="and")}));
    end And;

    block Or "Logical 'or': y = u[1] or u[2] or ... or u[nu]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialBooleanMISO;

    equation
      y = Modelica_StateGraph2.Blocks.BooleanFunctions.anyTrue(u);
      annotation (defaultComponentName="or1", Icon(graphics={Text(
                    extent={{-80,40},{60,-40}},
                    lineColor={0,0,0},
                    textString="or")}));
    end Or;

    block Xor
      "Logical 'xor': y = oneTrue(u)  (y is true, if exactly one element of u is true, otherwise it is false)"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialBooleanMISO;

    equation
      y = Modelica_StateGraph2.Blocks.BooleanFunctions.oneTrue(u);
      annotation (defaultComponentName="xor1", Icon(graphics={Text(
                    extent={{-80,40},{60,-40}},
                    lineColor={0,0,0},
                    textString="xor")}));
    end Xor;

    block Nand "Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialBooleanMISO;

    equation
      y = not Modelica_StateGraph2.Blocks.BooleanFunctions.allTrue(u);
      annotation (defaultComponentName="nand1", Icon(graphics={Text(
                    extent={{-80,40},{60,-40}},
                    lineColor={0,0,0},
                    textString="nand")}));
    end Nand;

    block Nor "Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialBooleanMISO;

    equation
      y = not Modelica_StateGraph2.Blocks.BooleanFunctions.anyTrue(u);
      annotation (defaultComponentName="or1", Icon(graphics={Text(
                    extent={{-80,40},{60,-40}},
                    lineColor={0,0,0},
                    textString="nor")}));
    end Nor;

    block RisingEdge
      "Output y is true, if the input u has a rising edge, otherwise it is false (y = edge(u))"
      parameter Boolean pre_u_start=false "Value of pre(u) at initial time";
      extends Interfaces.PartialBooleanSISO;
    initial equation
      pre(u) = pre_u_start;
    equation
      y = edge(u);
      annotation (
        defaultComponentName="rising1",
        Icon(graphics={Line(points={{-80,-68},{-36,-68},{-36,-24},{22,-24},{22,
              -68},{66,-68}}, color={0,0,0}),Line(points={{-80,32},{-36,32},{-36,
              76},{-36,76},{-36,32},{66,32}}, color={255,0,255})}),
        Documentation(info="<html>
<p>
A rising edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

</html>"));
    end RisingEdge;

    block FallingEdge
      "Output y is true, if the input u has a falling edge, otherwise it is false (y = edge(not u))"
      parameter Boolean pre_u_start=false "Value of pre(u) at initial time";
      extends Interfaces.PartialBooleanSISO;
    protected
      Boolean not_u=not u annotation (HideResult=true);
    initial equation
      pre(not_u) = not pre_u_start;
    equation
      y = edge(not_u);
      annotation (
        defaultComponentName="falling1",
        Icon(graphics={Line(points={{-80,-68},{-36,-68},{-36,-24},{22,-24},{22,
              -68},{66,-68}}, color={0,0,0}),Line(points={{-80,32},{24,32},{24,
              76},{24,76},{24,32},{66,32}}, color={255,0,255})}),
        Documentation(info="<html>
<p>
A falling edge of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

</html>"));
    end FallingEdge;

    block ChangingEdge
      "Output y is true, if the input u has either a rising or a falling edge and otherwise it is false (y=change(u))"
      parameter Boolean pre_u_start=false "Value of pre(u) at initial time";
      extends Interfaces.PartialBooleanSISO;
    initial equation
      pre(u) = pre_u_start;
    equation
      y = change(u);
      annotation (
        defaultComponentName="changing1",
        Icon(graphics={Line(points={{-80,-68},{-36,-68},{-36,-24},{22,-24},{22,
              -68},{66,-68}}, color={0,0,0}),Line(points={{-80,32},{-36,32},{-36,
              76},{-36,76},{-36,32},{66,32}}, color={255,0,255}),Line(
                    points={{24,32},{24,76}},
                    color={255,0,255},
                    smooth=Smooth.None)}),
        Documentation(info="<html>
<p>
A changing edge, i.e., either rising or falling,
of the Boolean input u results in y = <b>true</b> at this
time instant. At all other time instants, y = <b>false</b>.
</p>

</html>"));
    end ChangingEdge;

    block MultiSwitch
      "Set Boolean expression that is associated with the first active input signal"

      input Boolean expr[nu]=fill(false, nu)
        "y = if u[i] then expr[i] else y_default (time varying)"
        annotation (Dialog);
      parameter Boolean use_pre_as_default=true
        "set true to hold last value as default (y_default = pre(y))"
        annotation (HideResult=true, choices(__Dymola_checkBox=true));
      parameter Boolean y_default=false
        "Default value of output y if all u[i] = false"
        annotation (Dialog(enable=not use_pre_as_default));

      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);

      Modelica_StateGraph2.Blocks.Interfaces.BooleanVectorInput u[nu]
        "Set y = expr[i], if u[i] = true"
        annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
      Modelica.Blocks.Interfaces.BooleanOutput y(start=y_default, fixed=true)
        "Output depending on expression"
        annotation (Placement(transformation(extent={{300,-10},{320,10}})));

    protected
      Integer firstActiveIndex;
    equation
      firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
      y = if firstActiveIndex == 0 then (if use_pre_as_default then pre(y)
         else y_default) else expr[firstActiveIndex];
      annotation (
        defaultComponentName="set1",
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics={Text(
                    visible=not use_pre_as_default,
                    extent={{-100,-60},{300,-90}},
                    lineColor={0,0,0},
                    textString="else: %y_default"),Text(
                    visible=use_pre_as_default,
                    extent={{-100,-60},{300,-90}},
                    lineColor={0,0,0},
                    textString="else: pre(y)"),Text(
                    extent={{-99,99},{300,59}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,-51},{300,50}},
                    lineColor={255,127,0},
                    fillColor={210,210,210},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(
                    extent={{-84,16},{273,-15}},
                    lineColor={0,0,0},
                    fillColor={255,246,238},
                    fillPattern=FillPattern.Solid,
                    textString="%expr"),Ellipse(
                    extent={{275,8},{289,-6}},
                    lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
                255,0} else {235,235,235}),
                    fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
                255,0} else {235,235,235}),
                    fillPattern=FillPattern.Solid)}),
        Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Boolean expressions expr[:]. The output signal y is
set to expr[i], if i is the first element in the input vector u that is true. If all input signals are
false, y is set to parameter \"y_default\" or to pre(y) depending on the parameter use_pre_as_default:
</p>

<pre>
  // Conceptual equation (not valid Modelica)
  i = 'first element of u[:] that is true';
  y = <b>if</b> i==0 <b>then</b> <b>if</b> use_pre_as_default <b>then</b> pre(y) <b>else</b> y_default <b>else</b> expr[i];
</pre>

</html>"));
    end MultiSwitch;

    block OnDelay
      "Delay a rising edge of the input, but do not delay a falling edge."
      extends Interfaces.PartialBooleanSISO;
      parameter Modelica.SIunits.Time delayTime "Delay time";

    protected
      Boolean delaySignal(start=false, fixed=true);
      discrete Modelica.SIunits.Time t_next;
    initial equation
      pre(u) = false;
      pre(t_next) = time - 1;
    algorithm
      when u then
        delaySignal := true;
        t_next := time + delayTime;
      elsewhen not u then
        delaySignal := false;
        t_next := time - 1;
      end when;
    equation
      if delaySignal then
        y = time >= t_next;
      else
        y = false;
      end if;
      annotation (Icon(graphics={
            Text(
              extent={{-250,-120},{250,-150}},
              lineColor={0,0,0},
              textString="%delayTime s"),
            Line(points={{-80,-66},{-60,-66},{-60,-22},{38,-22},{38,-66},{66,-66}},
                color={0,0,0}),
            Line(points={{-80,32},{-4,32},{-4,76},{38,76},{38,32},{66,32}},
                color={255,0,255})}), Documentation(info="<html>
<p>
A rising edge of the Boolean input u gives a delayed output.
A falling edge of the input is immediately given to the output.
</p>

<p>
Simulation results of a typical example with a delay time of 0.1 s
is shown in the next figure.
</p>

<p><blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Actions/OnDelay1.png\"><br>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Actions/OnDelay2.png\">
</blockquote></p>

</html>"));
    end OnDelay;
  end MathBoolean;

  package MathInteger "Blocks with input and output signals of type Integer"

    block ShowValue
      "Show Integer value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_numberPort=true "= true, if numberPort enabled"
        annotation (
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      input Integer number=0
        "Number to visualize if use_numberPort=false (time varying)"
        annotation (Dialog(enable=not use_numberPort));
      Modelica.Blocks.Interfaces.IntegerInput numberPort if use_numberPort
        "Number to be shown in diagram layer if use_numberPort = true"
        annotation (Placement(transformation(extent={{-130,-15},{-100,15}})));
      Modelica.Blocks.Interfaces.IntegerOutput number2;
    equation
      if use_numberPort then
        connect(numberPort, number2);
      else
        number2 = number;
      end if;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Rectangle(
                    extent={{100,40},{-100,-40}},
                    lineColor={0,0,255},
                    fillColor={236,233,216},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(extent={{-94,-34},
              {96,34}}, textString=DynamicSelect("0", realString(
                    number2,
                    1,
                    0))),Text(
                    visible=not use_numberPort,
                    extent={{-150,-50},{150,-70}},
                    lineColor={0,0,0},
                    textString="%number")}));
    end ShowValue;

    block Sum "Sum of Integers: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialIntegerMISO;
      parameter Integer k[nu]=fill(1, nu) "Input gains";
    equation
      y = k*u;

      annotation (Icon(graphics={Text(
                    extent={{-200,-110},{200,-140}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="%k"),Text(
                    extent={{-72,68},{92,-68}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="+")}));
    end Sum;

    block Product "Product of Integer: y = u[1]*u[2]* ... *u[n]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialIntegerMISO;
    equation
      y = product(u);

      annotation (Icon(graphics={Text(
                    extent={{-74,50},{94,-94}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="*")}));
    end Product;

    block MultiSwitch
      "Set Integer expression that is associated with the first active input signal"

      input Integer expr[nu]=fill(0, nu)
        "y = if u[i] then expr[i] elseif use_pre_as_default then pre(y) else y_default"
        annotation (Dialog);
      parameter Integer y_default=0
        "Default value of output y if use_pre_as_default=false, as well as pre(y) at initial time";

      parameter Boolean use_pre_as_default=true
        "= true, y holds its last value if all u[i]=false, otherwise y=y_default"
        annotation (HideResult=true, choices(__Dymola_checkBox=true));
      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);

      Modelica_StateGraph2.Blocks.Interfaces.BooleanVectorInput u[nu]
        "Set y = expr[i], if u[i] = true"
        annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
      Modelica.Blocks.Interfaces.IntegerOutput y
        "Output depending on expression"
        annotation (Placement(transformation(extent={{300,-10},{320,10}})));

    protected
      Integer firstActiveIndex;
    initial equation
      pre(y) = y_default;
    equation
      firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
      y = if firstActiveIndex > 0 then expr[firstActiveIndex] else if
        use_pre_as_default then pre(y) else y_default;
      annotation (
        defaultComponentName="multiSwitch1",
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics={Text(
                    extent={{310,-25},{410,-45}},
                    lineColor={0,0,0},
                    textString=realString(
                      y,
                      1,
                      0)),Text(
                    visible=not use_pre_as_default,
                    extent={{-100,-60},{300,-90}},
                    lineColor={0,0,0},
                    textString="else: %y_default"),Text(
                    visible=use_pre_as_default,
                    extent={{-100,-50},{300,-80}},
                    lineColor={0,0,0},
                    textString="else: pre(y)"),Rectangle(
                    extent={{-100,-40},{300,40}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(
                    extent={{-100,90},{300,50}},
                    textString="%name",
                    lineColor={0,0,255}),Text(
                    extent={{-80,15},{290,-15}},
                    lineColor={0,0,0},
                    fillColor={255,246,238},
                    fillPattern=FillPattern.Solid,
                    textString="%expr")}),
        Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Integer expressions expr[:]. The output signal y is
set to expr[i], if i is the first element in the input vector u that is true. If all input signals are
false, y is set to parameter \"y_default\" or to pre(y) depending on the parameter use_pre_as_default:
</p>

<pre>
  // Conceptual equation (not valid Modelica)
  i = 'first element of u[:] that is true';
  y = <b>if</b> i==0 <b>then</b> <b>if</b> use_pre_as_default <b>then</b> pre(y) <b>else</b> y_default <b>else</b> expr[i];
</pre>

</html>"));
    end MultiSwitch;

    block TriggeredAdd
      "Add input to previous value of output, if rising edge of trigger port"
      extends Interfaces.PartialIntegerSISO;

      parameter Boolean use_reset=false "=true, if reset port enabled"
        annotation (
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      parameter Boolean use_set=false
        "=true, if set port enabled and used as default value when reset"
        annotation (
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      parameter Integer y_start=0
        "Initial and reset value of y if set port is not used";

      Modelica.Blocks.Interfaces.BooleanInput trigger annotation (Placement(
            transformation(
            extent={{-20,-20},{20,20}},
            rotation=90,
            origin={-60,-120})));
      Modelica.Blocks.Interfaces.BooleanInput reset if use_reset annotation (
          Placement(transformation(
            extent={{-20,-20},{20,20}},
            rotation=90,
            origin={60,-120})));
      Modelica.Blocks.Interfaces.IntegerInput set if use_set annotation (
          Placement(transformation(
            extent={{-20,-20},{20,20}},
            rotation=270,
            origin={60,120}), iconTransformation(
            extent={{-20,-20},{20,20}},
            rotation=270,
            origin={28,98})));
    protected
      Modelica.Blocks.Interfaces.BooleanOutput local_reset
        annotation (HideResult=true);
      Modelica.Blocks.Interfaces.IntegerOutput local_set;
    initial equation
      pre(y) = y_start;
    equation
      if use_reset then
        connect(reset, local_reset);
        if use_set then
          connect(set, local_set);
        else
          local_set = y_start;
        end if;
      else
        local_reset = false;
        local_set = 0;
      end if;

      when {trigger,local_reset} then
        y = if local_reset then local_set else pre(y) + u;
      end when;
      annotation (
        defaultComponentName="add1",
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            initialScale=0.06), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            initialScale=0.06), graphics={Line(
                    points={{-100,0},{32,76}},
                    color={255,128,0},
                    smooth=Smooth.None,
                    pattern=LinePattern.Dot),Line(
                    points={{-100,0},{32,-20}},
                    color={255,128,0},
                    pattern=LinePattern.Dot,
                    smooth=Smooth.None),Line(
                    points={{-54,-56},{-26,-56},{-26,-20},{32,-20},{32,76}},
                    color={0,0,0},
                    smooth=Smooth.None),Line(
                    points={{-60,-100},{32,-20}},
                    color={255,0,255},
                    pattern=LinePattern.Dot,
                    smooth=Smooth.None),Text(
                    visible=use_reset,
                    extent={{-28,-62},{94,-86}},
                    lineColor={0,0,0},
                    textString="reset")}));
    end TriggeredAdd;
  end MathInteger;

  package MathReal "Blocks with input and output signals of type Real"
    block ShowValue
      "Show Real value from numberPort or from number input field in diagram layer dynamically"
      parameter Boolean use_numberPort=true "= true, if numberPort enabled"
        annotation (
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      input Real number=0.0
        "Number to visualize if use_numberPort=false (time varying)"
        annotation (Dialog(enable=not use_numberPort));
      parameter Integer precision(min=0) = 3
        "Number of significant digits to be shown";

      Modelica.Blocks.Interfaces.RealInput numberPort if use_numberPort
        "Number to be shown in diagram layer if use_numberPort = true"
        annotation (Placement(transformation(extent={{-130,-15},{-100,15}})));
      Modelica.Blocks.Interfaces.RealOutput number2;
    equation
      if use_numberPort then
        connect(numberPort, number2);
      else
        number2 = number;
      end if;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                -100},{100,100}}), graphics={Rectangle(
                    extent={{100,40},{-100,-40}},
                    lineColor={0,0,255},
                    fillColor={236,233,216},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(extent={{-94,-34},
              {96,34}}, textString=DynamicSelect("0.0", realString(
                    number2,
                    1,
                    integer(precision)))),Text(
                    visible=not use_numberPort,
                    extent={{-150,-50},{150,-70}},
                    lineColor={0,0,0},
                    textString="%number")}));
    end ShowValue;

    block Sum "Sum of Reals: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialRealMISO;
      parameter Real k[nu]=fill(1, nu) "Input gains";
    equation
      y = k*u;

      annotation (Icon(graphics={Text(
                    extent={{-200,-110},{200,-140}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="%k"),Text(
                    extent={{-72,68},{92,-68}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="+")}));
    end Sum;

    block Product "Product of Reals: y = u[1]*u[2]* ... *u[n]"
      extends Modelica_StateGraph2.Blocks.Interfaces.PartialRealMISO;
    equation
      y = product(u);

      annotation (Icon(graphics={Text(
                    extent={{-74,50},{94,-94}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    textString="*")}));
    end Product;

    block MultiSwitch
      "Set Real expression that is associated with the first active input signal"

      input Real expr[nu]=fill(0.0, nu)
        "y = if u[i] then expr[i] else y_default (time varying)"
        annotation (Dialog);
      parameter Real y_default=0.0
        "Default value of output y if all u[i] = false";

      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
      parameter Integer precision(min=0) = 3
        "Number of significant digits to be shown in dynamic diagram layer for y"
        annotation (Dialog(tab="Advanced"));

      Modelica_StateGraph2.Blocks.Interfaces.BooleanVectorInput u[nu]
        "Set y = expr[i], if u[i] = true"
        annotation (Placement(transformation(extent={{-110,30},{-90,-30}})));
      Modelica.Blocks.Interfaces.RealOutput y(start=y_default, fixed=true)
        "Output depending on expression"
        annotation (Placement(transformation(extent={{300,-10},{320,10}})));

    protected
      Integer firstActiveIndex;
    initial equation
      pre(u) = fill(false, nu);
    equation
      firstActiveIndex = BooleanFunctions.firstTrueIndex(u);
      y = if firstActiveIndex == 0 then y_default else expr[firstActiveIndex];
      annotation (
        defaultComponentName="multiSwitch1",
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics={Rectangle(
                    extent={{-100,-51},{300,50}},
                    lineColor={0,0,0},
                    fillColor={170,213,255},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(
                    extent={{-86,16},{295,-17}},
                    lineColor={0,0,0},
                    fillColor={255,246,238},
                    fillPattern=FillPattern.Solid,
                    textString="%expr"),Text(
                    extent={{310,-25},{410,-45}},
                    lineColor={0,0,0},
                    textString=DynamicSelect(" ", realString(
                      y,
                      1,
                      integer(precision)))),Text(
                    extent={{-100,-60},{300,-90}},
                    lineColor={0,0,0},
                    textString="else: %y_default"),Text(
                    extent={{-100,100},{300,60}},
                    textString="%name",
                    lineColor={0,0,255})}),
        Documentation(info="<html>
<p>
The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Real expressions expr[:]. The output signal y is
set to expr[i], if i is the first element in the input vector u that is true. If all input signals are
false, y is set to parameter \"y_default\":
</p>

<pre>
  // Conceptual equation (not valid Modelica)
  i = 'first element of u[:] that is true';
  y = <b>if</b> i==0 <b>then</b> y_default <b>else</b> expr[i];
</pre>

</html>"));
    end MultiSwitch;

  end MathReal;

  package BooleanFunctions
    "Functions with Boolean inputs (shall be included in Modelica Standard Library)"
    function allTrue
      "Returns true, if all elements of the Boolean input vector are true ('and')"
      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    algorithm
      result := true;
      for i in 1:size(b, 1) loop
        result := result and b[i];
      end for;
      annotation (Documentation(info="<html>
</html>"));
    end allTrue;

    function anyTrue
      "Returns true, if at least on element of the Boolean input vector is true ('or')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    algorithm
      result := false;
      for i in 1:size(b, 1) loop
        result := result or b[i];
      end for;
    end anyTrue;

    function oneTrue
      "Returns true, if exactly one element of the Boolean input vector is true ('xor')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    protected
      Integer count=0;
    algorithm
      for i in 1:size(b, 1) loop
        count := if b[i] then count + 1 else count;
      end for;
      result := count == 1;
    end oneTrue;

    function firstTrueIndex
      "Returns the index of the first element of the Boolean vector that is true and returns 0, if no element is true"
      input Boolean b[:];
      output Integer index;
    algorithm
      index := 0;
      for i in 1:size(b, 1) loop
        if b[i] then
          index := i;
          return;
        end if;
      end for;
    end firstTrueIndex;
  end BooleanFunctions;

  package Interactive "Interactive components"

    block RadioButtonSource "Boolean signal source that mimis a radio button"

      parameter Modelica.SIunits.Time buttonTimeTable[:]
        "Time instants where button is pressed";
      input Boolean reset[:]={false}
        "Reset button to false, if an element of reset becomes true"
        annotation (Dialog(group="Time varying expressions"));

      Modelica.Blocks.Interfaces.BooleanOutput on(start=false, fixed=true)
        annotation (Placement(transformation(extent={{100,-10},{120,10}},
              rotation=0)));
    protected
      Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
      parameter Integer nReset=size(reset, 1);
      Boolean pre_reset[nReset];
    initial equation
      pre(pre_reset) = fill(false, nReset);
      pre(reset) = fill(false, nReset);
    algorithm
      pre_reset := pre(reset);
      when pre_reset then
        on := false;
      end when;

      when change(table.y) then
        on := true;
      end when;
      annotation (
        Icon(
          coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                100}}),
          graphics={Rectangle(
                    extent={{-100,-100},{100,100}},
                    borderPattern=BorderPattern.Raised,
                    fillColor=DynamicSelect({192,192,192}, if on > 0.5 then {0,
                255,0} else {192,192,192}),
                    fillPattern=DynamicSelect(FillPattern.Solid, if on > 0.5
                 then FillPattern.Solid else FillPattern.Solid),
                    lineColor={128,128,128},
                    lineThickness=0.5),Text(
                    extent={{-100,-35},{100,35}},
                    lineColor={0,0,0},
                    textString="%name")},
          interaction={OnMouseDownSetBoolean(on, true)}),
        Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                {100,100}}), graphics),
        Documentation(info="<html>
<p>
Boolean signal source that mimics a radio button:
Via a table, a radio button is pressed (i.e., the output 'on' is set to true) and is reset when an element of the Boolean vector
'reset' becomes true. If both appear at the same time instant, setting
the button according to the table has a higher priority as reseting
the button. Example:
</p>

<pre>
  RadioButtonSource start(buttonTimeTable={1,3}, reset={stop.on});
  RadioButtonSource stop (buttonTimeTable={2,4}, reset={start.on});
</pre>

<p>
The \"start\" button is pressed at time=1 s and time=3 s,
whereas the \"stop\" button is pressed at time=2 s and time=4 s.
This gives the following result:
</p>

<table border=1 cellspacing=2 >
<tr><th>time [s]</th>
    <th> start.on </th>
    <th> stop.on </th>
    </tr>
<tr><td> 0 </td>
    <td> false </td>
    <td> false </td>
    </tr>
<tr><td> 1 </td>
    <td> false </td>
    <td> false </td>
    </tr>
<tr><td> 1 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 2 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 2 </td>
    <td> false </td>
    <td> true </td>
    </tr>
<tr><td> 3 </td>
    <td> false </td>
    <td> true </td>
    </tr>
<tr><td> 3 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 4 </td>
    <td> true </td>
    <td> false </td>
    </tr>
<tr><td> 4 </td>
    <td> false </td>
    <td> true </td>
    </tr>
</table>
</html>"));
    end RadioButtonSource;

    model TrigButton
      "Button that sets its output y to true when pressing starts and otherwise sets its output to false"
      parameter String label="";
      parameter Boolean useGraphicalOutput=true;

      Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
            transformation(extent={{90,-10},{110,10}}, rotation=0)));
    protected
      Boolean buttonState(start=false, fixed=true) annotation (HideResult=false);
      Boolean pre_buttonState(start=false, fixed=true)
        annotation (HideResult=false);
    equation
      when pre(buttonState) then
        buttonState = false;
      end when;
      pre_buttonState = pre(buttonState);
      y = edge(pre_buttonState);
      annotation (Icon(
          coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                100}}),
          graphics={Rectangle(
                    borderPattern=BorderPattern.Raised,
                    extent={{-100,-100},{100,100}},
                    fillColor=DynamicSelect({192,192,192}, if buttonState > 0.5
                 then {255,0,0} else {192,192,192}),
                    fillPattern=FillPattern.Solid,
                    lineColor={128,128,128},
                    lineThickness=2),Text(
                    extent={{-80,-40},{80,40}},
                    lineColor={0,0,255},
                    textString="%label")},
          interaction={OnMouseDownSetBoolean(buttonState, true)}), Diagram(
            coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},{100,
                100}}), graphics));
    end TrigButton;

    model PressButton
      "Button that sets its output y to true when pressed down and changed to false when button is released"
      parameter String label="";
      parameter Boolean useGraphicalOutput=true;

      Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
            transformation(extent={{90,-10},{110,10}}, rotation=0)));

    protected
      Boolean buttonState(start=false, fixed=true) annotation (HideResult=false);
    equation

      //Dummy equation to make model check
      when false then
        buttonState = false;
      end when;

      y = pre(buttonState);
      annotation (
        __Dymola_structurallyIncomplete=true,
        defaultConnectionStructurallyInconsistent=true,
        Icon(
          coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                100}}),
          graphics={Rectangle(
                    borderPattern=BorderPattern.Raised,
                    extent={{-100,-100},{100,100}},
                    fillColor=DynamicSelect({192,192,192}, if buttonState > 0.5
                 then {255,0,0} else {192,192,192}),
                    fillPattern=FillPattern.Solid,
                    lineColor={128,128,128},
                    lineThickness=2),Text(
                    extent={{-80,-40},{80,40}},
                    lineColor={0,0,255},
                    textString="%label")},
          interaction={OnMouseDownSetBoolean(buttonState, true),
              OnMouseUpSetBoolean(buttonState, false)}),
        Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                {100,100}}), graphics));
    end PressButton;

    model ToggleButton
      "Button that sets its value to the opposite of its previous value when pressed down and then keeps this value until pressed anew"
      parameter String label="";
      Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
            transformation(extent={{90,-10},{110,10}}, rotation=0)));

    equation
      when false then
        y = false;
      end when;
      annotation (Icon(
          coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                100}}),
          graphics={Rectangle(
                    extent={{-100,-100},{100,100}},
                    fillColor=DynamicSelect({192,192,192}, if y > 0.5 then {255,
                0,0} else {192,192,192}),
                    borderPattern=BorderPattern.Raised,
                    fillPattern=FillPattern.Solid,
                    lineColor={128,128,128},
                    lineThickness=4),Text(
                    extent={{-80,-40},{80,40}},
                    lineColor={0,0,255},
                    textString="%label")},
          interaction={OnMouseDownSetBoolean(y, not y > 0.5)}));
    end ToggleButton;
  end Interactive;

  package Interfaces
    "Public interface definitions (shall be included in Modelica Standard Library)"
    connector BooleanVectorInput = input Boolean "Vector of Boolean inputs"
      annotation (
      defaultComponentName="u",
      Icon(graphics={Ellipse(
                  extent={{-100,-100},{100,100}},
                  lineColor={255,0,255},
                  fillColor={255,0,255},
                  fillPattern=FillPattern.Solid)}, coordinateSystem(
          extent={{-100,-100},{100,100}},
          preserveAspectRatio=false,
          initialScale=0.2)),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          initialScale=0.2,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Text(
                  extent={{-10,85},{-10,60}},
                  lineColor={255,0,255},
                  textString="%name"),Ellipse(
                  extent={{-50,50},{50,-50}},
                  lineColor={255,0,255},
                  fillColor={255,0,255},
                  fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
    connector IntegerVectorInput = input Integer "Vector of Integer inputs"
      annotation (
      defaultComponentName="u",
      Icon(graphics={Ellipse(
                  extent={{-100,100},{100,-100}},
                  lineColor={255,128,0},
                  fillColor={255,128,0},
                  fillPattern=FillPattern.Solid)}, coordinateSystem(
          extent={{-100,-100},{100,100}},
          preserveAspectRatio=true,
          initialScale=0.2)),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          initialScale=0.2,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Text(
                  extent={{-10,85},{-10,60}},
                  lineColor={255,128,0},
                  textString="%name"),Ellipse(
                  extent={{-50,50},{50,-50}},
                  lineColor={255,128,0},
                  fillColor={255,128,0},
                  fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
    connector RealVectorInput = input Real "Vector of Real inputs" annotation (
      defaultComponentName="u",
      Icon(graphics={Ellipse(
                  extent={{-100,100},{100,-100}},
                  lineColor={0,0,127},
                  fillColor={0,0,127},
                  fillPattern=FillPattern.Solid)}, coordinateSystem(
          extent={{-100,-100},{100,100}},
          preserveAspectRatio=true,
          initialScale=0.2)),
      Diagram(coordinateSystem(
          preserveAspectRatio=false,
          initialScale=0.2,
          extent={{-100,-100},{100,100}},
          grid={1,1}), graphics={Text(
                  extent={{-10,85},{-10,60}},
                  lineColor={0,0,127},
                  textString="%name"),Ellipse(
                  extent={{-50,50},{50,-50}},
                  lineColor={0,0,127},
                  fillColor={0,0,127},
                  fillPattern=FillPattern.Solid)}),
      Documentation(info="<html>
<p>
Connector with one input signal of type Boolean.
</p>
</html>"));
    partial block PartialBooleanSISO
      "Partial block with a BooleanInput and a BooleanOutput signal"

      Modelica.Blocks.Interfaces.BooleanOutput y
        annotation (Placement(transformation(extent={{100,-20},{140,20}})));
      Modelica.Blocks.Interfaces.BooleanInput u
        annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.04), graphics), Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.04), graphics={
            Text(
              extent={{-250,170},{250,110}},
              textString="%name",
              lineColor={0,0,255}),
            Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              borderPattern=BorderPattern.Raised),
            Ellipse(
              extent={{60,10},{80,-10}},
              lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
                   else {235,235,235}),
              fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,255,0}
                   else {235,235,235}),
              fillPattern=FillPattern.Solid)}));
    end PartialBooleanSISO;

    partial block PartialIntegerSISO
      "Partial block with a IntegerInput and an IntegerOutput signal"

      Modelica.Blocks.Interfaces.IntegerOutput y
        annotation (Placement(transformation(extent={{100,-20},{140,20}})));
      Modelica.Blocks.Interfaces.IntegerInput u
        annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics), Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics={Text(
                    extent={{110,-50},{250,-70}},
                    lineColor={0,0,0},
                    textString=DynamicSelect(" ", realString(
                      y,
                      1,
                      0))),Text(
                    extent={{-250,170},{250,110}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={0,0,0},
                    fillColor={255,213,170},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised)}));
    end PartialIntegerSISO;

    partial block PartialRealSISO
      "Partial block with a RealInput and an RealOutput signal"

      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-20},{140,20}})));
      Modelica.Blocks.Interfaces.RealInput u
        annotation (Placement(transformation(extent={{-160,-30},{-100,30}})));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics), Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics={Text(
                    extent={{-250,170},{250,110}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={0,0,0},
                    fillColor={170,213,255},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised)}));
    end PartialRealSISO;

    partial block PartialBooleanMISO
      "Partial block with a BooleanVectorInput and a BooleanOutput signal"

      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
      Modelica_StateGraph2.Blocks.Interfaces.BooleanVectorInput u[nu]
        annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
      Modelica.Blocks.Interfaces.BooleanOutput y
        annotation (Placement(transformation(extent={{100,-20},{140,20}})));
    initial equation
      pre(u) = fill(false, nu);
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics), Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics={Text(
                    extent={{-250,170},{250,110}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={0,0,0},
                    fillColor={215,215,215},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Ellipse(
                    extent={{60,10},{80,-10}},
                    lineColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
                255,0} else {235,235,235}),
                    fillColor=DynamicSelect({235,235,235}, if y > 0.5 then {0,
                255,0} else {235,235,235}),
                    fillPattern=FillPattern.Solid)}));
    end PartialBooleanMISO;

    partial block PartialIntegerMISO
      "Partial block with an IntegerVectorInput and an IntegerOutput signal"

      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
      Modelica_StateGraph2.Blocks.Interfaces.IntegerVectorInput u[nu]
        annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
      Modelica.Blocks.Interfaces.IntegerOutput y
        annotation (Placement(transformation(extent={{100,-17},{134,17}})));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics), Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics={Text(
                    extent={{110,-50},{250,-70}},
                    lineColor={0,0,0},
                    textString=DynamicSelect(" ", realString(
                      y,
                      1,
                      0))),Text(
                    extent={{-250,170},{250,110}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={255,137,0},
                    fillColor={255,213,170},
                    borderPattern=BorderPattern.Raised,
                    fillPattern=FillPattern.Solid)}));
    end PartialIntegerMISO;

    partial block PartialRealMISO
      "Partial block with a RealVectorInput and a RealOutput signal"

      parameter Integer precision(min=0) = 3
        "Number of significant digits to be shown in dynamic diagram layer for y"
        annotation (Dialog(tab="Advanced"));
      parameter Integer nu(min=0) = 0 "Number of input connections"
        annotation (Dialog(__Dymola_connectorSizing=true), HideResult=true);
      Modelica_StateGraph2.Blocks.Interfaces.RealVectorInput u[nu]
        annotation (Placement(transformation(extent={{-120,70},{-80,-70}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-17},{134,17}})));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics), Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1},
            initialScale=0.06), graphics={Text(
                    extent={{110,-50},{250,-70}},
                    lineColor={0,0,0},
                    textString=DynamicSelect(" ", realString(
                      y,
                      1,
                      integer(precision)))),Text(
                    extent={{-250,170},{250,110}},
                    textString="%name",
                    lineColor={0,0,255}),Rectangle(
                    extent={{-100,100},{100,-100}},
                    lineColor={255,137,0},
                    fillColor={170,213,255},
                    borderPattern=BorderPattern.Raised,
                    fillPattern=FillPattern.Solid)}));
    end PartialRealMISO;

    partial block PartialTriggeredSet
      "Partial block to evaluate expression that is associated with the first input trigger signal (optionally with guard)"

      parameter Boolean rising=true
        "=true, if rising input triggers evaluation" annotation (
        Dialog(group="Select exactly one check box"),
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      parameter Boolean changing=false
        "=true, if changing input triggers evaluation" annotation (
        Dialog(group="Select exactly one check box"),
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      parameter Boolean falling=false
        "=true, if falling input triggers evaluation" annotation (
        Dialog(group="Select exactly one check box"),
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      parameter Boolean active=false
        "=true, if active input at sample times triggers evaluation"
        annotation (
        Dialog(group="Select exactly one check box"),
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));

      parameter Boolean use_guard=false "= true, if guard enabled" annotation (
        Dialog(group="Other options"),
        Evaluate=true,
        HideResult=true,
        choices(__Dymola_checkBox=true));
      input Boolean guard=true "y not changing, if guard=false (time varying)"
        annotation (Dialog(group="Other options", enable=use_guard));
      parameter Modelica.SIunits.Time samplePeriod=0
        "Sample period if active=true (only temporarily)"
        annotation (Dialog(group="Other options", enable=active));

    protected
      Boolean sampled annotation (HideResult=true);
    initial equation
      pre(sampled) = false;
    equation
      // Check that exactly only option is selected (radio buttons)
      assert(Modelica_StateGraph2.Blocks.BooleanFunctions.oneTrue({rising,
        changing,falling,active}),
        "Exactly one parameter of {rising, changing, falling, active} must be true");
      annotation (
        defaultComponentName="set1",
        Diagram(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=false,
            extent={{-100,-100},{300,100}},
            grid={1,1}), graphics={Rectangle(
                    extent={{-100,50},{-30,-50}},
                    lineColor={0,0,0},
                    fillColor={210,210,210},
                    fillPattern=FillPattern.Solid,
                    borderPattern=BorderPattern.Raised),Text(
                    visible=use_guard,
                    extent={{-100,-60},{300,-90}},
                    lineColor={255,0,255},
                    fillPattern=FillPattern.Solid,
                    textString="%guard"),Text(
                    extent={{-99,100},{300,60}},
                    textString="%name",
                    lineColor={0,0,255}),Line(
                    visible=rising,
                    points={{-82,-17},{-63,-17},{-63,16},{-41,16}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=changing,
                    points={{-85,-17},{-74,-17},{-74,16},{-53,16},{-53,-17},{-38,
                -17}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=falling,
                    points={{-83,16},{-63,16},{-63,-17},{-39,-17}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=active,
                    points={{-86,-17},{-37,-17}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=active,
                    points={{-74,18},{-74,-17}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=active,
                    points={{-62,18},{-62,-17}},
                    color={255,0,255},
                    smooth=Smooth.None),Line(
                    visible=active,
                    points={{-50,18},{-50,-17}},
                    color={255,0,255},
                    smooth=Smooth.None)}),
        Documentation(info="<html>

</html>"));
    end PartialTriggeredSet;

    record ActiveSetIntegerRecord
      "Record to define a \"active, integer\" pair, to associate an integer with an active flag"
      extends Modelica.Icons.Record;

      Boolean active=false "Active flag" annotation (Dialog);
      Integer expr=0 "y = if active then expr else y_default (time varying)"
        annotation (Dialog);
    end ActiveSetIntegerRecord;
  end Interfaces;
  annotation (Documentation(info="<html>
<p>
An important practical aspect of state machines is the ability to assign values and expressions to variables depending on the state of the machine. In StateGraph2, a number of graphical components have been added in this package (= Modelica_StateGraph2.Blocks)
to facilitate usage in a safe and intuitive way. Since these are just input/output blocks and will also be useful in another context, it is planned to add them to the Modelica Standard Library.
Some usage examples are given
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Actions\">here</a>
in the tutorial, e.g., the example shown in the Figure below.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Elements/MultiSwitch.png\">
</blockquote>

</html>"));
end Blocks;
