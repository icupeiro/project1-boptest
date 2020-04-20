within INFRAX.SubSystems.Controllers;
package SubControllers "Individual controller modules"

  model HP "On/Off Logic for the HPs"

    Modelica.Blocks.Logical.Hysteresis hysteresis(
      uLow=-2,
      uHigh=1,
      pre_y_start=true) "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-20,40},{0,60}})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{10,40},{30,60}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{46,44},{60,58}})));
    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Math.Add add(k2=-1)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    Modelica.Blocks.Sources.Constant setpoint(k=273.15 + 32) "HP Setpoint"
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
    Modelica.Blocks.Sources.Constant oneHP(k=1) "only one HP working"
      annotation (Placement(transformation(extent={{20,-80},{40,-60}})));
    Modelica.Blocks.Sources.Constant twoHPs(k=2) "two HPs working"
      annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
    Modelica.Blocks.Logical.Timer timer
      annotation (Placement(transformation(extent={{-34,-60},{-14,-40}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep(threshold=10*60)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{-4,-60},{16,-40}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis1(
      pre_y_start=true,
      uLow=273.15 + 29,
      uHigh=273.15 + 31)
                        "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-92,-60},{-72,-40}})));
    Modelica.Blocks.Logical.Not not2
      annotation (Placement(transformation(extent={{-64,-60},{-44,-40}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal
      annotation (Placement(transformation(extent={{86,86},{100,100}})));
    Modelica.Blocks.Logical.And and2
      annotation (Placement(transformation(extent={{2,14},{16,28}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep1(threshold=273.15 + 18)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{-34,12},{-14,32}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{68,36},{82,50}})));
    Modelica.Blocks.Logical.Or cooDemand
      annotation (Placement(transformation(extent={{36,-8},{20,8}})));
    Modelica.Blocks.Logical.Or heaDemand
      annotation (Placement(transformation(extent={{62,18},{52,28}})));
    Modelica.Blocks.Logical.Or heaDemand1
      annotation (Placement(transformation(extent={{80,14},{70,24}})));
  equation
    connect(hysteresis.y, not1.u)
      annotation (Line(points={{1,50},{10,50},{8,50}},
                                                color={255,0,255}));
    connect(not1.y, and1.u1) annotation (Line(points={{31,50},{44.6,50},{44.6,
            51}},    color={255,0,255}));
    connect(hysteresis.u, add.y)
      annotation (Line(points={{-22,50},{-30,50},{-39,50}}, color={0,0,127}));
    connect(setpoint.y, add.u2) annotation (Line(points={{-69,40},{-66,40},{-66,
            44},{-62,44}}, color={0,0,127}));
    connect(dataBus.T14, add.u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,56},{-62,56}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(oneHP.y, switch1.u3) annotation (Line(points={{41,-70},{50,-70},{50,
            -58},{58,-58}}, color={0,0,127}));
    connect(twoHPs.y, switch1.u1) annotation (Line(points={{41,-30},{50,-30},{
            50,-42},{58,-42}}, color={0,0,127}));
    connect(sleep.u, timer.y)
      annotation (Line(points={{-6,-50},{-13,-50}}, color={0,0,127}));
    connect(sleep.y, switch1.u2) annotation (Line(points={{17,-50},{17,-50},{58,
            -50}}, color={255,0,255}));
    connect(switch1.y, signalBus.HP_mod) annotation (Line(points={{81,-50},{100,
            -50},{100,0}},           color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(dataBus.T14, hysteresis1.u) annotation (Line(
        points={{-99.9,0.1},{-99.9,-50},{-94,-50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(not2.y, timer.u) annotation (Line(points={{-43,-50},{-36,-50}},
                   color={255,0,255}));
    connect(hysteresis1.y, not2.u) annotation (Line(points={{-71,-50},{-66,-50}},
                        color={255,0,255}));
    connect(booleanToReal.y, signalBus.HP_3way_signal) annotation (Line(points={{100.7,
            93},{100,93},{100,0}},              color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(sleep1.y, and2.u1) annotation (Line(points={{-13,22},{0.6,22},{0.6,
            21}}, color={255,0,255}));
    connect(sleep1.u, dataBus.T2) annotation (Line(points={{-36,22},{-66,22},{
            -66,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(and1.y, or1.u1) annotation (Line(points={{60.7,51},{60.7,46.5},{
            66.6,46.5},{66.6,43}}, color={255,0,255}));
    connect(and2.y, or1.u2) annotation (Line(points={{16.7,21},{41.35,21},{
            41.35,37.4},{66.6,37.4}}, color={255,0,255}));
    connect(or1.y, signalBus.HP_onoff) annotation (Line(points={{82.7,43},{100,
            43},{100,0}},           color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(booleanToReal.u, or1.y) annotation (Line(points={{84.6,93},{84.6,43},
            {82.7,43}}, color={255,0,255}));
    connect(cooDemand.y, and2.u2) annotation (Line(points={{19.2,0},{-4,0},{-4,
            15.4},{0.6,15.4}}, color={255,0,255}));
    connect(signalBus.TABScoolingDemand, cooDemand.u1) annotation (Line(
        points={{100,0},{100,0},{37.6,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(signalBus.AHUcoolingDemand, cooDemand.u2) annotation (Line(
        points={{100,0},{70,0},{70,-6.4},{37.6,-6.4}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(heaDemand.y, and1.u2) annotation (Line(points={{51.5,23},{48,23},{
            48,45.4},{44.6,45.4}}, color={255,0,255}));
    connect(heaDemand1.y, heaDemand.u2) annotation (Line(points={{69.5,19},{
            66.75,19},{66.75,19},{63,19}}, color={255,0,255}));
    connect(heaDemand.u1, signalBus.TABSheatingDemand) annotation (Line(points={{63,23},
            {100,23},{100,0}},                color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(heaDemand1.u1, signalBus.AHUheatingDemand) annotation (Line(points={{81,19},
            {100,19},{100,0}},                color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(heaDemand1.u2, signalBus.VAVheatingDemand) annotation (Line(points={{81,15},
            {87.5,15},{87.5,0},{100,0}},                color={255,0,255}),
        Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-60,76},{80,-64}},
            lineColor={28,108,200},
            textString="HP")}), Diagram(coordinateSystem(preserveAspectRatio=
              false)));
  end HP;

  model HP_baseline "On/Off Logic for the HPs according to baseline"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis(
      pre_y_start=true,
      uLow=0,
      uHigh=3)          "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
    Modelica.Blocks.Logical.Not not1 "heating mode conditions"
      annotation (Placement(transformation(extent={{0,40},{20,60}})));
    Modelica.Blocks.Math.Add add(k2=-1)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    Modelica.Blocks.Logical.Timer timer
      annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep(threshold=10*60)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{10,-60},{30,-40}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis1(
      pre_y_start=true,
      uLow=-1,
      uHigh=1)          "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-80,-60},{-60,-40}})));
    Modelica.Blocks.Logical.Not not2
      annotation (Placement(transformation(extent={{-50,-60},{-30,-40}})));
    Modelica.Blocks.Math.BooleanToInteger HP1 "Heat Pump signal 1"
      annotation (Placement(transformation(extent={{60,20},{80,40}})));
    Modelica.Blocks.Math.BooleanToInteger HP2 "Heat Pump signal 2"
      annotation (Placement(transformation(extent={{40,-60},{60,-40}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep1(threshold=273.15 + 18)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
    Modelica.Blocks.Logical.And actCooMod "active cooling mode conditions"
      annotation (Placement(transformation(extent={{-20,0},{0,20}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{32,20},{52,40}})));
  //  Modelica.Blocks.Sources.RealExpression hpMod(y=HP1.y + HP2.y)
  //    "fake modulation level of the GSHP, used for control logic of the borefield pump"
  //    annotation (Placement(transformation(extent={{60,50},{80,70}})));
    IDEAS.Utilities.Math.Max max(nin=3) "maximum of the required setpoints"
      annotation (Placement(transformation(extent={{-14,70},{-34,90}})));
    OverwriteInteger overwriteInteger(
      description="HP1 pump signal",
      min=0,
      max=1,
      unit="1") annotation (Placement(transformation(extent={{88,26},{96,34}})));
    OverwriteInteger overwriteInteger1(
      description="HP2 pump signal",
      min=0,
      max=1,
      unit="1")
      annotation (Placement(transformation(extent={{76,-54},{84,-46}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
          "HP set-point", u(
        min=293.15,
        max=323.15,
        unit="K"))
      annotation (Placement(transformation(extent={{-48,70},{-68,90}})));
  equation
    connect(hysteresis.y,not1. u)
      annotation (Line(points={{-9,50},{-2,50}},color={255,0,255}));
    connect(hysteresis.u,add. y)
      annotation (Line(points={{-32,50},{-39,50}},          color={0,0,127}));
    connect(dataBus.T14,add. u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,56},{-62,56}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(sleep.u,timer. y)
      annotation (Line(points={{8,-50},{1,-50}},    color={0,0,127}));
    connect(add.y, hysteresis1.u) annotation (Line(points={{-39,50},{-36,50},{
            -36,32},{-86,32},{-86,-50},{-82,-50}}, color={0,0,127}));
    connect(hysteresis1.y, not2.u)
      annotation (Line(points={{-59,-50},{-52,-50}}, color={255,0,255}));
    connect(not2.y, timer.u)
      annotation (Line(points={{-29,-50},{-22,-50}}, color={255,0,255}));
    connect(sleep.y, HP2.u)
      annotation (Line(points={{31,-50},{38,-50}}, color={255,0,255}));
    connect(dataBus.T2, sleep1.u) annotation (Line(
        points={{-99.9,0.1},{-100,0.1},{-100,10},{-62,10}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(sleep1.y, actCooMod.u1)
      annotation (Line(points={{-39,10},{-22,10}}, color={255,0,255}));
    connect(signalBus.coolMode, actCooMod.u2) annotation (Line(
        points={{100,0},{100,-12},{-32,-12},{-32,2},{-22,2}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(actCooMod.y, or1.u2) annotation (Line(points={{1,10},{24,10},{24,22},{
            30,22}}, color={255,0,255}));
    connect(not1.y, or1.u1) annotation (Line(points={{21,50},{24,50},{24,30},{
            30,30}}, color={255,0,255}));
    connect(or1.y, HP1.u)
      annotation (Line(points={{53,30},{58,30}}, color={255,0,255}));
        //  connect(hpMod.y, signalBus.HP_mod)
        // annotation (Line(points={{81,60},{100,60},{
    //        100,0}}, color={0,0,127}), Text(
      //  string="%second",
    //    index=1,
    //    extent={{6,3},{6,3}},
    //    horizontalAlignment=TextAlignment.Left));
    connect(max.u[2], signalBus.T_AHU_HP) annotation (Line(points={{-12,80},{100,80},{100,
            0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(max.u[3], signalBus.T_VAV) annotation (Line(points={{-12,81.3333},{
            100,81.3333},{100,0}},
                 color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(max.u[1], signalBus.T_TABS) annotation (Line(points={{-12,78.6667},
            {100,78.6667},{100,0}},
                 color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(HP1.y, overwriteInteger.u)
      annotation (Line(points={{81,30},{87.2,30}}, color={255,127,0}));
    connect(overwriteInteger.y, signalBus.HP1_signal) annotation (Line(points={
            {96.8,30},{100,30},{100,0},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(HP2.y, overwriteInteger1.u)
      annotation (Line(points={{61,-50},{75.2,-50}}, color={255,127,0}));
    connect(overwriteInteger1.y, signalBus.HP2_signal) annotation (Line(points=
            {{84.8,-50},{100,-50},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(max.y, overwrite.u)
      annotation (Line(points={{-35,80},{-46,80}}, color={0,0,127}));
    connect(overwrite.y, add.u2) annotation (Line(points={{-69,80},{-80,80},{
            -80,44},{-62,44}}, color={0,0,127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="HP")}), Diagram(coordinateSystem(preserveAspectRatio=
              false)));
  end HP_baseline;

  model HP_onlyTABS "On/Off Logic for the HPs"

    Modelica.Blocks.Logical.Hysteresis hysteresis(
      uLow=-2,
      uHigh=1,
      pre_y_start=true) "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-20,40},{0,60}})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{10,40},{30,60}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{46,44},{60,58}})));
    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Math.Add add(k2=-1)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    Modelica.Blocks.Sources.Constant setpoint(k=273.15 + 32) "HP Setpoint"
      annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
    Modelica.Blocks.Sources.Constant oneHP(k=1) "only one HP working"
      annotation (Placement(transformation(extent={{20,-80},{40,-60}})));
    Modelica.Blocks.Sources.Constant twoHPs(k=2) "two HPs working"
      annotation (Placement(transformation(extent={{20,-40},{40,-20}})));
    Modelica.Blocks.Logical.Timer timer
      annotation (Placement(transformation(extent={{-34,-60},{-14,-40}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep(threshold=10*60)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{-4,-60},{16,-40}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis1(
      pre_y_start=true,
      uLow=273.15 + 29,
      uHigh=273.15 + 31)
                        "hysteresis logic for HPs"
      annotation (Placement(transformation(extent={{-92,-60},{-72,-40}})));
    Modelica.Blocks.Logical.Not not2
      annotation (Placement(transformation(extent={{-64,-60},{-44,-40}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal
      annotation (Placement(transformation(extent={{86,86},{100,100}})));
    Modelica.Blocks.Logical.And and2
      annotation (Placement(transformation(extent={{2,14},{16,28}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep1(threshold=273.15 + 18)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{-34,12},{-14,32}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{68,36},{82,50}})));
  equation
    connect(hysteresis.y, not1.u)
      annotation (Line(points={{1,50},{10,50},{8,50}},
                                                color={255,0,255}));
    connect(not1.y, and1.u1) annotation (Line(points={{31,50},{44.6,50},{44.6,
            51}},    color={255,0,255}));
    connect(hysteresis.u, add.y)
      annotation (Line(points={{-22,50},{-30,50},{-39,50}}, color={0,0,127}));
    connect(setpoint.y, add.u2) annotation (Line(points={{-69,40},{-66,40},{-66,
            44},{-62,44}}, color={0,0,127}));
    connect(dataBus.T14, add.u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,56},{-62,56}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(oneHP.y, switch1.u3) annotation (Line(points={{41,-70},{50,-70},{50,
            -58},{58,-58}}, color={0,0,127}));
    connect(twoHPs.y, switch1.u1) annotation (Line(points={{41,-30},{50,-30},{
            50,-42},{58,-42}}, color={0,0,127}));
    connect(sleep.u, timer.y)
      annotation (Line(points={{-6,-50},{-13,-50}}, color={0,0,127}));
    connect(sleep.y, switch1.u2) annotation (Line(points={{17,-50},{17,-50},{58,
            -50}}, color={255,0,255}));
    connect(switch1.y, signalBus.HP_mod) annotation (Line(points={{81,-50},{
            100.1,-50},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(dataBus.T14, hysteresis1.u) annotation (Line(
        points={{-99.9,0.1},{-99.9,-50},{-94,-50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(not2.y, timer.u) annotation (Line(points={{-43,-50},{-36,-50}},
                   color={255,0,255}));
    connect(hysteresis1.y, not2.u) annotation (Line(points={{-71,-50},{-66,-50}},
                        color={255,0,255}));
    connect(booleanToReal.y, signalBus.HP_3way_signal) annotation (Line(points={{100.7,
            93},{100.1,93},{100.1,0.1}},        color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(sleep1.y, and2.u1) annotation (Line(points={{-13,22},{0.6,22},{0.6,
            21}}, color={255,0,255}));
    connect(sleep1.u, dataBus.T2) annotation (Line(points={{-36,22},{-66,22},{
            -66,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(and1.y, or1.u1) annotation (Line(points={{60.7,51},{60.7,46.5},{
            66.6,46.5},{66.6,43}}, color={255,0,255}));
    connect(and2.y, or1.u2) annotation (Line(points={{16.7,21},{41.35,21},{
            41.35,37.4},{66.6,37.4}}, color={255,0,255}));
    connect(or1.y, signalBus.HP_onoff) annotation (Line(points={{82.7,43},{
            100.1,43},{100.1,0.1}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(booleanToReal.u, or1.y) annotation (Line(points={{84.6,93},{84.6,43},
            {82.7,43}}, color={255,0,255}));
    connect(and1.u2, signalBus.TABSheatingDemand) annotation (Line(points={{
            44.6,45.4},{44.6,22},{100.1,22},{100.1,0.1}}, color={255,0,255}),
        Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(and2.u2, signalBus.TABScoolingDemand) annotation (Line(points={{0.6,
            15.4},{0.6,0.1},{100.1,0.1}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="HP")}), Diagram(coordinateSystem(preserveAspectRatio=
              false)));
  end HP_onlyTABS;

  model HP_ByPass "On/Off Logic for the HPs according to baseline"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
  //  Modelica.Blocks.Sources.RealExpression hpMod(y=HP1.y + HP2.y)
  //    "fake modulation level of the GSHP, used for control logic of the borefield pump"
  //    annotation (Placement(transformation(extent={{60,50},{80,70}})));
    Modelica.Blocks.Math.IntegerToBoolean HP2_boolean(threshold=1)
      annotation (Placement(transformation(extent={{-92,64},{-80,76}})));
    Modelica.Blocks.Math.IntegerToBoolean HP1_boolean(threshold=1)
      annotation (Placement(transformation(extent={{-92,64},{-80,52}})));
    Modelica.Blocks.MathBoolean.Not HPValByp
      annotation (Placement(transformation(extent={{-34,32},{-26,40}})));
    Modelica.Blocks.Logical.Or HPVal
      annotation (Placement(transformation(extent={{-56,14},{-44,26}})));
  equation
        //  connect(hpMod.y, signalBus.HP_mod)
        // annotation (Line(points={{81,60},{100,60},{
    //        100,0}}, color={0,0,127}), Text(
      //  string="%second",
    //    index=1,
    //    extent={{6,3},{6,3}},
    //    horizontalAlignment=TextAlignment.Left));
    connect(HPVal.y, HPValByp.u) annotation (Line(points={{-43.4,20},{-40,20},{
            -40,36},{-35.6,36}}, color={255,0,255}));
    connect(signalBus.HP1_signal, HP1_boolean.u) annotation (Line(
        points={{100,0},{100,100},{-100,100},{-100,58},{-93.2,58}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(signalBus.HP2_signal, HP2_boolean.u) annotation (Line(
        points={{100,0},{100,100},{-100,100},{-100,70},{-93.2,70}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(HP1_boolean.y, HPVal.u2) annotation (Line(points={{-79.4,58},{-64,
            58},{-64,15.2},{-57.2,15.2}}, color={255,0,255}));
    connect(HP2_boolean.y, HPVal.u1) annotation (Line(points={{-79.4,70},{-60,
            70},{-60,20},{-57.2,20}}, color={255,0,255}));
    connect(HPValByp.y, signalBus.HPByPas) annotation (Line(points={{-25.2,36},
            {100,36},{100,0}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(HPVal.y, signalBus.HPVal) annotation (Line(points={{-43.4,20},{100,
            20},{100,0}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(HP1_boolean.y, signalBus.HP1Val) annotation (Line(points={{-79.4,58},
            {100,58},{100,0}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(HP2_boolean.y, signalBus.HP2Val) annotation (Line(points={{-79.4,70},
            {100,70},{100,0}}, color={255,0,255}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="ByPass")}),
                                Diagram(coordinateSystem(preserveAspectRatio=
              false)));
  end HP_ByPass;

  model HP_set
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    HP_baseline hpCon "Control logic of the GSHP"
      annotation (Placement(transformation(extent={{-10,60},{10,80}})));
    Pumps.P1 p1Con "Control logic of pump 1"
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Pumps.P3 p3Con "Control logic of pump 3"
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    HP_ByPass hP_ByPass
      annotation (Placement(transformation(extent={{-10,-64},{10,-44}})));
  equation
    connect(hpCon.dataBus, dataBus) annotation (Line(
        points={{-10,70},{-100,70},{-100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(hpCon.signalBus, signalBus) annotation (Line(
        points={{10.2,70},{100,70},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(p1Con.dataBus, dataBus) annotation (Line(
        points={{-10,30},{-100,30},{-100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(p1Con.signalBus, signalBus) annotation (Line(
        points={{10.2,30},{100,30},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(p3Con.dataBus, dataBus) annotation (Line(
        points={{-10,-10},{-100,-10},{-100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(p3Con.signalBus, signalBus) annotation (Line(
        points={{10.2,-10},{100,-10},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(hP_ByPass.signalBus, signalBus) annotation (Line(
        points={{10.2,-54},{100,-54},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end HP_set;

  model AHU_baseline "Controls of AHU loop for baseline"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},
          {IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,180},{-80,200}})));
    Modelica.Blocks.Tables.CombiTable1D curve_AHU(table=[273.15 + 0,273.15 + 20;
          273.15 + 10,273.15 + 16])
                              "Infrax AHU heating/cooling curve"
      annotation (Placement(transformation(extent={{-10,166},{10,186}})));
    Modelica.Blocks.Nonlinear.Limiter limiter(uMax=273.15 + 23, uMin=273.15 + 15)
      annotation (Placement(transformation(extent={{20,166},{40,186}})));
    Modelica.Blocks.Sources.RealExpression bouT(y=sim.Te) "ambient temperature"
      annotation (Placement(transformation(extent={{-40,166},{-20,186}})));
    Modelica.Blocks.Logical.LessThreshold thermalWheelByPass(threshold=2)
      "thermal wheel by pass switch"
      annotation (Placement(transformation(extent={{16,128},{36,148}})));
    Modelica.Blocks.Math.Feedback feedback
      "temperature difference between AHU supply and extract"
                                           annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=0,
          origin={-32,138})));
    Modelica.Blocks.Math.Abs abs
      annotation (Placement(transformation(extent={{-14,128},{6,148}})));
    IDEAS.Controls.Continuous.LimPID con3wayCoo(
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      Td=0,
      k=5,
      Ti(displayUnit="s") = 40,
      reverseAction=true) "Controller for 3-way valve of AHU cooling coil"
      annotation (Placement(transformation(extent={{-10,38},{10,58}})));
    Modelica.Blocks.Tables.CombiTable1D curve_P13(table=[0,0.12; 0.8,0.30; 1,1])
      "pump 13 modulating curve"
      annotation (Placement(transformation(extent={{-38,-2},{-18,18}})));
    Modelica.Blocks.Math.Gain P13_nom(k=14.5*9804.139432)
      "nominal pressure rise of P13"
      annotation (Placement(transformation(extent={{0,-2},{20,18}})));
    IDEAS.Controls.Continuous.LimPID con3wayHea(
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      Td=0,
      Ti(displayUnit="s") = 40,
      k=2,
      reverseAction=false) "Controller for 3-way valve of AHU heating coil"
      annotation (Placement(transformation(extent={{-8,-80},{12,-60}})));
    Modelica.Blocks.Math.BooleanToInteger P0809_signal
      "pump 08 and 09 signal, nominal conditions if heating is activated"
      annotation (Placement(transformation(extent={{20,-124},{40,-104}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold
      annotation (Placement(transformation(extent={{-30,-124},{-10,-104}})));
    Modelica.Blocks.Logical.Timer timer
      annotation (Placement(transformation(extent={{-8,-42},{12,-22}})));
    Modelica.Blocks.Logical.GreaterThreshold sleep(threshold=5*60)
      "triggers when 10 minutes passes"
      annotation (Placement(transformation(extent={{20,-42},{40,-22}})));
    Modelica.Blocks.Logical.LessEqualThreshold
                                          lessEqualThreshold
      annotation (Placement(transformation(extent={{-40,-42},{-20,-22}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{52,10},{74,-12}})));
    Modelica.Blocks.Sources.Constant off(k=0)
      annotation (Placement(transformation(extent={{24,-6},{32,2}})));
    Modelica.Blocks.Math.BooleanToInteger P04_signal "pump 04 signal"
      annotation (Placement(transformation(extent={{68,-68},{88,-48}})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{46,-38},{58,-26}})));
    Modelica.Blocks.Sources.RealExpression
                                     supplySP(y=if ((clock.hour >= 6 and clock.hour
           <= 19) and (clock.weekDay) < 6) or (clock.weekDay < 2 and (clock.hour
           >= 5 and clock.hour <= 6)) or nightVentilation == true then 180
           else 0) "Supply fan pressure difference set-point"
      annotation (Placement(transformation(extent={{-10,-156},{12,-136}})));
    Modelica.Blocks.Sources.RealExpression
                                     extractSP(y=if ((clock.hour >= 6 and clock.hour
           <= 19) and (clock.weekDay) < 6) or (clock.weekDay < 2 and (clock.hour
           >= 5 and clock.hour <= 6)) or nightVentilation == true then 125
           else 0)
      "Extract fan pressure difference set-point"
      annotation (Placement(transformation(extent={{-10,-186},{10,-164}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{-100,144},{-80,164}})));
    Modelica.Blocks.Sources.IntegerExpression P08P09signal(y=if (clock.hour >=
          6 and clock.hour <= 19) and (clock.weekDay) < 6 or (clock.weekDay < 2
           and (clock.hour >= 5 and clock.hour <= 6)) then P0809_signal.y else
          0)
      "Pumps 08 and 09 signal"
      annotation (Placement(transformation(extent={{20,-100},{42,-80}})));
    Modelica.Blocks.Sources.IntegerExpression P04signal(y=if (clock.hour >= 6
           and clock.hour <= 19) and (clock.weekDay) < 6 or (clock.weekDay < 2
           and (clock.hour >= 5 and clock.hour <= 6)) then P04_signal.y else 0)
      "pump 04 signal"
      annotation (Placement(transformation(extent={{66,-48},{88,-28}})));
    Modelica.Blocks.Sources.RealExpression
                                     P13signal(y=if (clock.hour >= 6 and clock.hour
           <= 19) and (clock.weekDay) < 6 or (clock.weekDay < 2 and (clock.hour
           >= 5 and clock.hour <= 6)) then switch1.y else 0)
      "Pump 13 signal"
      annotation (Placement(transformation(extent={{52,8},{74,28}})));
    Modelica.Blocks.Tables.CombiTable1D curve_HP(table=[273.15 + 15,273.15 + 24;
          273.15 + 23,273.15 + 32])
      "HP setpoint depending on AHU required temperature"
      annotation (Placement(transformation(extent={{78,166},{98,186}})));
    Modelica.Blocks.Logical.Switch switch2
      annotation (Placement(transformation(extent={{16,94},{36,74}})));
    Modelica.Blocks.Sources.Constant bypass(k=1)
      "signal for by-passing the thermal wheel"
      annotation (Placement(transformation(extent={{-42,70},{-34,78}})));
    IDEAS.Controls.Continuous.LimPID con3wayTW(
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      Td=0,
      k=2,
      Ti(displayUnit="s") = 40,
      reverseAction=false)
      "Controller for 3-way valve of AHU themal wheel"
      annotation (Placement(transformation(extent={{-26,100},{-6,120}})));
    Modelica.Blocks.Math.Feedback feedback1
      "temperature difference between AHU supply and extract"
                                           annotation (Placement(transformation(
          extent={{-10,10},{10,-10}},
          rotation=0,
          origin={-56,90})));
    Modelica.Blocks.Math.Abs abs1
      annotation (Placement(transformation(extent={{-34,84},{-22,96}})));
    Modelica.Blocks.Sources.Constant diff_sp(k=0)
      "setpoint both for heating and cooling"
      annotation (Placement(transformation(extent={{-48,104},{-36,116}})));
    Modelica.Blocks.Interfaces.BooleanInput nightVentilation
      "night ventilation active"
      annotation (Placement(transformation(extent={{-120,-170},{-80,-130}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{36,98},{16,118}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
          "AHU supply temperature set-point", u(
        min=288.15,
        max=297.15,
        unit="K"))
      annotation (Placement(transformation(extent={{48,170},{60,182}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite1(description=
          "AHU recovery by-pass", u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{58,78},{70,90}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite2(description=
          "AHU supply differential pressure", u(
        min=0,
        max=300,
        unit="Pa"))
      annotation (Placement(transformation(extent={{52,-152},{64,-140}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite3(description=
          "AHU supply differential pressure", u(
        min=0,
        max=300,
        unit="Pa"))
      annotation (Placement(transformation(extent={{62,-180},{74,-168}})));
  equation

      connect(con3wayCoo.y, signalBus.CooCoi_3way_signal) annotation (Line(points={{11,48},
            {100,48},{100,0}},        color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
      connect(con3wayHea.y, signalBus.HeaCoi_3way_signal) annotation (Line(points={{13,-70},
            {100,-70},{100,0}},         color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));

    connect(curve_AHU.y[1], limiter.u)
      annotation (Line(points={{11,176},{18,176}}, color={0,0,127}));
    connect(bouT.y, curve_AHU.u[1])
      annotation (Line(points={{-19,176},{-12,176}}, color={0,0,127}));
    connect(dataBus.TAirSupplyAHU, feedback.u1) annotation (Line(
        points={{-99.9,0.1},{-100,0.1},{-100,138},{-40,138}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TAirExtractAHU, feedback.u2) annotation (Line(
        points={{-99.9,0.1},{-99.9,52},{-100,52},{-100,126},{-32,126},{-32,130}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(feedback.y, abs.u)
      annotation (Line(points={{-23,138},{-16,138}}, color={0,0,127}));
    connect(abs.y, thermalWheelByPass.u)
      annotation (Line(points={{7,138},{14,138}},  color={0,0,127}));
    connect(dataBus.TAirSupplyAHU, con3wayCoo.u_m) annotation (Line(
        points={{-99.9,0.1},{-100,0.1},{-100,28},{0,28},{0,36}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(con3wayCoo.y, curve_P13.u[1]) annotation (Line(points={{11,48},{20,
            48},{20,24},{-46,24},{-46,8},{-40,8}},
                                                 color={0,0,127}));
    connect(P13_nom.u, curve_P13.y[1])
      annotation (Line(points={{-2,8},{-17,8}},   color={0,0,127}));
    connect(con3wayHea.u_s, con3wayCoo.u_s) annotation (Line(points={{-10,-70},
            {-72,-70},{-72,48},{-12,48}},
                                     color={0,0,127}));
    connect(dataBus.TAirSupplyAHU, con3wayHea.u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-54},{-100,-54},{-100,-92},{2,-92},{2,-82}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(con3wayHea.y, greaterThreshold.u) annotation (Line(points={{13,-70},
            {18,-70},{18,-96},{-40,-96},{-40,-114},{-32,-114}},
                                                          color={0,0,127}));
    connect(greaterThreshold.y, P0809_signal.u)
      annotation (Line(points={{-9,-114},{18,-114}},
                                                   color={255,0,255}));
    connect(sleep.u,timer. y)
      annotation (Line(points={{18,-32},{13,-32}},  color={0,0,127}));
    connect(con3wayCoo.y, lessEqualThreshold.u) annotation (Line(points={{11,48},
            {20,48},{20,24},{-46,24},{-46,-32},{-42,-32}}, color={0,0,127}));
    connect(lessEqualThreshold.y, timer.u)
      annotation (Line(points={{-19,-32},{-10,-32}}, color={255,0,255}));
    connect(sleep.y, switch1.u2) annotation (Line(points={{41,-32},{44,-32},{44,
            -1},{49.8,-1}},
                        color={255,0,255}));
    connect(switch1.u3, P13_nom.y) annotation (Line(points={{49.8,7.8},{38,7.8},
            {38,8},{21,8}},   color={0,0,127}));
    connect(off.y, switch1.u1) annotation (Line(points={{32.4,-2},{40,-2},{40,
            -9.8},{49.8,-9.8}},
                         color={0,0,127}));
    connect(sleep.y, not1.u)
      annotation (Line(points={{41,-32},{44.8,-32}}, color={255,0,255}));
    connect(not1.y, P04_signal.u) annotation (Line(points={{58.6,-32},{62,-32},
            {62,-58},{66,-58}},
                            color={255,0,255}));
    connect(P08P09signal.y, signalBus.P08_signal) annotation (Line(points={{43.1,
            -90},{100,-90},{100,0}},
                                color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(P08P09signal.y, signalBus.P09_signal) annotation (Line(points={{43.1,
            -90},{100,-90},{100,0}},
                                color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(P04signal.y, signalBus.P04_signal) annotation (Line(points={{89.1,
            -38},{94,-38},{94,0},{100,0}},
                                color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(P13signal.y, signalBus.P13_signal) annotation (Line(points={{75.1,18},
            {100,18},{100,0}},     color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(curve_HP.y[1], signalBus.T_AHU_HP) annotation (Line(points={{99,176},
            {100,176},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(bypass.y, switch2.u1) annotation (Line(points={{-33.6,74},{-10,74},
            {-10,76},{14,76}}, color={0,0,127}));
    connect(con3wayTW.y, switch2.u3) annotation (Line(points={{-5,110},{4,110},
            {4,92},{14,92}}, color={0,0,127}));
    connect(con3wayTW.u_s, diff_sp.y)
      annotation (Line(points={{-28,110},{-35.4,110}}, color={0,0,127}));
    connect(feedback1.y, abs1.u)
      annotation (Line(points={{-47,90},{-35.2,90}}, color={0,0,127}));
    connect(abs1.y, con3wayTW.u_m) annotation (Line(points={{-21.4,90},{-16,90},
            {-16,98}}, color={0,0,127}));
    connect(feedback1.u2, con3wayCoo.u_s) annotation (Line(points={{-56,98},{
            -56,110},{-72,110},{-72,48},{-12,48}}, color={0,0,127}));
    connect(dataBus.TAirSupplyAHU, feedback1.u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,90},{-64,90}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(thermalWheelByPass.y, or1.u1) annotation (Line(points={{37,138},{50,
            138},{50,108},{38,108}}, color={255,0,255}));
    connect(nightVentilation, or1.u2) annotation (Line(points={{-100,-150},{-66,
            -150},{-66,-160},{78,-160},{78,100},{38,100}}, color={255,0,255}));
    connect(or1.y, switch2.u2) annotation (Line(points={{15,108},{-2,108},{-2,
            84},{14,84}}, color={255,0,255}));
    connect(limiter.y, overwrite.u)
      annotation (Line(points={{41,176},{46.8,176}}, color={0,0,127}));
    connect(overwrite.y, curve_HP.u[1])
      annotation (Line(points={{60.6,176},{76,176}}, color={0,0,127}));
    connect(overwrite.y, con3wayCoo.u_s) annotation (Line(points={{60.6,176},{
            66,176},{66,202},{-72,202},{-72,48},{-12,48}}, color={0,0,127}));
    connect(overwrite.y, signalBus.T_AHU) annotation (Line(points={{60.6,176},{
            66,176},{66,142},{100,142},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(switch2.y, overwrite1.u)
      annotation (Line(points={{37,84},{56.8,84}}, color={0,0,127}));
    connect(overwrite1.y, signalBus.TW_bypass) annotation (Line(points={{70.6,
            84},{100,84},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(supplySP.y, overwrite2.u)
      annotation (Line(points={{13.1,-146},{50.8,-146}}, color={0,0,127}));
    connect(overwrite2.y, signalBus.AHUsupply) annotation (Line(points={{64.6,
            -146},{100,-146},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(overwrite3.u, extractSP.y) annotation (Line(points={{60.8,-174},{36,
            -174},{36,-175},{11,-175}}, color={0,0,127}));
    connect(overwrite3.y, signalBus.AHUextract) annotation (Line(points={{74.6,
            -174},{100,-174},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
              -200},{100,200}}),                                  graphics={
            Rectangle(
            extent={{-100,180},{100,-180}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="AHU")}),Diagram(coordinateSystem(preserveAspectRatio=
              false, extent={{-100,-200},{100,200}}), graphics={
          Rectangle(extent={{-52,194},{44,152}}, lineColor={28,108,200}),
          Text(
            extent={{-48,194},{-20,186}},
            lineColor={28,108,200},
            textString="AHU setpoint"),
          Rectangle(extent={{-52,152},{44,68}}, lineColor={28,108,200}),
          Text(
            extent={{-48,154},{-4,148}},
            lineColor={28,108,200},
            textString="Thermal wheel bypass"),
          Rectangle(extent={{-52,68},{44,-48}}, lineColor={28,108,200}),
          Text(
            extent={{-52,68},{-18,62}},
            lineColor={28,108,200},
            textString="Cooling coil"),
          Text(
            extent={{-52,-48},{-18,-54}},
            lineColor={28,108,200},
            textString="Heating coil"),
          Rectangle(extent={{-52,-48},{44,-132}}, lineColor={28,108,200}),
          Rectangle(extent={{-52,-132},{44,-192}}, lineColor={28,108,200}),
          Text(
            extent={{-52,-132},{-18,-138}},
            lineColor={28,108,200},
            textString="AHU fans")}));
  end AHU_baseline;

  model VAV_HeaCoi "controllers related to vav and heating coils"
    import INFRAX;

    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
          IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    INFRAX.Data.Parameters.Air air
      annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-40},{-80,0}}),
                         iconTransformation(extent={{-110,-10},{-90,10}})));
    VAV_ducts_switch vAV_ducts_switch(air=air) annotation (Placement(
          transformation(rotation=0, extent={{-60,40},{-40,60}})));
    Buildings.Controls.OBC.CDL.Conversions.BooleanToInteger booToInt
      "fixme: need time delay of 5mins when switching off"
      annotation (Placement(transformation(extent={{0,40},{20,60}})));
    Modelica.Blocks.MathBoolean.Or or1(nu=21)
      annotation (Placement(transformation(extent={{-26,44},{-14,56}})));
    Modelica.Blocks.Interfaces.IntegerOutput p06 "signal for pump6 heating coils"
      annotation (Placement(transformation(extent={{100,40},{120,60}})));
    Buildings.Controls.Continuous.LimPID[15] conDamper(
      reverseAction=true,
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      Td=0,
      each k=0.5,
      each Ti(displayUnit="s") = 100,
      yMax=1,
      yMin=0)                         "Controller for VAV damper"
      annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
    Modelica.Blocks.Logical.Switch[15] switch1
      annotation (Placement(transformation(extent={{34,-8},{54,12}})));
    Modelica.Blocks.Logical.Switch[15] switch2
      annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
    Modelica.Blocks.Sources.Constant off(k=0)
      annotation (Placement(transformation(extent={{-80,-44},{-68,-32}})));
    Modelica.Blocks.Routing.Replicator replicator1(nout=15)
      annotation (Placement(transformation(extent={{-60,-44},{-48,-32}})));
    Modelica.Blocks.Interfaces.RealOutput[15] damper_supply
      annotation (Placement(transformation(extent={{100,-8},{120,12}})));
    Modelica.Blocks.Sources.Constant[15] heaDamper(k=air.heaDamper)
      annotation (Placement(transformation(extent={{-60,-26},{-48,-14}})));
    Buildings.Controls.Continuous.LimPID[21] conHeaCoi(
      initType=Modelica.Blocks.Types.InitPID.InitialState,
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      Td=0,
      k=air.k,
      Ti=air.Ti,
      reverseAction=false) "Controller for heating coils"
      annotation (Placement(transformation(extent={{20,-56},{40,-36}})));
    Modelica.Blocks.Logical.Switch[21] switch3
      annotation (Placement(transformation(extent={{60,-80},{80,-60}})));
    Modelica.Blocks.Routing.Replicator replicator2(nout=21)
      annotation (Placement(transformation(extent={{-60,-84},{-48,-72}})));
    Modelica.Blocks.Interfaces.RealOutput[21] heaCoi
      annotation (Placement(transformation(extent={{100,-62},{120,-42}})));
    Modelica.Blocks.Interfaces.BooleanOutput Hea "heating coil active"
      annotation (Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=270,
          origin={2,-110})));
    Modelica.Blocks.Interfaces.RealOutput[15] damper_extract
      annotation (Placement(transformation(extent={{100,-34},{120,-14}})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=if clock.hour >
          4 and clock.hour < 6 and clock.day < 6 then true else false)
      annotation (Placement(transformation(extent={{-66,88},{-46,108}})));
    Weather.Clock clock(year=2018)
      annotation (Placement(transformation(extent={{88,88},{98,98}})));
    Modelica.Blocks.Logical.Switch[15] switch4
      annotation (Placement(transformation(extent={{34,20},{54,40}})));
    Modelica.Blocks.Sources.Constant[15] max(k=1)
      annotation (Placement(transformation(extent={{8,80},{20,92}})));
    Buildings.Utilities.Math.BooleanReplicator booRep(nout=15)
      annotation (Placement(transformation(extent={{22,60},{30,68}})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression1(y=if clock.day >
          5 or clock.hour < 5 or clock.hour > 18 then false else true)
      annotation (Placement(transformation(extent={{-100,58},{-80,78}})));
    Buildings.Utilities.Math.BooleanReplicator booRep1(nout=15)
      annotation (Placement(transformation(extent={{6,26},{14,34}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{-30,68},{-10,88}})));
    Modelica.Blocks.Logical.Switch[15] switch5
      annotation (Placement(transformation(extent={{40,54},{60,74}})));
    Modelica.Blocks.Interfaces.BooleanInput NightVentilation
      annotation (Placement(transformation(extent={{-108,-84},{-92,-68}})));
    Modelica.Blocks.Logical.Or or2
      annotation (Placement(transformation(extent={{-4,94},{4,102}})));
  equation


    connect(dataBus,vAV_ducts_switch.dataBus)
                                         annotation (Line(
        points={{-100,-20},{-80,-20},{-80,46},{-60,46}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));

    connect(vAV_ducts_switch.HeaCoi, or1.u[1:21]) annotation (Line(points={{-39,52},
            {-32,52},{-32,46},{-26,46}}, color={255,0,255}));
    connect(booToInt.y, p06)
      annotation (Line(points={{21,50},{110,50}},          color={255,127,0}));



    connect(vAV_ducts_switch.damper, switch1.u2) annotation (Line(points={{-39,45.8},
            {-38,45.8},{-38,32},{-8,32},{-8,2},{32,2}}, color={255,0,255}));
    connect(conDamper.y, switch1.u1)
      annotation (Line(points={{-39,10},{32,10}}, color={0,0,127}));
    connect(switch2.y, switch1.u3) annotation (Line(points={{1,-30},{6,-30},{6,-6},
            {32,-6}}, color={0,0,127}));
    connect(switch2[1].u2, vAV_ducts_switch.HeaCoi[1]) annotation (Line(points={{-22,-30},
            {-34,-30},{-34,52},{-36,52},{-36,51.0476},{-39,51.0476}},      color={
            255,0,255}));
    connect(switch2[2].u2, vAV_ducts_switch.HeaCoi[2]);
    connect(switch2[3].u2, vAV_ducts_switch.HeaCoi[3]);
    connect(switch2[4].u2, vAV_ducts_switch.HeaCoi[4]);
    connect(switch2[5].u2, vAV_ducts_switch.HeaCoi[5]);
    connect(switch2[6].u2, vAV_ducts_switch.HeaCoi[6]);
    connect(switch2[7].u2, vAV_ducts_switch.HeaCoi[7]);
    connect(switch2[8].u2, vAV_ducts_switch.HeaCoi[8]);
    connect(switch2[9].u2, vAV_ducts_switch.HeaCoi[9]);
    connect(switch2[10].u2, vAV_ducts_switch.HeaCoi[10]);
    connect(switch2[11].u2, vAV_ducts_switch.HeaCoi[11]);
    connect(switch2[12].u2, vAV_ducts_switch.HeaCoi[12]);
    connect(switch2[13].u2, vAV_ducts_switch.HeaCoi[13]);
    connect(switch2[14].u2, vAV_ducts_switch.HeaCoi[14]);
    connect(switch2[15].u2, vAV_ducts_switch.HeaCoi[15]);
    connect(off.y, replicator1.u) annotation (Line(points={{-67.4,-38},{-67.4,-38},
            {-61.2,-38}}, color={0,0,127}));
    connect(replicator1.y, switch2.u3) annotation (Line(points={{-47.4,-38},{-47.4,
            -38},{-22,-38}}, color={0,0,127}));
    connect(heaDamper.y, switch2.u1) annotation (Line(points={{-47.4,-20},{-32,-20},
            {-32,-22},{-22,-22}}, color={0,0,127}));

    connect(vAV_ducts_switch.SetpointZones, conDamper[1].u_s) annotation (Line(
          points={{-39,41.6},{-39,26},{-72,26},{-72,10},{-62,10}}, color={0,0,127}));
    connect(vAV_ducts_switch.SetpointZones, conDamper[2].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[3].u_s);
    connect(vAV_ducts_switch.Tair_Supply[5], conDamper[4].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[5].u_s);
    connect(vAV_ducts_switch.Tair_Supply[7], conDamper[6].u_s);
    connect(vAV_ducts_switch.Tair_Supply[8], conDamper[7].u_s);
    connect(vAV_ducts_switch.Tair_Supply[9], conDamper[8].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[9].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[10].u_s);
    connect(vAV_ducts_switch.Tair_Supply[12], conDamper[11].u_s);
    connect(vAV_ducts_switch.Tair_Supply[13], conDamper[12].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[13].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[14].u_s);
    connect(vAV_ducts_switch.SetpointZones, conDamper[15].u_s);

    connect(conDamper[1].u_m, dataBus.T3rdFlr_SZ) annotation (Line(points={{-50,-2},
            {-50,-2},{-50,-19.9},{-99.9,-19.9}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(conDamper[2].u_m, dataBus.T3rdFlr_CPR);
    connect(conDamper[3].u_m, dataBus.T3rdFlr_SmaR);
    connect(conDamper[4].u_m, dataBus.TAirSupplyVAV[5]);
    connect(conDamper[5].u_m, dataBus.T2ndFlr_SZ);
    connect(conDamper[6].u_m, dataBus.TAirSupplyVAV[7]);
    connect(conDamper[7].u_m, dataBus.TAirSupplyVAV[8]);
    connect(conDamper[8].u_m, dataBus.TAirSupplyVAV[9]);
    connect(conDamper[9].u_m, dataBus.T1stFlr_SZ1);
    connect(conDamper[10].u_m, dataBus.T1stFlr_SZ2);
    connect(conDamper[11].u_m, dataBus.TAirSupplyVAV[12]);
    connect(conDamper[12].u_m, dataBus.TAirSupplyVAV[13]);
    connect(conDamper[13].u_m, dataBus.TGndFlr_KTR);
    connect(conDamper[14].u_m, dataBus.TGndFlr_MT1);
    connect(conDamper[15].u_m, dataBus.TGndFlr_MT2);

    connect(switch3.u2, vAV_ducts_switch.HeaCoi) annotation (Line(points={{58,-70},
            {58,-70},{-34,-70},{-34,52},{-39,52}}, color={255,0,255}));
    connect(off.y, replicator2.u) annotation (Line(points={{-67.4,-38},{-66,-38},{
            -66,-74},{-66,-78},{-61.2,-78}}, color={0,0,127}));
    connect(replicator2.y, switch3.u3)
      annotation (Line(points={{-47.4,-78},{58,-78}}, color={0,0,127}));
    connect(conHeaCoi[1].u_m, dataBus.T3rdFlr_SZ) annotation (Line(points={{30,-58},
            {30,-58},{30,-64},{30,-66},{-99.9,-66},{-99.9,-19.9}}, color={0,0,127}),
        Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(conHeaCoi[2].u_m, dataBus.T3rdFlr_CPR);
    connect(conHeaCoi[3].u_m, dataBus.T3rdFlr_SmaR);
    connect(conHeaCoi[4].u_m, dataBus.TAirSupplyVAV[5]);
    connect(conHeaCoi[5].u_m, dataBus.T2ndFlr_SZ);
    connect(conHeaCoi[6].u_m, dataBus.TAirSupplyVAV[7]);
    connect(conHeaCoi[7].u_m, dataBus.TAirSupplyVAV[8]);
    connect(conHeaCoi[8].u_m, dataBus.TAirSupplyVAV[9]);
    connect(conHeaCoi[9].u_m, dataBus.T1stFlr_SZ1);
    connect(conHeaCoi[10].u_m, dataBus.T1stFlr_SZ2);
    connect(conHeaCoi[11].u_m, dataBus.TAirSupplyVAV[12]);
    connect(conHeaCoi[12].u_m, dataBus.TAirSupplyVAV[13]);
    connect(conHeaCoi[13].u_m, dataBus.TGndFlr_KTR);
    connect(conHeaCoi[14].u_m, dataBus.TGndFlr_MT1);
    connect(conHeaCoi[15].u_m, dataBus.TGndFlr_MT2);
    connect(conHeaCoi[16].u_m, dataBus.TAirSupplyVAV[3]);
    connect(conHeaCoi[17].u_m, dataBus.TGndFlr_1stAid);
    connect(conHeaCoi[18].u_m, dataBus.TGndFlr_hall);
    connect(conHeaCoi[19].u_m, dataBus.TGndFlr_hall);
    connect(conHeaCoi[20].u_m, dataBus.TGndFlr_WStairs);
    connect(conHeaCoi[21].u_m, dataBus.TGndFlr_EStairs);

    connect(conHeaCoi[1].u_s, vAV_ducts_switch.SetpointZones) annotation (Line(points={{18,-46},{-39,-46},{-39,41.6}}, color={0,0,127}));
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[2].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[3].u_s);
    connect(vAV_ducts_switch.Tair_Supply[5], conHeaCoi[4].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[5].u_s);
    connect(vAV_ducts_switch.Tair_Supply[7], conHeaCoi[6].u_s);
    connect(vAV_ducts_switch.Tair_Supply[8], conHeaCoi[7].u_s);
    connect(vAV_ducts_switch.Tair_Supply[9], conHeaCoi[8].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[9].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[10].u_s);
    connect(vAV_ducts_switch.Tair_Supply[12], conHeaCoi[11].u_s);
    connect(vAV_ducts_switch.Tair_Supply[13], conHeaCoi[12].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[13].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[14].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[15].u_s);
    connect(vAV_ducts_switch.Tair_Supply[3], conHeaCoi[16].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[17].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[18].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[19].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[20].u_s);
    connect(vAV_ducts_switch.SetpointZones, conHeaCoi[21].u_s);

    connect(conHeaCoi.y, switch3.u1) annotation (Line(points={{41,-46},{46,-46},{46,
            -62},{58,-62}}, color={0,0,127}));
    connect(switch3.y, heaCoi) annotation (Line(points={{81,-70},{90,-70},{90,-52},
            {110,-52}}, color={0,0,127}));
    connect(switch3.y, vAV_ducts_switch.HeaCoi_signal) annotation (Line(points={{81,
            -70},{80,-70},{80,96},{80,94},{-66,94},{-66,57},{-60,57}}, color={0,0,
            127}));

    connect(switch5[2].y, damper_extract[2]);
    connect(switch5[3].y, damper_extract[3]);
    connect(switch5[4].y, damper_extract[4]);
    connect(switch5[5].y, damper_extract[5]);
    connect(switch5[6].y, damper_extract[6]);
    connect(switch5[7].y, damper_extract[7]);
    connect(switch5[8].y, damper_extract[8]);
    connect(switch5[9].y, damper_extract[9]);
    connect(switch5[11].y, damper_extract[10]);
    connect(switch5[12].y, damper_extract[11]);
    connect(switch5[13].y, damper_extract[12]);
    connect(switch5[14].y, damper_extract[13]);
    connect(switch5[15].y, damper_extract[14]);
    connect(switch5[10].y, damper_extract[15]); //not used variable for MPC!!!!!!


    connect(booleanExpression1.y, and1.u1) annotation (Line(
        points={{-79,68},{-56,68},{-56,78},{-32,78}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(or1.y, and1.u2) annotation (Line(
        points={{-13.1,50},{-12,50},{-12,64},{-32,64},{-32,70}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(and1.y, booToInt.u) annotation (Line(
        points={{-9,78},{-6,78},{-6,50},{-2,50}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(and1.y, Hea) annotation (Line(
        points={{-9,78},{2,78},{2,-110}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(switch5.y, vAV_ducts_switch.damper_signal) annotation (Line(
        points={{61,64},{66,64},{72,64},{72,102},{-72,102},{-72,54},{-60,54},{-60,
            53}},
        color={0,0,127},
        smooth=Smooth.Bezier));
    connect(switch5.y, damper_supply) annotation (Line(
        points={{61,64},{82,64},{82,2},{110,2}},
        color={0,0,127},
        smooth=Smooth.Bezier));
    connect(switch5[1].y, damper_extract[1]) annotation (Line(
        points={{61,64},{82,64},{82,-33.3333},{110,-33.3333}},
        color={0,0,127},
        smooth=Smooth.Bezier));
    connect(booleanExpression1.y, booRep1.u) annotation (Line(points={{-79,68},
            {-62,68},{-36,68},{-36,30},{5.2,30}}, color={255,0,255}));
    connect(booRep1.y, switch4.u2)
      annotation (Line(points={{14.4,30},{32,30}}, color={255,0,255}));
    connect(switch1.y, switch4.u1) annotation (Line(points={{55,2},{64,2},{64,
            16},{20,16},{20,38},{32,38}}, color={0,0,127}));
    connect(replicator1.y, switch4.u3) annotation (Line(points={{-47.4,-38},{
            -38,-38},{-38,-6},{-16,-6},{-16,20},{-16,22},{32,22}}, color={0,0,
            127}));
    connect(max.y, switch5.u1) annotation (Line(points={{20.6,86},{30,86},{30,
            72},{38,72}}, color={0,0,127}));
    connect(switch4.y, switch5.u3) annotation (Line(points={{55,30},{66,30},{66,
            46},{28,46},{28,56},{38,56}}, color={0,0,127}));
    connect(booRep.y, switch5.u2)
      annotation (Line(points={{30.4,64},{36,64},{38,64}}, color={255,0,255}));
    connect(or2.y, booRep.u) annotation (Line(points={{4.4,98},{4,98},{4,68},{4,
            64},{21.2,64}}, color={255,0,255}));
    connect(or2.u1, booleanExpression.y) annotation (Line(points={{-4.8,98},{
            -45,98},{-45,98}}, color={255,0,255}));
    connect(NightVentilation, or2.u2) annotation (Line(points={{-100,-76},{-84,
            -76},{-84,-76},{-84,94.8},{-4.8,94.8}}, color={255,0,255}));
       annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-68,76},{72,-64}},
            lineColor={28,108,200},
            textString="VAV")}), Diagram(coordinateSystem(preserveAspectRatio=false)));
  end VAV_HeaCoi;

  model CoolingTower "CoolingTower PID"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Sources.Constant TSetLea(k=273.15 + 29)
      "Setpoint for leaving temperature"
                   annotation (Placement(transformation(extent={{-78,-60},{-58,
              -40}})));
    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
          IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    IDEAS.Utilities.Psychrometrics.TWetBul_TDryBulXi wetBul(redeclare package
        Medium = IDEAS.Media.Air)
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Blocks.Sources.Constant Patm(k=101325)
      annotation (Placement(transformation(extent={{-80,36},{-68,48}})));
    Modelica.Blocks.Logical.Switch switch1
      annotation (Placement(transformation(extent={{24,-68},{44,-48}})));
    Modelica.Blocks.Sources.Constant off(k=0) "off cooling tower"
      annotation (Placement(transformation(extent={{-20,-100},{0,-80}})));
    Modelica.Blocks.Interfaces.BooleanInput sit1
      annotation (Placement(transformation(extent={{20,-20},{-20,20}},
          rotation=90,
          origin={-28,100})));
    Modelica.Blocks.Interfaces.BooleanInput sit2
      annotation (Placement(transformation(extent={{20,-20},{-20,20}},
          rotation=90,
          origin={10,100})));
    Modelica.Blocks.Interfaces.BooleanInput sit3
      annotation (Placement(transformation(extent={{20,-20},{-20,20}},
          rotation=90,
          origin={50,100})));
    Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=sit1 or sit2
           or sit3)
      annotation (Placement(transformation(extent={{-64,-10},{-44,10}})));
    IDEAS.Controls.Continuous.LimPID conFan(
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      k=2,
      Ti=40) annotation (Placement(transformation(extent={{-24,-60},{-4,-40}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
          "Cooling tower leaving water temperature set-point", u(
        min=288.15,
        max=323.15,
        unit="K"))
      annotation (Placement(transformation(extent={{-48,-56},{-36,-44}})));
  equation
    connect(sim.weaBus, weaBus) annotation (Line(
        points={{-81,93},{-78,93},{-78,70},{-70,70}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(weaBus.Te, wetBul.TDryBul) annotation (Line(
        points={{-69.95,70.05},{-56,70.05},{-56,58},{-41,58}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(weaBus.X_wEnv, wetBul.Xi[1]) annotation (Line(
        points={{-69.95,70.05},{-56,70.05},{-56,50},{-41,50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(wetBul.TWetBul, signalBus.Twet) annotation (Line(points={{-19,50},{
            100,50},{100,0},{100,0}},       color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(Patm.y, wetBul.p) annotation (Line(points={{-67.4,42},{-67.4,42},{
            -41,42}}, color={0,0,127}));
    connect(switch1.y, signalBus.CT_signal) annotation (Line(points={{45,-58},{
            70,-58},{100,-58},{100,0}},       color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(off.y, switch1.u3) annotation (Line(points={{1,-90},{10,-90},{10,
            -66},{22,-66}}, color={0,0,127}));
    connect(booleanExpression.y, switch1.u2) annotation (Line(points={{-43,0},{
            -16,0},{8,0},{8,-58},{22,-58}}, color={255,0,255}));
    connect(conFan.y, switch1.u1)
      annotation (Line(points={{-3,-50},{22,-50}}, color={0,0,127}));
    connect(conFan.u_m, dataBus.T27) annotation (Line(points={{-14,-62},{-14,
            -74},{-99.9,-74},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(TSetLea.y, overwrite.u)
      annotation (Line(points={{-57,-50},{-49.2,-50}}, color={0,0,127}));
    connect(overwrite.y, conFan.u_s)
      annotation (Line(points={{-35.4,-50},{-26,-50}}, color={0,0,127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="CT")}), Diagram(coordinateSystem(preserveAspectRatio=
              false)));
  end CoolingTower;

  model TABS "Controls of TABS loop for baseline"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Sources.IntegerConstant p7Con(k=1) "P07 is always on"
      annotation (Placement(transformation(extent={{-10,60},{10,80}})));
    Valves.RBCBaseline.TwoWayValvesTABS twoWayTABSCon
      "Control logic of TABS two way valves"
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},
          {IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    Valves.RBCBaseline.ThreeWayValveTABS_baseline threeWayTABSCon
      "Control logic of TABS 3 way valves"
      annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
    Pumps.RBCBaseline.P5_baseline p5Con "Pump for passive cooling"
      annotation (Placement(transformation(extent={{-10,-60},{10,-40}})));
    OverwriteInteger overwriteInteger(
      description="TABS pump signal",
      min=0,
      max=1,
      unit="1") annotation (Placement(transformation(extent={{52,60},{72,80}})));
  equation
    connect(twoWayTABSCon.signalBus, signalBus) annotation (Line(
        points={{10.2,30},{100,30},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(twoWayTABSCon.dataBus, dataBus) annotation (Line(
        points={{-10,30},{-100,30},{-100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus, threeWayTABSCon.dataBus) annotation (Line(
        points={{-100,0},{-100,-10},{-10,-10}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(threeWayTABSCon.signalBus, signalBus) annotation (Line(
        points={{10.2,-10},{100,-10},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(dataBus, p5Con.dataBus) annotation (Line(
        points={{-100,0},{-100,-50},{-10,-50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(p5Con.signalBus, signalBus) annotation (Line(
        points={{10.2,-50},{100,-50},{100,0}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(p7Con.y, overwriteInteger.u)
      annotation (Line(points={{11,70},{50,70}}, color={255,127,0}));
    connect(overwriteInteger.y, signalBus.P07_signal) annotation (Line(points={
            {74,70},{100,70},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="TABS")}),
                                Diagram(coordinateSystem(preserveAspectRatio=
              false), graphics={Text(
            extent={{0,-94},{0,-84}},
            lineColor={28,108,200},
            fontSize=14,
            textStyle={TextStyle.Bold},
            textString=
                "On-off heating/cooling selector valves are controlled with the mode selector")}));
  end TABS;

  model ModeSelector_BOPTEST
    // -1 cooling, 0 rest, 1 heating
    IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 avgExt(TRm(start=
           273.15))                                                    "RMOT"
      annotation (Placement(transformation(extent={{-92,-10},{-72,10}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=273.15
           + 9)
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=273.15 + 7.95)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Blocks.Interfaces.BooleanOutput heat
      annotation (Placement(transformation(extent={{100,40},{120,60}})));
    Modelica.Blocks.Interfaces.BooleanOutput rest
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    Modelica.Blocks.Interfaces.BooleanOutput cool
      annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
    Modelica.StateGraph.StepWithSignal
                    restWait(
      nOut=1,
      nIn=4) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,20})));
    Modelica.StateGraph.InitialStep
                    restDecide(
      nIn=1,
      nOut=3) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,-10})));
    Modelica.StateGraph.Transition
                          transition(enableTimer=true,
                                                     waitTime=86400)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={56,6})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold=
         273.15 + 7.95)
      annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=
          273.15 + 9)
      annotation (Placement(transformation(extent={{-50,-28},{-30,-8}})));
    Modelica.StateGraph.TransitionWithSignal
                          T3
      annotation (Placement(transformation(extent={{4,-4},{-4,4}},
          rotation=-90,
          origin={20,60})));
    Modelica.StateGraph.TransitionWithSignal
                          transitionWithSignal
      annotation (Placement(transformation(extent={{4,-4},{-4,4}},
          rotation=-90,
          origin={40,8})));
    Modelica.StateGraph.TransitionWithSignal
                          transitionWithSignal4
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={56,-34})));
    Modelica.StateGraph.StepWithSignal
                    coolWait(
      nOut=1,
      nIn=3) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,-52})));
    Modelica.StateGraph.Step
                    coolDecide(
      nIn=1,
      nOut=2) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,-84})));
    Modelica.StateGraph.Transition
                          T5(enableTimer=true,       waitTime=86400)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={56,-66})));
    Modelica.StateGraph.StepWithSignal
                    heatWait(
      nOut=1,
      nIn=3) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,80})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{-14,-2},{6,18}})));
    Modelica.StateGraph.Step
                    heatDecide(
      nIn=1,
      nOut=2) annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={56,50})));
    Modelica.StateGraph.Transition
                          T6(enableTimer=true,       waitTime=86400)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={56,68})));
    Modelica.StateGraph.TransitionWithSignal
                          T7
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={56,38})));
    Modelica.StateGraph.TransitionWithSignal
                          T8
      annotation (Placement(transformation(extent={{14,-66},{22,-74}})));
    Modelica.StateGraph.TransitionWithSignal
                          transitionWithSignal2
      annotation (Placement(transformation(extent={{4,-4},{-4,4}},
          rotation=-90,
          origin={40,-60})));
    Modelica.StateGraph.TransitionWithSignal
                          T10
      annotation (Placement(transformation(extent={{4,-4},{-4,4}},
          rotation=-90,
          origin={40,68})));

    Components.RunningMeanTemperature7to18 runningMeanTemperature7to18_1
      annotation (Placement(transformation(extent={{-92,-40},{-72,-20}})));

  initial equation

  equation

    connect(avgExt.TRm, greaterThreshold.u) annotation (Line(points={{-71.4,0},{-66,
            0},{-62,0},{-62,-60},{-52,-60}}, color={0,0,127}));

    connect(avgExt.TRm, lessThreshold.u) annotation (Line(points={{-71.4,0},{-62,0},
            {-62,60},{-52,60}},     color={0,0,127}));

    connect(restWait.outPort[1], transition.inPort)
      annotation (Line(points={{56,15.8},{56,7.6},{56,7.6}}, color={0,0,0}));
    connect(transition.outPort, restDecide.inPort[1])
      annotation (Line(points={{56,5.4},{56,-5.6},{56,-5.6}}, color={0,0,0}));
    connect(restDecide.outPort[1], transitionWithSignal4.inPort) annotation (
        Line(points={{55.8667,-14.2},{55.8667,-22},{56,-22},{56,-32.4}}, color=
            {0,0,0}));
    connect(transitionWithSignal4.outPort, coolWait.inPort[1]) annotation (Line(
          points={{56,-34.6},{56,-47.6},{55.7333,-47.6}}, color={0,0,0}));
    connect(coolWait.outPort[1], T5.inPort)
      annotation (Line(points={{56,-56.2},{56,-64.4},{56,-64.4}},
                                                                color={0,0,0}));
    connect(T5.outPort, coolDecide.inPort[1])
      annotation (Line(points={{56,-66.6},{56,-79.6},{56,-79.6}},
                                                              color={0,0,0}));
    connect(greaterEqualThreshold.u, lessThreshold.u) annotation (Line(points={{-52,
            20},{-62,20},{-62,60},{-52,60}}, color={0,0,127}));
    connect(lessEqualThreshold.u, greaterThreshold.u) annotation (Line(points={{-52,
            -18},{-62,-18},{-62,-60},{-52,-60}}, color={0,0,127}));
    connect(restDecide.outPort[2], T3.inPort) annotation (Line(points={{56,
            -14.2},{54,-14.2},{54,-20},{20,-20},{20,18},{20,58.4},{20,58.4}},
                                                                   color={0,0,0}));
    connect(T3.outPort, heatWait.inPort[1]) annotation (Line(points={{20,60.6},
            {20,60.6},{20,96},{55.7333,96},{55.7333,84.4}},
                                                      color={0,0,0}));
    connect(restDecide.outPort[3], transitionWithSignal.inPort) annotation (
        Line(points={{56.1333,-14.2},{50,-14.2},{50,-16},{40,-16},{40,6.4}},
          color={0,0,0}));
    connect(transitionWithSignal.outPort, restWait.inPort[1]) annotation (Line(
          points={{40,8.6},{40,30},{55.7,30},{55.7,24.4}}, color={0,0,0}));
    connect(heatWait.outPort[1], T6.inPort)
      annotation (Line(points={{56,75.8},{56,69.6},{56,69.6}},
                                                             color={0,0,0}));
    connect(T6.outPort, heatDecide.inPort[1])
      annotation (Line(points={{56,67.4},{56,54.4},{56,54.4}},
                                                           color={0,0,0}));
    connect(heatDecide.outPort[1], T7.inPort)
      annotation (Line(points={{55.9,45.8},{55.9,39.6},{56,39.6}},
                                                             color={0,0,0}));
    connect(T7.outPort, restWait.inPort[2])
      annotation (Line(points={{56,37.4},{56,24.4},{55.9,24.4}}, color={0,0,0}));
    connect(lessEqualThreshold.y, and1.u2)
      annotation (Line(points={{-29,-18},{-16,-18},{-16,0}}, color={255,0,255}));
    connect(greaterEqualThreshold.y, and1.u1) annotation (Line(points={{-29,20},{-24,
            20},{-16,20},{-16,8}}, color={255,0,255}));
    connect(coolDecide.outPort[1], T8.inPort) annotation (Line(points={{55.9,
            -88.2},{55.9,-92},{16.4,-92},{16.4,-70}},
                                         color={0,0,0}));
    connect(T8.outPort, restWait.inPort[3]) annotation (Line(points={{18.6,-70},
            {28,-70},{28,-64},{30,-64},{30,30},{56,30},{56,24.4},{56.1,24.4}},
                                                                          color={0,
            0,0}));
    connect(coolDecide.outPort[2], transitionWithSignal2.inPort) annotation (
        Line(points={{56.1,-88.2},{40,-88.2},{40,-61.6}}, color={0,0,0}));
    connect(transitionWithSignal2.outPort, coolWait.inPort[2]) annotation (Line(
          points={{40,-59.4},{40,-59.4},{40,-44},{56,-44},{56,-47.6}}, color={0,
            0,0}));
    connect(T10.outPort, heatWait.inPort[2]) annotation (Line(points={{40,68.6},
            {40,68.6},{40,90},{56,90},{56,84.4}},
                                          color={0,0,0}));
    connect(heatDecide.outPort[2], T10.inPort) annotation (Line(points={{56.1,
            45.8},{50,45.8},{50,46},{40,46},{40,66.4}},
                                                color={0,0,0}));
    connect(heatWait.active, heat) annotation (Line(points={{60.4,80},{98,80},{
            98,50},{110,50}}, color={255,0,255}));
    connect(lessThreshold.y, T3.condition)
      annotation (Line(points={{-29,60},{15.2,60}}, color={255,0,255}));
    connect(T10.condition, T3.condition) annotation (Line(points={{35.2,68},{
            -10,68},{-10,60},{15.2,60}}, color={255,0,255}));
    connect(T7.condition, greaterEqualThreshold.y) annotation (Line(points={{
            51.2,38},{-14,38},{-14,20},{-29,20}}, color={255,0,255}));
    connect(transitionWithSignal.condition, and1.y)
      annotation (Line(points={{35.2,8},{7,8}}, color={255,0,255}));
    connect(T8.condition, lessEqualThreshold.y) annotation (Line(points={{18,
            -65.2},{4,-65.2},{4,-30},{-29,-30},{-29,-18}}, color={255,0,255}));
    connect(transitionWithSignal2.condition, greaterThreshold.y)
      annotation (Line(points={{35.2,-60},{-29,-60}}, color={255,0,255}));
    connect(transitionWithSignal4.condition, greaterThreshold.y) annotation (
        Line(points={{51.2,-34},{12,-34},{12,-60},{-29,-60}}, color={255,0,255}));
    connect(restWait.active, rest) annotation (Line(points={{60.4,20},{82,20},{
            82,0},{110,0}}, color={255,0,255}));
    connect(coolWait.active, cool) annotation (Line(points={{60.4,-52},{86,-52},
            {86,-50},{110,-50}}, color={255,0,255}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)),
      experiment(
        StopTime=31536000,
        Interval=3600,
        Tolerance=1e-06,
        __Dymola_fixedstepsize=15,
        __Dymola_Algorithm="Euler"));
  end ModeSelector_BOPTEST;

  package Pumps "Controllers of Hydraulic Pumps"

    model P1 "hydraulic pumps logic"

      Modelica.Blocks.Tables.CombiTable1D P1_HP_off(table=[-5,0.30; 0,0.1; 5,
            0.70]) "P1 action if HP is off"
        annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-50,40},{-30,60}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{52,10},{72,-10}})));
      Modelica.Blocks.Logical.Switch switch2
        annotation (Placement(transformation(extent={{0,-20},{20,-40}})));
      Modelica.Blocks.Sources.Constant twoHPs(k=0.8) "two HPs working"
        annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
      Modelica.Blocks.Sources.Constant oneHP(k=0.55) "only one HP working"
        annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
      Modelica.Blocks.Math.RealToBoolean HPAreOn(threshold=1.5) "Both HP are on"
        annotation (Placement(transformation(extent={{40,-70},{20,-50}})));
      Modelica.Blocks.Math.RealToBoolean HPIsOn(threshold=0.5)
        "At least one HP is on"
        annotation (Placement(transformation(extent={{12,-10},{32,10}})));
      Modelica.Blocks.Nonlinear.Limiter limiter(uMax=1, uMin=0)
        annotation (Placement(transformation(extent={{10,40},{30,60}})));
      Modelica.Blocks.MathBoolean.Or  Off(nu=3) "multiple off conditions"
        annotation (Placement(transformation(extent={{44,54},{56,66}})));
      Modelica.Blocks.Logical.Not not1
        annotation (Placement(transformation(extent={{68,54},{80,66}})));
      Modelica.Blocks.Logical.Switch isOffCheck "P01 is off"
        annotation (Placement(transformation(extent={{66,22},{84,40}})));
      Modelica.Blocks.Sources.Constant off(k=0) "HPs are off"
        annotation (Placement(transformation(extent={{52,34},{60,42}})));
      Modelica.Blocks.Math.IntegerToReal realToInteger[2]
        annotation (Placement(transformation(extent={{94,-70},{74,-50}})));
      Modelica.Blocks.Math.Add add1
        annotation (Placement(transformation(extent={{64,-68},{48,-52}})));
      Modelica.Blocks.Math.IntegerToBoolean P04signal "Check if P04 is on"
        annotation (Placement(transformation(extent={{78,76},{68,86}})));
      Modelica.Blocks.Math.RealToBoolean    P05signal(threshold=0.01)
                                                      "Check if P06 is on"
        annotation (Placement(transformation(extent={{78,88},{68,98}})));
      IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
            "evaporator pump speed", u(
          min=0,
          max=1,
          unit="1"))
        annotation (Placement(transformation(extent={{90,28},{96,34}})));
    equation
      connect(dataBus.T1, add.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,56},{-52,56}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T7, add.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,44},{-52,44}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add.y, P1_HP_off.u[1])
        annotation (Line(points={{-29,50},{-22,50}}, color={0,0,127}));
      connect(oneHP.y, switch2.u3) annotation (Line(points={{-39,-10},{-12,-10},{-12,
              -22},{-2,-22}}, color={0,0,127}));
      connect(twoHPs.y, switch2.u1) annotation (Line(points={{-39,-50},{-12,-50},{-12,
              -38},{-2,-38}}, color={0,0,127}));
      connect(switch2.y, switch1.u1) annotation (Line(points={{21,-30},{30,-30},
              {40,-30},{40,-8},{50,-8}},
                                     color={0,0,127}));
      connect(HPAreOn.y, switch2.u2) annotation (Line(points={{19,-60},{-20,-60},{-20,
              -30},{-2,-30}}, color={255,0,255}));
      connect(HPIsOn.y, switch1.u2)
        annotation (Line(points={{33,0},{50,0}}, color={255,0,255}));
      connect(P1_HP_off.y[1], limiter.u)
        annotation (Line(points={{1,50},{8,50}}, color={0,0,127}));
      connect(limiter.y, switch1.u3)
        annotation (Line(points={{31,50},{40,50},{40,8},{50,8}}, color={0,0,127}));
      connect(Off.y, not1.u)
        annotation (Line(points={{56.9,60},{66.8,60}}, color={255,0,255}));

      connect(not1.y, isOffCheck.u2) annotation (Line(points={{80.6,60},{86,60},
              {86,46},{50,46},{50,31},{64.2,31}},
                                              color={255,0,255}));
      connect(off.y, isOffCheck.u1) annotation (Line(points={{60.4,38},{65.25,
              38},{65.25,38.2},{64.2,38.2}},
                                  color={0,0,127}));
      connect(switch1.y, isOffCheck.u3) annotation (Line(points={{73,0},{80,0},
              {80,16},{60,16},{60,23.8},{64.2,23.8}},
                                              color={0,0,127}));
      connect(realToInteger[1].u, signalBus.HP1_signal) annotation (Line(points={{96,
              -60},{100,-60},{100,0}}, color={255,127,0}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(realToInteger[2].u, signalBus.HP2_signal) annotation (Line(points={{96,
              -60},{100,-60},{100,0}}, color={255,127,0}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(HPAreOn.u, add1.y)
        annotation (Line(points={{42,-60},{47.2,-60}}, color={0,0,127}));
      connect(realToInteger[1].y, add1.u1) annotation (Line(points={{73,-60},{70,-60},
              {70,-55.2},{65.6,-55.2}}, color={0,0,127}));
      connect(realToInteger[2].y, add1.u2) annotation (Line(points={{73,-60},{70,-60},
              {70,-64.8},{65.6,-64.8}}, color={0,0,127}));
      connect(add1.y,HPIsOn. u) annotation (Line(points={{47.2,-60},{46,-60},{46,-16},
              {0,-16},{0,0},{10,0}}, color={0,0,127}));
      connect(HPIsOn.y, Off.u[1]) annotation (Line(points={{33,0},{38,0},{38,
              62.8},{44,62.8}}, color={255,0,255}));
      connect(P04signal.u, signalBus.P04_signal) annotation (Line(points={{79,
              81},{100,81},{100,0}}, color={255,127,0}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(P04signal.y, Off.u[2]) annotation (Line(points={{67.5,81},{44,81},
              {44,60}}, color={255,0,255}));
      connect(P05signal.y, Off.u[3]) annotation (Line(points={{67.5,93},{44,93},
              {44,57.2}}, color={255,0,255}));
      connect(P05signal.u, signalBus.P05_mod) annotation (Line(points={{79,93},
              {100,93},{100,0}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(isOffCheck.y, overwrite.u) annotation (Line(points={{84.9,31},{
              87.45,31},{87.45,31},{89.4,31}}, color={0,0,127}));
      connect(overwrite.y, signalBus.P0102_mod) annotation (Line(points={{96.3,
              31},{96.3,32},{100,32},{100,0}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{-3,-6},{-3,-6}},
          horizontalAlignment=TextAlignment.Right));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P1")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P1;

    model P3 "hydraulic pumps logic"

      Modelica.Blocks.Tables.CombiTable1D P3_HP_off(table=[-5,3*9806.38; 5,10*9806.38])
        "P3 action if HPs are off"
        annotation (Placement(transformation(extent={{-22,-10},{-2,10}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Math.Feedback delta "delta T19-T14"
        annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
      Modelica.Blocks.Logical.Switch HPSwitch
        annotation (Placement(transformation(extent={{40,20},{60,40}})));
      Modelica.Blocks.Sources.Constant setPoiIfHPisOn(k=12*9806.38)
        "only one HP working"
        annotation (Placement(transformation(extent={{-20,36},{0,56}})));
      Modelica.Blocks.Math.IntegerToBoolean hpIsOn
        annotation (Placement(transformation(extent={{-50,20},{-30,40}})));
      Modelica.Blocks.Nonlinear.Limiter limiter(uMin=0, uMax=12*9806.38)
        annotation (Placement(transformation(extent={{12,-10},{32,10}})));
      IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
            "condenser pump pressure difference", u(
          min=0,
          max=120000,
          unit="Pa"))
        annotation (Placement(transformation(extent={{70,22},{86,38}})));
    equation


      connect(delta.y, P3_HP_off.u[1])
        annotation (Line(points={{-31,0},{-24,0}}, color={0,0,127}));
      connect(dataBus.T19, delta.u1) annotation (Line(
          points={{-99.9,0.1},{-72,0.1},{-72,0},{-48,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}},
          horizontalAlignment=TextAlignment.Right));
      connect(dataBus.T14, delta.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,-20},{-40,-20},{-40,-8}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-3,-6},{-3,-6}},
          horizontalAlignment=TextAlignment.Right));
      connect(setPoiIfHPisOn.y, HPSwitch.u1) annotation (Line(points={{1,46},{
              14,46},{14,38},{38,38}}, color={0,0,127}));
      connect(hpIsOn.y, HPSwitch.u2)
        annotation (Line(points={{-29,30},{38,30}}, color={255,0,255}));
      connect(signalBus.HP1_signal, hpIsOn.u) annotation (Line(
          points={{100,0},{100,80},{-60,80},{-60,30},{-52,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}},
          horizontalAlignment=TextAlignment.Right));
      connect(limiter.u, P3_HP_off.y[1])
        annotation (Line(points={{10,0},{-1,0}}, color={0,0,127}));
      connect(limiter.y, HPSwitch.u3) annotation (Line(points={{33,0},{34,0},{
              34,22},{38,22}}, color={0,0,127}));
      connect(HPSwitch.y, overwrite.u)
        annotation (Line(points={{61,30},{68.4,30}}, color={0,0,127}));
      connect(overwrite.y, signalBus.P03_mod) annotation (Line(points={{86.8,30},
              {96,30},{96,0},{100,0}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),                                Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P3")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P3;

    model P4 "hydraulic pumps logic"
      import INFRAX;

      Modelica.Blocks.Interfaces.RealInput p13
        annotation (Placement(transformation(extent={{-120,-10},{-80,30}})));
      Modelica.Blocks.Sources.Constant
                                gain(k=hydronic.p04_m_flow)
        annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,0},{120,20}})));
      INFRAX.Data.Parameters.Hydronic hydronic
        annotation (Placement(transformation(extent={{-20,80},{0,100}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=if p13 == 0 then
            0 else gain.y)
        annotation (Placement(transformation(extent={{30,0},{50,20}})));
    equation

      connect(realExpression.y, y)
        annotation (Line(points={{51,10},{110,10}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid),                                Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P4")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P4;

    model P5 "hydraulic pumps logic p05"
      Real Cf "compensation factor";
      Modelica.Blocks.Tables.CombiTable1D P3_table(table=[18,23; 23,21.5; 30,21])
        "P3 table"
        annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
        annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
      IDEAS.Controls.Continuous.LimPID
                                 PID_P5(
        k=1,
        reverseAction=true,
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Ti=45,
        Td=0) "Controller for p05"
        annotation (Placement(transformation(extent={{42,54},{62,74}})));
      Modelica.Blocks.Math.Add add(k2=+1)
        annotation (Placement(transformation(extent={{-10,54},{10,74}})));
      Modelica.Blocks.Math.Gain gain1(k=21000/3600)
        annotation (Placement(transformation(extent={{70,54},{90,74}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
      Modelica.Blocks.Sources.Constant off(k=0)
        annotation (Placement(transformation(extent={{-20,-76},{0,-56}})));
      IDEAS.Utilities.Math.Average ave(nin=4)  "average temperature of all zones"
        annotation (Placement(transformation(extent={{-80,-44},{-60,-24}})));
      Modelica.Blocks.Tables.CombiTable1D heaCurve_BB(table=[20,23; 24,23.5; 26,
            23.8; 28,24.4; 35,26]) "TABS heating curve"
        annotation (Placement(transformation(extent={{-20,-8},{0,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-48,-8},{-28,12}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-80,-14},{-60,6}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-38,-44},{-18,-24}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{6,-36},{26,-16}})));
      Modelica.Blocks.Sources.RealExpression compensation(y=Cf*add4.y)
        annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
      Modelica.Blocks.Math.Max max
        annotation (Placement(transformation(extent={{20,58},{32,70}})));
      IDEAS.Utilities.Psychrometrics.TDewPoi_pW TDew(T(start=285.15))
        "dew point security"
        annotation (Placement(transformation(extent={{2,22},{22,42}})));
      IDEAS.Utilities.Psychrometrics.pW_X pWat
        annotation (Placement(transformation(extent={{-40,22},{-20,42}})));
      Modelica.Blocks.Sources.Constant Patm(k=101325)
        annotation (Placement(transformation(extent={{-96,30},{-76,50}})));
      Modelica.Blocks.Math.Add add2(
                                   k2=+1)
        annotation (Placement(transformation(extent={{34,22},{46,34}})));
      Modelica.Blocks.Sources.Constant securityFactor(k=3)
        annotation (Placement(transformation(extent={{18,6},{26,14}})));
      Components.RunningMeanTemperature3points runningMeanTemperature3points
        annotation (Placement(transformation(extent={{-68,50},{-54,64}})));
      P7off p7off
        annotation (Placement(transformation(extent={{-80,-80},{-60,-60}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=gain1.y*p7off.onoff_gain)
        annotation (Placement(transformation(extent={{32,-18},{52,2}})));
    equation

      Cf= if add4.y < 0 then 0.5 else 1.5;

      connect(sim.weaBus, weaBus) annotation (Line(
          points={{-81,93},{-70,93},{-70,70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(P3_table.y[1], add.u1)
        annotation (Line(points={{-19,70},{-15.5,70},{-12,70}}, color={0,0,127}));
      connect(dataBus.T17, PID_P5.u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,20},{52,20},{52,52}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(PID_P5.y, gain1.u) annotation (Line(points={{63,64},{63,64},{68,
              64}},         color={0,0,127}));
      connect(signalBus.coolMode, switch1.u2) annotation (Line(
          points={{100,0},{100,0},{100,-84},{-48,-84},{-48,-50},{58,-50}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(signalBus.P05_mod, switch1.y) annotation (Line(
          points={{100,0},{81,0},{81,-50}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(off.y, switch1.u3) annotation (Line(points={{1,-66},{20,-66},{20,-58},
              {58,-58}},    color={0,0,127}));

      connect(const1.y, add1.u2)
        annotation (Line(points={{-59,-4},{-50,-4}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-59,-4},{-56,-4},{
              -56,-40},{-40,-40}},
                          color={0,0,127}));
      connect(ave.y, add3.u1) annotation (Line(points={{-59,-34},{-56,-34},{-40,
              -34},{-40,-28}},
                          color={0,0,127}));
      connect(heaCurve_BB.y[1], add4.u1)
        annotation (Line(points={{1,2},{4,2},{4,-20}}, color={0,0,127}));
      connect(add3.y, add4.u2)
        annotation (Line(points={{-17,-34},{4,-34},{4,-32}}, color={0,0,127}));
      connect(compensation.y, add.u2) annotation (Line(points={{-19,50},{-19,50},
              {-12,50},{-12,58}},     color={0,0,127}));
      connect(add1.y, heaCurve_BB.u[1])
        annotation (Line(points={{-27,2},{-22,2}}, color={0,0,127}));
      connect(pWat.p_w, TDew.p_w)
        annotation (Line(points={{-19,32},{-8,32},{1,32}}, color={0,0,127}));
      connect(weaBus.X_wEnv, pWat.X_w) annotation (Line(
          points={{-69.95,70.05},{-69.95,70.05},{-69.95,34},{-69.95,32},{-41,32}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(Patm.y, pWat.p_in) annotation (Line(points={{-75,40},{-42,40},{
              -42,38}}, color={0,0,127}));
      connect(TDew.T, add2.u1) annotation (Line(points={{23,32},{32.8,32},{32.8,
              31.6}}, color={0,0,127}));
      connect(securityFactor.y, add2.u2) annotation (Line(points={{26.4,10},{28,
              10},{28,24.4},{32.8,24.4}}, color={0,0,127}));
      connect(ave.y, dataBus.Tavg_building) annotation (Line(points={{-59,-34},
              {-58,-34},{-58,-18},{-99.9,-18},{-99.9,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(add.y, max.u1) annotation (Line(points={{11,64},{12,64},{12,67.6},
              {18.8,67.6}}, color={0,0,127}));
      connect(PID_P5.u_s, max.y) annotation (Line(points={{40,64},{38.5,64},{
              32.6,64}}, color={0,0,127}));
      connect(add2.y, max.u2) annotation (Line(points={{46.6,28},{48,28},{48,44},
              {48,50},{18.8,50},{18.8,60.4}}, color={0,0,127}));
      connect(ave.u[1], dataBus.Tavg_GndFlr) annotation (Line(points={{-82,
              -35.5},{-92,-35.5},{-92,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[2], dataBus.Tavg_1stFlr) annotation (Line(points={{-82,
              -34.5},{-88,-34.5},{-99.9,-34.5},{-99.9,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[3], dataBus.Tavg_2ndFlr) annotation (Line(points={{-82,
              -33.5},{-90,-33.5},{-90,-32},{-99.9,-32},{-99.9,0.1}}, color={0,0,
              127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[4], dataBus.Tavg_3rdFlr) annotation (Line(points={{-82,
              -32.5},{-92,-32.5},{-100,-32.5},{-100,-16},{-99.9,-16},{-99.9,0.1}},
            color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(P3_table.u[1], add1.y) annotation (Line(points={{-42,70},{-48,70},
              {-48,14},{-27,14},{-27,2}}, color={0,0,127}));
      connect(runningMeanTemperature3points.TRm, add1.u1) annotation (Line(
            points={{-53.58,57},{-53.58,33.5},{-50,33.5},{-50,8}}, color={0,0,
              127}));
      connect(realExpression.y, switch1.u1) annotation (Line(points={{53,-8},{
              54,-8},{54,-42},{58,-42}}, color={0,0,127}));
      connect(dataBus, p7off.dataBus) annotation (Line(
          points={{-100,0},{-100,0},{-100,-70},{-80,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(p7off.signalBus, signalBus) annotation (Line(
          points={{-59.8,-70},{-60,-70},{-60,-100},{100,-100},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P5")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P5;

    model P7off "P07 turning off conditions"

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Weather.Clock clock
        annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
      Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=273.15 + 24)
        annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
      Modelica.Blocks.Logical.And conditions
        annotation (Placement(transformation(extent={{-20,-20},{0,0}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=if (((clock.day
             == 6 or clock.day == 7) and (clock.hour == 0 or clock.hour == 1
             or clock.hour == 3 or clock.hour == 4 or clock.hour == 6 or clock.hour
             == 7 or clock.hour == 9 or clock.hour == 10 or clock.hour == 12
             or clock.hour == 13 or clock.hour == 15 or clock.hour == 16 or
            clock.hour == 18 or clock.hour == 19 or clock.hour == 21 or clock.hour
             == 22)) or ((clock.day == 1 or clock.day == 2 or clock.day == 3
             or clock.day == 4 or clock.day == 5) and (clock.hour == 21 or
            clock.hour == 22 or clock.hour == 0 or clock.hour == 1 or clock.hour
             == 3 or clock.hour == 4))) and conditions.y == true then 0 else 1)
        annotation (Placement(transformation(extent={{0,-66},{20,-46}})));
      Modelica.Blocks.Interfaces.RealOutput onoff_gain
        annotation (Placement(transformation(extent={{100,-44},{120,-24}})));
    equation

      connect(dataBus.Tavg_building, lessThreshold.u) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-30},{-62,-30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(lessThreshold.y, conditions.u2) annotation (Line(points={{-39,-30},
              {-32,-30},{-32,-18},{-22,-18}}, color={255,0,255}));
      connect(signalBus.coolMode, conditions.u1) annotation (Line(
          points={{100,0},{100,20},{-30,20},{-30,-10},{-22,-10}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(realExpression.y, onoff_gain) annotation (Line(points={{21,-56},{
              62,-56},{62,-34},{110,-34}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P7_off")}),Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P7off;

    model P9P13 "hydraulic pumps logic p05"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Modelica.Blocks.Math.Gain p09(k=hydronic.p09_m_flow)
        annotation (Placement(transformation(extent={{-8,20},{12,40}})));
      Modelica.Blocks.Math.Gain p13(k=hydronic.p13_m_flow)
        annotation (Placement(transformation(extent={{18,-40},{38,-20}})));
      INFRAX.Data.Parameters.Hydronic hydronic
        annotation (Placement(transformation(extent={{-10,80},{10,100}})));
      Modelica.Blocks.Math.BooleanToReal booleanToReal
        annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
      Modelica.Blocks.Math.Gain p08(k=hydronic.p08_m_flow)
        annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
      Modelica.Blocks.Math.BooleanToReal booleanToReal2
        annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
      Modelica.Blocks.Tables.CombiTable1D P13_table(table=[0,0.12; 0.8,0.3; 1,1])
        "P3 table"
        annotation (Placement(transformation(extent={{-78,-28},{-62,-12}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{-14,-40},{6,-20}})));
      Modelica.Blocks.Sources.Constant const(k=0)
        annotation (Placement(transformation(extent={{-100,-100},{-80,-80}})));
    equation

      connect(signalBus.AHUheatingDemand, booleanToReal.u) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,60},{-80,60},{-80,30},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(booleanToReal.y, p09.u)
        annotation (Line(points={{-39,30},{-10,30}}, color={0,0,127}));
      connect(p09.y, signalBus.P09_mod) annotation (Line(points={{13,30},{54,30},{54,
              0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(p13.y, signalBus.P13_mod) annotation (Line(points={{39,-30},{54,
              -30},{54,0.1},{100.1,0.1}},
                                    color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(p08.y, signalBus.P08_mod) annotation (Line(points={{11,0},{100.1,0},{100.1,
              0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(signalBus.AHUheatingDemand, booleanToReal2.u) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,62},{100.1,60},{-80,60},{-80,0},{-62,
              0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(booleanToReal2.y, p08.u)
        annotation (Line(points={{-39,0},{-12,0},{-12,0}}, color={0,0,127}));
      connect(signalBus.AHUcoolingDemand, switch1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-72},{-80,-72},{-80,-30},{-16,
              -30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const.y, switch1.u3) annotation (Line(points={{-79,-90},{-72,-90},
              {-72,-38},{-16,-38}}, color={0,0,127}));
      connect(switch1.y, p13.u)
        annotation (Line(points={{7,-30},{16,-30},{16,-30}}, color={0,0,127}));
      connect(P13_table.y[1], switch1.u1) annotation (Line(points={{-61.2,-20},
              {-38,-22},{-16,-22}}, color={0,0,127}));
      connect(signalBus.CooCoi_3way_signal, P13_table.u[1]) annotation (Line(
          points={{100.1,0.1},{100.1,-54},{-94,-54},{-94,-20},{-79.6,-20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P9P13")}), Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P9P13;

    model P5_onlyTABS "hydraulic pumps logic p05"
      Real Cf "compensation factor";
      Modelica.Blocks.Tables.CombiTable1D P3_table(table=[18,23; 23,21.5; 30,21])
        "P3 table"
        annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
        annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
      Buildings.Controls.Continuous.LimPID
                                 PID_P5(
        k=1,
        reverseAction=true,
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Ti=45,
        Td=0) "Controller for p05"
        annotation (Placement(transformation(extent={{42,54},{62,74}})));
      Modelica.Blocks.Math.Add add(k2=+1)
        annotation (Placement(transformation(extent={{-10,54},{10,74}})));
      Modelica.Blocks.Math.Gain gain1(k=21000/3600)
        annotation (Placement(transformation(extent={{70,54},{90,74}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{60,-60},{80,-40}})));
      Modelica.Blocks.Sources.Constant off(k=0)
        annotation (Placement(transformation(extent={{-20,-76},{0,-56}})));
      IDEAS.Utilities.Math.Average ave(nin=4)  "average temperature of all zones"
        annotation (Placement(transformation(extent={{-80,-44},{-60,-24}})));
      Modelica.Blocks.Tables.CombiTable1D heaCurve_BB(table=[20,23; 24,23.5; 26,
            23.8; 28,24.4; 35,26]) "TABS heating curve"
        annotation (Placement(transformation(extent={{-20,-8},{0,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-48,-8},{-28,12}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-80,-14},{-60,6}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-48,-44},{-28,-24}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{6,-36},{26,-16}})));
      Modelica.Blocks.Sources.RealExpression compensation(y=Cf*add4.y)
        annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
      Modelica.Blocks.Math.Max max
        annotation (Placement(transformation(extent={{20,58},{32,70}})));
      IDEAS.Utilities.Psychrometrics.TDewPoi_pW TDew(T(start=285.15))
        "dew point security"
        annotation (Placement(transformation(extent={{2,22},{22,42}})));
      IDEAS.Utilities.Psychrometrics.pW_X pWat
        annotation (Placement(transformation(extent={{-40,22},{-20,42}})));
      Modelica.Blocks.Sources.Constant Patm(k=101325)
        annotation (Placement(transformation(extent={{-96,30},{-76,50}})));
      Modelica.Blocks.Math.Add add2(
                                   k2=+1)
        annotation (Placement(transformation(extent={{34,22},{46,34}})));
      Modelica.Blocks.Sources.Constant securityFactor(k=3 - 273.15)
        annotation (Placement(transformation(extent={{18,6},{26,14}})));
      Components.RunningMeanTemperature3points runningMeanTemperature3points
        annotation (Placement(transformation(extent={{-68,50},{-54,64}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=gain1.y)
        annotation (Placement(transformation(extent={{32,-18},{52,2}})));
      Modelica.Blocks.Math.Add add5(k2=-1)
        annotation (Placement(transformation(extent={{60,10},{80,30}})));
    equation

      Cf= if add4.y < 0 then 0.5 else 1.5;

      connect(sim.weaBus, weaBus) annotation (Line(
          points={{-84,92.8},{-70,92.8},{-70,70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(P3_table.y[1], add.u1)
        annotation (Line(points={{-19,70},{-15.5,70},{-12,70}}, color={0,0,127}));
      connect(PID_P5.y, gain1.u) annotation (Line(points={{63,64},{63,64},{68,
              64}},         color={0,0,127}));
      connect(signalBus.coolMode, switch1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-84},{-48,-84},{-48,-50},{58,
              -50}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(signalBus.P05_mod, switch1.y) annotation (Line(
          points={{100.1,0.1},{81,0.1},{81,-50}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(off.y, switch1.u3) annotation (Line(points={{1,-66},{20,-66},{20,-58},
              {58,-58}},    color={0,0,127}));

      connect(const1.y, add1.u2)
        annotation (Line(points={{-59,-4},{-50,-4}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-59,-4},{-56,-4},{-56,-40},
              {-50,-40}}, color={0,0,127}));
      connect(ave.y, add3.u1) annotation (Line(points={{-59,-34},{-56,-34},{-50,-34},
              {-50,-28}}, color={0,0,127}));
      connect(heaCurve_BB.y[1], add4.u1)
        annotation (Line(points={{1,2},{4,2},{4,-20}}, color={0,0,127}));
      connect(add3.y, add4.u2)
        annotation (Line(points={{-27,-34},{4,-34},{4,-32}}, color={0,0,127}));
      connect(compensation.y, add.u2) annotation (Line(points={{-19,50},{-19,50},
              {-12,50},{-12,58}},     color={0,0,127}));
      connect(add1.y, heaCurve_BB.u[1])
        annotation (Line(points={{-27,2},{-22,2}}, color={0,0,127}));
      connect(pWat.p_w, TDew.p_w)
        annotation (Line(points={{-19,32},{-8,32},{1,32}}, color={0,0,127}));
      connect(weaBus.X_wEnv, pWat.X_w) annotation (Line(
          points={{-69.95,70.05},{-69.95,70.05},{-69.95,34},{-69.95,32},{-41,32}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(Patm.y, pWat.p_in) annotation (Line(points={{-75,40},{-42,40},{
              -42,38}}, color={0,0,127}));
      connect(TDew.T, add2.u1) annotation (Line(points={{23,32},{32.8,32},{32.8,
              31.6}}, color={0,0,127}));
      connect(securityFactor.y, add2.u2) annotation (Line(points={{26.4,10},{28,
              10},{28,24.4},{32.8,24.4}}, color={0,0,127}));
      connect(ave.y, dataBus.Tavg_building) annotation (Line(points={{-59,-34},
              {-58,-34},{-58,-18},{-99.9,-18},{-99.9,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(add.y, max.u1) annotation (Line(points={{11,64},{12,64},{12,67.6},
              {18.8,67.6}}, color={0,0,127}));
      connect(PID_P5.u_s, max.y) annotation (Line(points={{40,64},{38.5,64},{
              32.6,64}}, color={0,0,127}));
      connect(add2.y, max.u2) annotation (Line(points={{46.6,28},{48,28},{48,44},
              {48,50},{18.8,50},{18.8,60.4}}, color={0,0,127}));
      connect(ave.u[1], dataBus.Tavg_GndFlr) annotation (Line(points={{-82,
              -35.5},{-92,-35.5},{-92,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[2], dataBus.Tavg_1stFlr) annotation (Line(points={{-82,
              -34.5},{-88,-34.5},{-99.9,-34.5},{-99.9,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[3], dataBus.Tavg_2ndFlr) annotation (Line(points={{-82,
              -33.5},{-90,-33.5},{-90,-32},{-99.9,-32},{-99.9,0.1}}, color={0,0,
              127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(ave.u[4], dataBus.Tavg_3rdFlr) annotation (Line(points={{-82,
              -32.5},{-92,-32.5},{-100,-32.5},{-100,-16},{-99.9,-16},{-99.9,0.1}},
            color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(P3_table.u[1], add1.y) annotation (Line(points={{-42,70},{-48,70},
              {-48,14},{-27,14},{-27,2}}, color={0,0,127}));
      connect(runningMeanTemperature3points.TRm, add1.u1) annotation (Line(
            points={{-53.58,57},{-53.58,33.5},{-50,33.5},{-50,8}}, color={0,0,
              127}));
      connect(realExpression.y, switch1.u1) annotation (Line(points={{53,-8},{
              54,-8},{54,-42},{58,-42}}, color={0,0,127}));
      connect(add5.y, PID_P5.u_m) annotation (Line(points={{81,20},{81,42},{52,
              42},{52,52}}, color={0,0,127}));
      connect(const1.y, add5.u2) annotation (Line(points={{-59,-4},{0,-4},{0,-2},
              {58,-2},{58,14}}, color={0,0,127}));
      connect(dataBus.T17, add5.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,26},{58,26}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P5")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P5_onlyTABS;

    model P1_onlyTABS "hydraulic pumps logic"

      Modelica.Blocks.Tables.CombiTable1D P1_HP_off(table=[-5,0.3; 0,0.1; 5,
            0.70])
        "P1 action if HP is off"
        annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{52,10},{72,-10}})));
      Modelica.Blocks.Logical.Switch switch2
        annotation (Placement(transformation(extent={{0,-20},{20,-40}})));
      Modelica.Blocks.Sources.Constant twoHPs(k=0.8) "two HPs working"
        annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
      Modelica.Blocks.Sources.Constant oneHP(k=0.55) "only one HP working"
        annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
      Modelica.Blocks.Math.RealToBoolean realToBoolean(threshold=1.5)
        annotation (Placement(transformation(extent={{50,-70},{30,-50}})));
      Modelica.Blocks.Math.Gain gain(k=38000/3600)
        annotation (Placement(transformation(extent={{78,-4},{86,4}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=gain.y)
        annotation (Placement(transformation(extent={{40,54},{60,74}})));
      Modelica.Blocks.Sources.Constant min(k=1) "only one HP working"
        annotation (Placement(transformation(extent={{-20,10},{0,30}})));
      Modelica.Blocks.Math.Min max
        annotation (Placement(transformation(extent={{14,34},{26,46}})));
    equation
      connect(dataBus.T1, add.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,56},{-62,56}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T7, add.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,44},{-62,44}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add.y, P1_HP_off.u[1])
        annotation (Line(points={{-39,50},{-24,50},{-22,50}},
                                                     color={0,0,127}));
      connect(signalBus.HP_onoff, switch1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,20},{46,20},{46,0},{50,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(oneHP.y, switch2.u3) annotation (Line(points={{-39,-10},{-12,-10},{-12,
              -22},{-2,-22}}, color={0,0,127}));
      connect(twoHPs.y, switch2.u1) annotation (Line(points={{-39,-50},{-12,-50},{-12,
              -38},{-2,-38}}, color={0,0,127}));
      connect(switch2.y, switch1.u1) annotation (Line(points={{21,-30},{30,-30},
              {40,-30},{40,-8},{50,-8}},
                                     color={0,0,127}));
      connect(signalBus.HP_mod, realToBoolean.u) annotation (Line(
          points={{100.1,0.1},{100.1,-60},{52,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(realToBoolean.y, switch2.u2) annotation (Line(points={{29,-60},{-20,-60},
              {-20,-30},{-2,-30}}, color={255,0,255}));
      connect(gain.u, switch1.y)
        annotation (Line(points={{77.2,0},{76,0},{73,0}}, color={0,0,127}));
      connect(realExpression.y, signalBus.P0102_mod) annotation (Line(points={{
              61,64},{100.1,64},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(max.y, switch1.u3) annotation (Line(points={{26.6,40},{38,40},{38,
              8},{50,8}}, color={0,0,127}));
      connect(min.y, max.u2) annotation (Line(points={{1,20},{8,20},{8,36.4},{
              12.8,36.4}}, color={0,0,127}));
      connect(P1_HP_off.y[1], max.u1) annotation (Line(points={{1,50},{8,50},{8,
              43.6},{12.8,43.6}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P1")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P1_onlyTABS;

    model P1_onlyVent "hydraulic pumps logic"

      Modelica.Blocks.Tables.CombiTable1D P1_HP_off(table=[-5,0.30; 0,0.1; 5,
            0.70]) "P1 action if HP is off"
        annotation (Placement(transformation(extent={{-20,40},{0,60}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
            iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
      Modelica.Blocks.Logical.Switch switch1
        annotation (Placement(transformation(extent={{52,10},{72,-10}})));
      Modelica.Blocks.Logical.Switch switch2
        annotation (Placement(transformation(extent={{0,-20},{20,-40}})));
      Modelica.Blocks.Sources.Constant twoHPs(k=0.8) "two HPs working"
        annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
      Modelica.Blocks.Sources.Constant oneHP(k=0.55) "only one HP working"
        annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
      Modelica.Blocks.Math.RealToBoolean realToBoolean(threshold=1.5)
        annotation (Placement(transformation(extent={{50,-70},{30,-50}})));
      Modelica.Blocks.Math.Gain gain(k=28300/3600)
        annotation (Placement(transformation(extent={{78,-4},{86,4}})));
      Modelica.Blocks.Sources.RealExpression off_conditions(y=if signalBus.HP_onoff
             == false and signalBus.P04_mod == 0 then 0 else 1)
        annotation (Placement(transformation(extent={{40,74},{60,94}})));
      Modelica.Blocks.Sources.RealExpression realExpression(y=gain.y*
            off_conditions.y)
        annotation (Placement(transformation(extent={{40,54},{60,74}})));
      Modelica.Blocks.Sources.Constant min(k=1)
        annotation (Placement(transformation(extent={{-20,14},{0,34}})));
      Modelica.Blocks.Math.Min max
        annotation (Placement(transformation(extent={{18,34},{30,46}})));
    equation
      connect(dataBus.T1, add.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,56},{-62,56}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T7, add.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,44},{-62,44}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add.y, P1_HP_off.u[1])
        annotation (Line(points={{-39,50},{-22,50}}, color={0,0,127}));
      connect(signalBus.HP_onoff, switch1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,20},{46,20},{46,0},{50,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(oneHP.y, switch2.u3) annotation (Line(points={{-39,-10},{-12,-10},{-12,
              -22},{-2,-22}}, color={0,0,127}));
      connect(twoHPs.y, switch2.u1) annotation (Line(points={{-39,-50},{-12,-50},{-12,
              -38},{-2,-38}}, color={0,0,127}));
      connect(switch2.y, switch1.u1) annotation (Line(points={{21,-30},{30,-30},
              {40,-30},{40,-8},{50,-8}},
                                     color={0,0,127}));
      connect(signalBus.HP_mod, realToBoolean.u) annotation (Line(
          points={{100.1,0.1},{100.1,-60},{52,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(realToBoolean.y, switch2.u2) annotation (Line(points={{29,-60},{-20,-60},
              {-20,-30},{-2,-30}}, color={255,0,255}));
      connect(gain.u, switch1.y)
        annotation (Line(points={{77.2,0},{76,0},{73,0}}, color={0,0,127}));
      connect(realExpression.y, signalBus.P0102_mod) annotation (Line(points={{
              61,64},{100.1,64},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(P1_HP_off.y[1], max.u1) annotation (Line(points={{1,50},{8.5,50},
              {8.5,43.6},{16.8,43.6}}, color={0,0,127}));
      connect(min.y, max.u2) annotation (Line(points={{1,24},{10,24},{10,36.4},
              {16.8,36.4}}, color={0,0,127}));
      connect(max.y, switch1.u3) annotation (Line(points={{30.6,40},{40,40},{40,
              8},{50,8}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200}),                                       Text(
              extent={{-62,76},{78,-64}},
              lineColor={28,108,200},
              textString="P1")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
    end P1_onlyVent;

    package RBCBaseline
      model P5_baseline "hydraulic pumps logic p05"

        DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{-80,20}}),
              iconTransformation(extent={{-110,-10},{-90,10}})));
        SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                  20}}), iconTransformation(extent={{92,-10},{112,10}})));
        outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
              0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
              IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
              IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        Modelica.Blocks.Tables.CombiTable1D cooCurve_TABS(table=[273.15 + 10,
              273.15 + 19; 273.15 + 15,273.15 + 20; 273.15 + 18,273.15 + 20;
              273.15 + 23,273.15 + 21; 273.15 + 30,273.15 + 19])
          "Infrax TABS cooling curve"
          annotation (Placement(transformation(extent={{-64,40},{-44,60}})));
        Modelica.Blocks.Nonlinear.Limiter limiter(uMax=273.15 + 21, uMin=273.15 + 19)
          annotation (Placement(transformation(extent={{-36,40},{-16,60}})));
        IDEAS.Controls.Continuous.LimPID conP05(
          initType=Modelica.Blocks.Types.InitPID.InitialState,
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          Td=0,
          reverseAction=true,
          k=10,
          Ti(displayUnit="s") = 45) "Controller for TABS pump"
          annotation (Placement(transformation(extent={{72,40},{92,60}})));
        Modelica.Blocks.Logical.GreaterThreshold greaterThreshold
          annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
        Modelica.Blocks.Math.BooleanToReal compensationFactor(realTrue=1.5, realFalse=
             0.5) "compensation factor computation"
          annotation (Placement(transformation(extent={{-8,-40},{12,-20}})));
        Modelica.Blocks.Math.Product product
          annotation (Placement(transformation(extent={{24,-40},{44,-20}})));
        Modelica.Blocks.Math.Feedback feedback annotation (Placement(transformation(
              extent={{-10,-10},{10,10}},
              rotation=-90,
              origin={-60,-20})));
        Modelica.Blocks.Math.Add add
          annotation (Placement(transformation(extent={{-4,34},{16,54}})));
        Modelica.Blocks.Math.Max dewProt "dew protection"
          annotation (Placement(transformation(extent={{26,40},{46,60}})));
        Modelica.Blocks.Sources.RealExpression DewPoiThre(y=sim.TDewPoi + 3)
          "dew point temperature threshold"
          annotation (Placement(transformation(extent={{-4,60},{16,80}})));
        Modelica.Blocks.Math.Product product1
          annotation (Placement(transformation(extent={{60,70},{80,90}})));
        Modelica.Blocks.Math.BooleanToReal cooModReal(realTrue=1, realFalse=0)
          "compensation factor computation"
          annotation (Placement(transformation(extent={{28,78},{44,94}})));
        IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 rmot
          annotation (Placement(transformation(extent={{-96,40},{-76,60}})));
        IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
              "TABS supply cooling temperature", u(
            min=289.15,
            max=297.15,
            unit="K"))
          annotation (Placement(transformation(extent={{52,44},{64,56}})));
      equation

        connect(dataBus.T17, conP05.u_m) annotation (Line(
            points={{-99.9,0.1},{-99.9,20},{82,20},{82,38}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,-6},{-3,-6}},
            horizontalAlignment=TextAlignment.Right));
        connect(compensationFactor.u, greaterThreshold.y)
          annotation (Line(points={{-10,-30},{-19,-30}}, color={255,0,255}));
        connect(compensationFactor.y, product.u1) annotation (Line(points={{13,-30},{16,
                -30},{16,-24},{22,-24}}, color={0,0,127}));
        connect(signalBus.baseSetpoint, feedback.u1) annotation (Line(
            points={{100,0},{-60,0},{-60,-12}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,6},{-3,6}},
            horizontalAlignment=TextAlignment.Right));
        connect(dataBus.Tavg_building, feedback.u2) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-68,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(feedback.y, greaterThreshold.u)
          annotation (Line(points={{-60,-29},{-60,-30},{-42,-30}}, color={0,0,127}));
        connect(feedback.y, product.u2) annotation (Line(points={{-60,-29},{-60,-50},{
                16,-50},{16,-36},{22,-36}}, color={0,0,127}));
        connect(add.u1, limiter.y)
          annotation (Line(points={{-6,50},{-15,50}}, color={0,0,127}));
        connect(cooCurve_TABS.y[1], limiter.u)
          annotation (Line(points={{-43,50},{-38,50}}, color={0,0,127}));
        connect(product.y, add.u2) annotation (Line(points={{45,-30},{56,-30},{56,-6},
                {-14,-6},{-14,38},{-6,38}}, color={0,0,127}));
        connect(add.y, dewProt.u2)
          annotation (Line(points={{17,44},{24,44}}, color={0,0,127}));
        connect(DewPoiThre.y, dewProt.u1) annotation (Line(points={{17,70},{20,70},{20,
                56},{24,56}}, color={0,0,127}));
        connect(conP05.y, product1.u2) annotation (Line(points={{93,50},{94,50},
                {94,66},{44,66},{44,74},{58,74}}, color={0,0,127}));
        connect(product1.y, signalBus.P05_mod) annotation (Line(points={{81,80},
                {100,80},{100,0}}, color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(cooModReal.y, product1.u1)
          annotation (Line(points={{44.8,86},{58,86}}, color={0,0,127}));
        connect(signalBus.coolMode, cooModReal.u) annotation (Line(
            points={{100,0},{100,100},{8,100},{8,86},{26.4,86}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(rmot.TRm, cooCurve_TABS.u[1])
          annotation (Line(points={{-75.4,50},{-66,50}}, color={0,0,127}));
        connect(dewProt.y, overwrite.u)
          annotation (Line(points={{47,50},{50.8,50}}, color={0,0,127}));
        connect(overwrite.y, conP05.u_s)
          annotation (Line(points={{64.6,50},{70,50}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                Rectangle(
                extent={{-100,100},{100,-100}},
                lineColor={28,108,200}),                                       Text(
                extent={{-62,76},{78,-64}},
                lineColor={28,108,200},
                textString="P5")}),    Diagram(coordinateSystem(preserveAspectRatio=false)));
      end P5_baseline;
    end RBCBaseline;
  end Pumps;

  package Valves

    model ThreeWayValveTABS "controller of the mixing 3-way valve of TABS"
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Buildings.Controls.Continuous.LimPID con3WayHea(
        reverseAction=true,
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Td=0,
        k=5,
        Ti(displayUnit="min") = 60) "Controller for 3-way valve"
        annotation (Placement(transformation(extent={{0,40},{20,60}})));
      Modelica.Blocks.Tables.CombiTable1D heaCurve_TABS(table=[-10,27; 0,24.5;
            15,22.5]) "TABS heating curve"
        annotation (Placement(transformation(extent={{-30,40},{-10,60}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{46,46},{66,66}})));
      Modelica.Blocks.Sources.Constant const(k=1)
        annotation (Placement(transformation(extent={{-50,70},{-30,90}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-58,40},{-38,60}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-98,34},{-78,54}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-52,10},{-32,30}})));
      Modelica.Blocks.Sources.Constant const2(k=273.15)
        annotation (Placement(transformation(extent={{-86,-2},{-66,18}})));
      Modelica.Blocks.Sources.Constant const3(k=0)
        annotation (Placement(transformation(extent={{-54,-22},{-34,-2}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{-10,-14},{10,6}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{52,-6},{72,14}})));
      Modelica.Blocks.Sources.Constant restMode(k=0)
        annotation (Placement(transformation(extent={{46,-90},{66,-70}})));
      Components.RunningMeanTemperature3points runningMeanTemperature3points
        annotation (Placement(transformation(extent={{-98,56},{-78,76}})));
    equation
      connect(heaCurve_TABS.y[1], con3WayHea.u_s)
        annotation (Line(points={{-9,50},{-2,50}}, color={0,0,127}));
      connect(con3WayHea.y, add.u2)
        annotation (Line(points={{21,50},{32,50},{44,50}}, color={0,0,127}));
      connect(const.y, add.u1) annotation (Line(points={{-29,80},{32,80},{32,62},
              {44,62}},color={0,0,127}));
      connect(heaCurve_TABS.u[1], add1.y) annotation (Line(points={{-32,50},{
              -34,50},{-37,50}}, color={0,0,127}));
      connect(const1.y, add1.u2) annotation (Line(points={{-77,44},{-77,44},{
              -60,44}},   color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,26},{-54,26}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const2.y, add2.u2) annotation (Line(points={{-65,8},{-60,8},{-60,
              14},{-54,14}},       color={0,0,127}));
      connect(add2.y, con3WayHea.u_m) annotation (Line(points={{-31,20},{-31,24},
              {10,24},{10,38}}, color={0,0,127}));

      connect(add.y, heaCoo.u1) annotation (Line(points={{67,56},{74,56},{74,18},
              {-22,18},{-22,4},{-12,4}}, color={0,0,127}));
      connect(signalBus.heatMode, heaCoo.u2) annotation (Line(
          points={{100,0},{100,0},{100,20},{-24,20},{-24,-4},{-12,-4}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(restSelect.y, signalBus.TABS_3way_signal) annotation (Line(points={{73,4},{
              100,4},{100,0}},               color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(signalBus.restMode, restSelect.u2) annotation (Line(
          points={{100,0},{100,20},{20,20},{20,4},{50,4}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(heaCoo.y, restSelect.u3)
        annotation (Line(points={{11,-4},{50,-4}}, color={0,0,127}));
      connect(restMode.y, restSelect.u1) annotation (Line(points={{67,-80},{80,
              -80},{80,-10},{28,-10},{28,12},{50,12}}, color={0,0,127}));
      connect(const3.y, heaCoo.u3) annotation (Line(points={{-33,-12},{-22,-12},
              {-12,-12}}, color={0,0,127}));
      connect(runningMeanTemperature3points.TRm, add1.u1) annotation (Line(
            points={{-77.4,66},{-68,66},{-68,56},{-60,56}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end ThreeWayValveTABS;

    model ThreeWayValvePC "controller of the mixing 3-way valve of TABS"
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Modelica.Blocks.Interfaces.BooleanInput coo
        annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
      Modelica.Blocks.Math.BooleanToReal booleanToReal
        annotation (Placement(transformation(extent={{-40,-10},{-20,10}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{6,-10},{26,10}})));
      Modelica.Blocks.Sources.Constant const(k=1)
        annotation (Placement(transformation(extent={{-40,26},{-20,46}})));
    equation
      connect(coo, booleanToReal.u) annotation (Line(points={{-100,0},{-56,0},{
              -42,0}}, color={255,0,255}));
      connect(booleanToReal.y, add.u2) annotation (Line(points={{-19,0},{-8,0},
              {-8,-6},{4,-6}}, color={0,0,127}));
      connect(const.y, add.u1) annotation (Line(points={{-19,36},{-8,36},{-8,6},
              {4,6}}, color={0,0,127}));
      connect(add.y, signalBus.PC_3way_signal) annotation (Line(points={{27,0},
              {100.1,0},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end ThreeWayValvePC;

    model ThreeWayValveAHUcoils
      "controller of the mixing 3-way valve of AHU coils"
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      Buildings.Controls.Continuous.LimPID con3WayHea(
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Td=0,
        k=2,
        Ti(displayUnit="s") = 40,
        yMin=0.5,
        reverseAction=false)      "Controller for 3-way valve"
        annotation (Placement(transformation(extent={{6,26},{26,46}})));
      Buildings.Controls.Continuous.LimPID con3WayCoo(
        reverseAction=true,
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Td=0,
        k=5,
        Ti(displayUnit="s") = 40,
        yMin=0.5)                 "Controller for 3-way valve"
        annotation (Placement(transformation(extent={{6,-20},{26,0}})));
      Modelica.Blocks.Tables.CombiTable1D heaCurve_AHU(table=[0,20; 15,19])
        "AHU heating curve"
        annotation (Placement(transformation(extent={{-38,34},{-24,48}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-60,46},{-48,58}})));
      Modelica.Blocks.Sources.Constant const(k=273.15)
        annotation (Placement(transformation(extent={{-88,32},{-76,44}})));
      IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
        annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
      Modelica.Blocks.Math.Add add1(k2=+1)
        annotation (Placement(transformation(extent={{-14,30},{-2,42}})));
    equation
      connect(con3WayHea.y, signalBus.HeaCoi_3way_signal) annotation (Line(
            points={{27,36},{60,36},{60,0.1},{100.1,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(con3WayCoo.y, signalBus.CooCoi_3way_signal) annotation (Line(
            points={{27,-10},{60,-10},{60,0.1},{100.1,0.1}}, color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.TAirSupplyAHU, con3WayCoo.u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-40},{16,-40},{16,-22}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyAHU, con3WayHea.u_m) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,14},{16,14},{16,24}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const.y, add.u2) annotation (Line(points={{-75.4,38},{-68,38},{
              -68,48.4},{-61.2,48.4}}, color={0,0,127}));
      connect(add.y, heaCurve_AHU.u[1]) annotation (Line(points={{-47.4,52},{
              -42,52},{-42,41},{-39.4,41}}, color={0,0,127}));
      connect(add1.y, con3WayHea.u_s)
        annotation (Line(points={{-1.4,36},{1.3,36},{4,36}}, color={0,0,127}));
      connect(heaCurve_AHU.y[1], add1.u1) annotation (Line(points={{-23.3,41},{
              -18.65,41},{-18.65,39.6},{-15.2,39.6}}, color={0,0,127}));
      connect(const.y, add1.u2) annotation (Line(points={{-75.4,38},{-46,38},{
              -46,32.4},{-15.2,32.4}}, color={0,0,127}));
      connect(add1.y, con3WayCoo.u_s) annotation (Line(points={{-1.4,36},{0,36},
              {0,-10},{4,-10}}, color={0,0,127}));
      connect(add1.y, signalBus.T_AHU) annotation (Line(points={{-1.4,36},{0,36},
              {0,66},{100.1,66},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(sim.weaBus, weaBus) annotation (Line(
          points={{-84,92.8},{-78,92.8},{-78,70},{-70,70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(weaBus.Te, add.u1) annotation (Line(
          points={{-69.95,70.05},{-66,70.05},{-66,55.6},{-61.2,55.6}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end ThreeWayValveAHUcoils;

    model TwoWayValvesTABS
      TwoWayValveCCA3 twoWayValveCCA3_1
        annotation (Placement(transformation(extent={{-10,50},{10,70}})));
      TwoWayValveCCA2 twoWayValveCCA2_1
        annotation (Placement(transformation(extent={{-10,10},{10,30}})));
      TwoWayValveCCA1 twoWayValveCCA1_1
        annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
      TwoWayValveCCA0 twoWayValveCCA0_1
        annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    equation
      connect(dataBus, twoWayValveCCA3_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,60},{-10,60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA2_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,20},{-10,20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA1_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-20},{-10,-20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA0_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-60},{-10,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(twoWayValveCCA3_1.signalBus, signalBus) annotation (Line(
          points={{10.2,60},{52,60},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA2_1.signalBus, signalBus) annotation (Line(
          points={{10.2,20},{52,20},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA1_1.signalBus, signalBus) annotation (Line(
          points={{10.2,-20},{52,-20},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA0_1.signalBus, signalBus) annotation (Line(
          points={{10.2,-60},{52,-60},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
                                                                             Text(
              extent={{-70,80},{70,-60}},
              lineColor={28,108,200},
              textString="2-way valves")}),                          Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValvesTABS;

    model TwoWayValveCCA3 "controller of two-way valve in the third floor"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,23.5;
            26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=4)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Sources.Constant const(k=273.15)
        annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2) annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-32,-74},{-12,-54}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-74,36},{-54,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      Modelica.Blocks.Math.Gain[4] gain(k=(9.8/3600) .* structure.CCA_Areas[1:4])
        annotation (Placement(transformation(extent={{80,-2},{88,6}})));
      Modelica.Blocks.Routing.Replicator replicator(nout=4)
        annotation (Placement(transformation(extent={{62,-6},{76,10}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-32,-100},{-12,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{0,-86},{20,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{10,-32},{30,-12}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
      Pumps.P7off p7off
        annotation (Placement(transformation(extent={{0,40},{20,60}})));
      Modelica.Blocks.Sources.RealExpression[4] realExpression(y=p7off.onoff_gain
             .* gain.y)
                  annotation (Placement(transformation(extent={{40,22},{60,42}})));
    equation
      connect(dataBus.T3rdFlr_SZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-120,0.1},{-120,6},{-100,6},{-100,16.1},{-100,-11.5},
              {-82,-11.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_MTR, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-119.9,0.1},{-119.9,6},{-100,6},{-100,16.1},{-100,-10.5},
              {-82,-10.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_CPR, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-120,0.1},{-120,6},{-100,6},{-100,16.1},{-100,-9.5},{
              -82,-9.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_SmaR, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-119.9,0.1},{-119.9,6},{-100,6},{-100,16.1},{-100,-8.5},
              {-82,-8.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-26,20},{-26,8}},       color={0,0,127}));
      connect(const.y, add1.u2) annotation (Line(points={{-59,-40},{-54.5,-40},
              {-54.5,-22},{-52,-22}},
                               color={0,0,127}));
      connect(T3rdFlr.y, add1.u1)
        annotation (Line(points={{-59,-10},{-52,-10}},           color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-26,-16},{-26,
              -4}},     color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{-3,2},{2,2}},  color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{30,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-58},{-34,-58}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TretCCA3, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,-70},{-34,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(points={{-79.4,
              60},{-78,60},{-78,52},{-76,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-76,40}},
                         color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-53,46},
              {-52,46},{-52,20}},         color={0,0,127}));
      connect(replicator.y, gain.u)
        annotation (Line(points={{76.7,2},{76.7,2},{79.2,2}},
                                                            color={0,0,127}));
      connect(T3rdFlr.y, dataBus.Tavg_3rdFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.TretCCA3, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-86},{-99.9,-84},{-34,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-34,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-11,-64},{-8,-64},{
              -8,-68},{-2,-68}}, color={0,0,127}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-11,-90},{-8,-90},{
              -8,-84},{-2,-84}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{21,-76},{42,-76},
              {42,-50},{42,-10}}, color={0,0,127}));

      connect(restSelect.y, replicator.u) annotation (Line(points={{81,-30},{86,
              -30},{90,-30},{90,-12},{60.6,-12},{60.6,2}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100,0},{100,0},{100,-100},{-10,-100},{-10,-76},{-2,-76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100,0},{100,0},{100,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100,0},{100,0},{100,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{52,-60},
              {46,-60},{46,-30},{58,-30}}, color={255,0,255}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{31,-22},{34,
              -22},{34,-38},{58,-38}}, color={0,0,127}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{54,2},
              {54,-22},{58,-22}}, color={0,0,127}));
      connect(dataBus, p7off.dataBus) annotation (Line(
          points={{-100,0},{-100,0},{-100,46},{-100,50},{0,50}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(p7off.signalBus, signalBus) annotation (Line(
          points={{20.2,50},{60,50},{100,50},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(realExpression.y, signalBus.CCA3_valve_signal) annotation (Line(
            points={{61,32},{100,32},{100,0}},       color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA3;

    model TwoWayValveCCA2
      "controller of the two way valve in the second floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=4)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Sources.Constant const(k=273.15)
        annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-32,-76},{-12,-56}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Routing.Replicator replicator(nout=7)
        annotation (Placement(transformation(extent={{62,-6},{76,10}})));
      Modelica.Blocks.Math.Gain[7] gain(k=(9.8/3600) .* structure.CCA_Areas[5:11])
        annotation (Placement(transformation(extent={{80,-2},{88,6}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-32,-100},{-12,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{8,-86},{28,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{0,-32},{20,-12}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
      Pumps.P7off p7off
        annotation (Placement(transformation(extent={{0,48},{20,68}})));
      Modelica.Blocks.Sources.RealExpression[7] realExpression(y=p7off.onoff_gain .*
            gain.y)
                  annotation (Placement(transformation(extent={{40,22},{60,42}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-26,20},{-26,18},{-26,8}},   color={0,0,127}));
      connect(const.y, add1.u2) annotation (Line(points={{-59,-40},{-54.5,-40},
              {-54.5,-22},{-52,-22}}, color={0,0,127}));
      connect(T3rdFlr.y, add1.u1) annotation (Line(points={{-59,-10},{-54,-10},
              {-52,-10}}, color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-26,-16},{-26,
              -4}},         color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{-3,2},{2,2}},  color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{30,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-60},{-34,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,44},{-52,20}},     color={0,0,127}));
      connect(dataBus.TretCCA2, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-72},{-34,-72}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_NZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-11.5},{-82,-11.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_SZ, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-10},{-82,-10},{-82,-10.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_MT1, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-9.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_MT2, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-8.5},{-82,-8.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(replicator.y, gain.u)
        annotation (Line(points={{76.7,2},{78,2},{79.2,2}},
                                                     color={0,0,127}));
      connect(T3rdFlr.y, dataBus.Tavg_2ndFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,4},{-99.9,4},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-34,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-11,-90},{-6,-90},{
              -6,-84},{6,-84}}, color={0,0,127}));
      connect(dataBus.TretCCA2, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-88},{-99.9,-84},{-34,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1)
        annotation (Line(points={{-11,-66},{6,-66},{6,-68}}, color={0,0,127}));

      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{29,-76},{42,-76},
              {42,-10}}, color={0,0,127}));
      connect(restSelect.y, replicator.u) annotation (Line(points={{81,-30},{82,
              -30},{82,-12},{58,-12},{58,2},{60.6,2}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100,0},{100,0},{100,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100,0},{100,0},{100,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{54,-60},
              {48,-60},{48,-30},{58,-30}}, color={255,0,255}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{54,2},
              {54,-22},{58,-22}}, color={0,0,127}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{21,-22},{38,
              -22},{38,-38},{58,-38}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100,0},{100,-100},{0,-100},{0,-76},{6,-76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, p7off.dataBus) annotation (Line(
          points={{-100,0},{-100,58},{0,58}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(p7off.signalBus, signalBus) annotation (Line(
          points={{20.2,58},{56,58},{100,58},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(realExpression.y, signalBus.CCA2_valve_signal) annotation (Line(
            points={{61,32},{78,32},{100,32},{100,0}},       color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA2;

    model TwoWayValveCCA1
      "controller of the two way valve in the first floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=5)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Sources.Constant const(k=273.15)
        annotation (Placement(transformation(extent={{-80,-52},{-60,-32}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-42,-72},{-22,-52}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Routing.Replicator replicator(nout=9)
        annotation (Placement(transformation(extent={{62,-6},{76,10}})));
      Modelica.Blocks.Math.Gain[9] gain(k=(9.8/3600) .* structure.CCA_Areas[12:
            20])
        annotation (Placement(transformation(extent={{80,-2},{88,6}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{4,-86},{24,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{10,-32},{30,-12}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
      Modelica.Blocks.Sources.RealExpression[9] realExpression(y=p7off.onoff_gain .*
            gain.y)
                  annotation (Placement(transformation(extent={{40,22},{60,42}})));
      Pumps.P7off p7off
        annotation (Placement(transformation(extent={{0,50},{20,70}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-24,20},{-24,18},{-24,8},{-26,8}},
                                            color={0,0,127}));
      connect(const.y, add1.u2) annotation (Line(points={{-59,-42},{-48.5,-42},
              {-48.5,-22},{-52,-22}}, color={0,0,127}));
      connect(T3rdFlr.y, add1.u1) annotation (Line(points={{-59,-10},{-52,-10}},
                          color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-24,-16},{-24,
              -4},{-26,-4}},color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{0,2},{2,2}},   color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{25,2},{30,2}},
                                                 color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-56},{-44,-56}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,20}},              color={0,0,127}));
      connect(dataBus.TretCCA1, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-68},{-44,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_NZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-11.6},{-82,-11.6}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ1, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-10.8}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ2, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-10},{-82,-10}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_MT1, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-9.2}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_MT2, T3rdFlr.u[5]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-8.4},{-82,-8.4}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(replicator.y, gain.u) annotation (Line(points={{76.7,2},{79.2,2}},
                         color={0,0,127}));
      connect(T3rdFlr.y, dataBus.Tavg_1stFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,6},{-56,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-42,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-19,-90},{-8,-90},{
              -8,-84},{2,-84}}, color={0,0,127}));
      connect(dataBus.TretCCA1, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-82},{-42,-82},{-42,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-21,-62},{-10,-62},{
              -10,-68},{2,-68}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{25,-76},{34,-76},
              {34,-10},{42,-10}}, color={0,0,127}));
      connect(restSelect.y, replicator.u) annotation (Line(points={{81,-30},{82,
              -30},{82,-12},{60.6,-12},{60.6,2}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100,0},{100,0},{100,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100,0},{100,0},{100,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{40,-60},
              {40,-30},{58,-30}}, color={255,0,255}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{56,2},
              {56,-22},{58,-22}}, color={0,0,127}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{31,-22},{44,
              -22},{44,-38},{58,-38}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100,0},{100,0},{100,-98},{100,-100},{-16,-100},{-16,-76},{2,
              -76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, p7off.dataBus) annotation (Line(
          points={{-100,0},{-100,60},{0,60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(p7off.signalBus, signalBus) annotation (Line(
          points={{20.2,60},{60,60},{100,60},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(realExpression.y, signalBus.CCA1_valve_signal) annotation (Line(
            points={{61,32},{74,32},{100,32},{100,0}},       color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA1;

    model TwoWayValveCCA0
      "controller of the two way valve in the ground floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-52,10},{-32,30}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=6)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-22,-8},{-2,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Sources.Constant const(k=273.15)
        annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{6,-8},{26,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{34,-8},{54,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-36,-74},{-16,-54}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Routing.Replicator replicator(nout=15)
        annotation (Placement(transformation(extent={{62,-6},{76,10}})));
      Modelica.Blocks.Math.Gain[15] gain(k=(9.8/3600) .* structure.CCA_Areas[21:35])
        annotation (Placement(transformation(extent={{80,-2},{88,6}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-36,-100},{-16,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{0,-86},{20,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{10,-32},{30,-12}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
      Modelica.Blocks.Sources.RealExpression[15] realExpression(y=p7off.onoff_gain .*
            gain.y)
                  annotation (Placement(transformation(extent={{40,22},{60,42}})));
      Pumps.P7off p7off
        annotation (Placement(transformation(extent={{0,50},{20,70}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-31,20},
              {-28,20},{-28,18},{-28,8},{-24,8}},
                                            color={0,0,127}));
      connect(const.y, add1.u2) annotation (Line(points={{-59,-40},{-48.5,-40},
              {-48.5,-22},{-52,-22}}, color={0,0,127}));
      connect(T3rdFlr.y, add1.u1) annotation (Line(points={{-59,-10},{-52,-10}},
                          color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-28,-16},{-28,
              -4},{-24,-4}},color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-1,2},{4,2}},         color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{27,2},{32,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-58},{-38,-58}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,20},{-54,20}},     color={0,0,127}));
      connect(dataBus.TretCCA0, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-70},{-38,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_SVR, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-11.6667}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(dataBus.TGndFlr_1stAid, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-98,0.1},{-98,-12},{-82,-12},{-82,-11}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_KTR, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-10.3333},{-82,-10.3333}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT1, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-9.66667},{-82,-9.66667}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT2, T3rdFlr.u[5]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-9},{-82,-9}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_hall, T3rdFlr.u[6]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-8.33333}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(replicator.y, gain.u) annotation (Line(points={{76.7,2},{79.2,2}},
                         color={0,0,127}));
      connect(T3rdFlr.y, dataBus.Tavg_GndFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,6},{-99.9,6},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.TretCCA3, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-86},{-99.9,-84},{-38,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-38,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-15,-90},{-8,-90},{
              -8,-84},{-2,-84}}, color={0,0,127}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-15,-64},{-10,-64},{
              -10,-68},{-2,-68}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{21,-76},{44,-76},
              {44,-10}}, color={0,0,127}));

      connect(restSelect.y, replicator.u) annotation (Line(points={{81,-30},{86,
              -30},{86,-14},{60.6,-14},{60.6,2}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100,0},{100,0},{100,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100,0},{100,0},{100,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{52,-60},
              {48,-60},{48,-30},{58,-30}}, color={255,0,255}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100,0},{100,0},{100,-100},{-12,-100},{-12,-76},{-2,-76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{31,-22},{40,
              -22},{40,-38},{58,-38}}, color={0,0,127}));
      connect(valvePID.y, restSelect.u1)
        annotation (Line(points={{55,2},{58,2},{58,-22}}, color={0,0,127}));
      connect(dataBus, p7off.dataBus) annotation (Line(
          points={{-100,0},{-100,0},{-100,62},{-100,60},{0,60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(p7off.signalBus, signalBus) annotation (Line(
          points={{20.2,60},{56,60},{100,60},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(realExpression.y, signalBus.CCA0_valve_signal) annotation (Line(
            points={{61,32},{100,32},{100,0}},       color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA0;

    model Tavg_of_floors
      Tavg3Flr avg3rdT "Average temperature of third floor"
        annotation (Placement(transformation(extent={{-10,50},{10,70}})));
      Tavg2ndFlr avg2ndT "Average temperature of second floor"
        annotation (Placement(transformation(extent={{-10,10},{10,30}})));
      Tavg1stFlr avg1stT "Average temperature of first floor"
        annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
      TavgGndFlr avgGndT "Average temperature of ground floor"
        annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      IDEAS.Utilities.Math.Average ave(nin=4) "Building average temperature"
        annotation (Placement(transformation(extent={{40,-10},{60,10}})));
    equation
      connect(dataBus,avg3rdT. dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,60},{-10,60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, avg2ndT.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,20},{-10,20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus,avg1stT. dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-20},{-10,-20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus,avgGndT. dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-60},{-10,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(avg3rdT.y, ave.u[4]) annotation (Line(points={{11,60},{26,60},{26,
              1.5},{38,1.5}}, color={0,0,127}));
      connect(avg2ndT.y, ave.u[3]) annotation (Line(points={{11,20},{24,20},{24,
              0.5},{38,0.5}}, color={0,0,127}));
      connect(avg1stT.y, ave.u[2]) annotation (Line(points={{11,-20},{24,-20},{
              24,-0.5},{38,-0.5}}, color={0,0,127}));
      connect(avgGndT.y, ave.u[1]) annotation (Line(points={{11,-60},{24,-60},{
              24,-1.5},{38,-1.5}}, color={0,0,127}));
      connect(ave.y, dataBus.Tavg_building) annotation (Line(points={{61,0},{64,
              0},{64,86},{-99.9,86},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Tavg_of_floors;

    model Tavg3Flr "3rd floor average temp"

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=4)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-86,-54},{-66,-34}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    equation
      connect(dataBus.T3rdFlr_SZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-120,0.1},{-120,6},{-100,6},{-100,16.1},{-100,
              -45.5},{-88,-45.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_MTR, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-119.9,0.1},{-119.9,6},{-100,6},{-100,16.1},{
              -100,-44.5},{-88,-44.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_CPR, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-120,0.1},{-120,6},{-100,6},{-100,16.1},{-100,
              -43.5},{-88,-43.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_SmaR, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-119.9,0.1},{-119.9,6},{-100,6},{-100,16.1},{
              -100,-42.5},{-88,-42.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(T3rdFlr.y, dataBus.Tavg_3rdFlr) annotation (Line(points={{-65,-44},
              {-56,-44},{-56,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(T3rdFlr.y, y) annotation (Line(points={{-65,-44},{18,-44},{18,0},
              {110,0}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Tavg3Flr;

    model Tavg2ndFlr "average temperature of second floor"

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=4)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-84,-48},{-64,-28}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    equation
      connect(dataBus.T2ndFlr_NZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-39.5},{-86,-39.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_SZ, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-10},{-86,-10},{-86,-38.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_MT1, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-86,-12},{-86,-37.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_MT2, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-36.5},{-86,-36.5}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(T3rdFlr.y, dataBus.Tavg_2ndFlr) annotation (Line(points={{-63,-38},
              {-56,-38},{-56,4},{-99.9,4},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(T3rdFlr.y, y) annotation (Line(points={{-63,-38},{20,-38},{20,0},
              {110,0}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Tavg2ndFlr;

    model Tavg1stFlr "average tmperature of 1st floor"

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=5)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    equation
      connect(dataBus.T1stFlr_NZ, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-11.6},{-82,-11.6}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ1, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-10.8}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ2, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-10},{-82,-10}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_MT1, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-9.2}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_MT2, T3rdFlr.u[5]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-8.4},{-82,-8.4}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(T3rdFlr.y, dataBus.Tavg_1stFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,0},{-56,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(T3rdFlr.y, y) annotation (Line(points={{-59,-10},{22,-10},{22,0},
              {110,0}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Tavg1stFlr;

    model TavgGndFlr "average temperature of second floor"

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Utilities.Math.Average T3rdFlr(nin=6)
        "average temperature of 3rd floor zones"
        annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
      Modelica.Blocks.Interfaces.RealOutput y
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    equation
      connect(dataBus.TGndFlr_SVR, T3rdFlr.u[1]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-11.6667}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(dataBus.TGndFlr_1stAid, T3rdFlr.u[2]) annotation (Line(
          points={{-99.9,0.1},{-98,0.1},{-98,-12},{-82,-12},{-82,-11}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_KTR, T3rdFlr.u[3]) annotation (Line(
          points={{-99.9,0.1},{-99.9,-10.3333},{-82,-10.3333}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT1, T3rdFlr.u[4]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-9.66667},{-82,-9.66667}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT2, T3rdFlr.u[5]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-9},{-82,-9}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_hall, T3rdFlr.u[6]) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-12},{-82,-12},{-82,-8.33333}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(T3rdFlr.y, dataBus.Tavg_GndFlr) annotation (Line(points={{-59,-10},
              {-56,-10},{-56,6},{-99.9,6},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(T3rdFlr.y, y) annotation (Line(points={{-59,-10},{22,-10},{22,0},
              {110,0}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TavgGndFlr;

    package BaseClasses
      model TwoWayValveCCA
        "controller of the two way valve in the ground floor of TABS"
        import INFRAX;

        DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                  -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
        SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                  120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
        inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
              0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
              IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
              IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        Components.RunningMeanTemperature8hours runningMeanTemperature8hours
          annotation (Placement(transformation(extent={{-100,20},{-80,40}})));
        Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[273.15
               + 20,273.15 + 23; 273.15 + 24,273.15 + 23.5; 273.15 + 26,273.15
               + 23.8; 273.15 + 28,273.15 + 24.4; 273.15 + 35,273.15 + 26])
          "Building base setpoint table"
          annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
        IDEAS.Utilities.Math.Average FloorAvg
          "Average temperature of the floor zones"
          annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
        Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
          "TABS temperature difference setpoint (per floor)"
          annotation (Placement(transformation(extent={{6,-8},{26,12}})));
        IDEAS.Controls.Continuous.LimPID valvePID(
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          k=1,
          Ti(displayUnit="min") = 1800,
          yMin=0.2,
          initType=Modelica.Blocks.Types.InitPID.InitialOutput,
          y_start=1)
          annotation (Placement(transformation(extent={{34,-8},{54,12}})));
        Modelica.Blocks.Math.Add deltaTABS(k2=-1)
          "TABS temperature difference (per floor)"
          annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
        INFRAX.Data.Parameters.Structure structure
          annotation (Placement(transformation(extent={{40,80},{60,100}})));
        Modelica.Blocks.Math.Add add4(k2=-1)
          annotation (Placement(transformation(extent={{-36,-100},{-16,-80}})));
        Modelica.Blocks.Logical.Switch heaCoo
          annotation (Placement(transformation(extent={{0,-86},{20,-66}})));
        Modelica.Blocks.Logical.Switch restSelect
          annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
        Modelica.Blocks.Sources.Constant neutralOpen(k=0.2)
          "Valve opening in neutral mode or absence of demand"
          annotation (Placement(transformation(extent={{10,-48},{30,-28}})));
        Modelica.Blocks.Logical.Or or1
          annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
        Modelica.Blocks.Math.Add deltaSetPoint(k2=-1)
          "Base setpoint and floor average temperature difference"
          annotation (Placement(transformation(extent={{-22,-8},{-2,12}})));
      equation
        connect(floorSetPoint.y[1], valvePID.u_s)
          annotation (Line(points={{27,2},{32,2}}, color={0,0,127}));
        connect(dataBus.T24, deltaTABS.u1) annotation (Line(
            points={{-99.9,0.1},{-99.9,-44},{-42,-44}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));

        connect(dataBus.T24, add4.u2) annotation (Line(
            points={{-99.9,0.1},{-100,0.1},{-100,-96},{-38,-96}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(add4.y, heaCoo.u3) annotation (Line(points={{-15,-90},{-8,-90},{
                -8,-84},{-2,-84}}, color={0,0,127}));
        connect(deltaTABS.y, heaCoo.u1) annotation (Line(points={{-19,-50},{-10,
                -50},{-10,-68},{-2,-68}}, color={0,0,127}));
        connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{21,-76},{44,-76},
                {44,-10}}, color={0,0,127}));

        connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
            points={{100,0},{100,0},{100,-58},{82,-58},{82,-60}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
            points={{100,0},{100,0},{100,-68},{82,-68}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{52,-60},
                {48,-60},{48,-30},{58,-30}}, color={255,0,255}));
        connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
            points={{100,0},{100,0},{100,-100},{-12,-100},{-12,-76},{-2,-76}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(neutralOpen.y, restSelect.u3)
          annotation (Line(points={{31,-38},{58,-38}}, color={0,0,127}));
        connect(valvePID.y, restSelect.u1)
          annotation (Line(points={{55,2},{58,2},{58,-22}}, color={0,0,127}));
        connect(runningMeanTemperature8hours.TRm, buildingBaseSetpoint.u[1])
          annotation (Line(points={{-79.4,30},{-62,30}}, color={0,0,127}));
        connect(FloorAvg.y, deltaSetPoint.u2) annotation (Line(points={{-39,-10},
                {-32,-10},{-32,-4},{-24,-4}}, color={0,0,127}));
        connect(buildingBaseSetpoint.y[1], deltaSetPoint.u1) annotation (Line(
              points={{-39,30},{-30,30},{-30,8},{-24,8}}, color={0,0,127}));
        connect(deltaSetPoint.y, floorSetPoint.u[1])
          annotation (Line(points={{-1,2},{4,2}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end TwoWayValveCCA;

      model TwoWayValveCCAbaseline
        "controller of the two way valve in the ground floor of TABS"
        import INFRAX;

        DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},
                  {-80,20}}),iconTransformation(extent={{-110,-10},{-90,10}})));
        SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                  120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
        inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
              0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
              IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
              IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        IDEAS.Utilities.Math.Average FloorAvg
          "Average temperature of the floor zones"
          annotation (Placement(transformation(extent={{-90,-30},{-70,-10}})));
        Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
          "TABS temperature difference setpoint (per floor)"
          annotation (Placement(transformation(extent={{-8,-18},{12,2}})));
        IDEAS.Controls.Continuous.LimPID valvePID(
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          k=1,
          Ti(displayUnit="min") = 1800,
          y_start=1,
          reverseAction=true,
          yMin=0.05)
          annotation (Placement(transformation(extent={{36,-18},{56,2}})));
        Modelica.Blocks.Math.Add deltaTABS(k2=-1)
          "TABS temperature difference (per floor)"
          annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
        Modelica.Blocks.Logical.Switch neutralCheck
          annotation (Placement(transformation(extent={{68,-10},{88,10}})));
        Modelica.Blocks.Sources.Constant neutralOpen(k=0.2)
          "Valve opening in neutral mode or absence of demand"
          annotation (Placement(transformation(extent={{20,12},{40,32}})));
        Modelica.Blocks.Math.Add deltaSetPoint(k2=-1)
          "Base setpoint and floor average temperature difference"
          annotation (Placement(transformation(extent={{-60,-18},{-40,2}})));
        Modelica.Blocks.Math.Abs abs "Absolute value of deltaTABS"
          annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
        Modelica.Blocks.Math.Abs abs1
                                     "Absolute value of deltaTABS"
          annotation (Placement(transformation(extent={{-32,-18},{-12,2}})));
        IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
              "TABS temperature difference set-point", u(
            min=-5,
            max=5,
            unit="K"))
          annotation (Placement(transformation(extent={{18,-14},{30,-2}})));
      equation
        connect(dataBus.T24, deltaTABS.u1) annotation (Line(
            points={{-99.9,0.1},{-99.9,-64},{-42,-64}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));

        connect(FloorAvg.y, deltaSetPoint.u2) annotation (Line(points={{-69,-20},
                {-68,-20},{-68,-14},{-62,-14}}, color={0,0,127}));
        connect(deltaTABS.y, abs.u)
          annotation (Line(points={{-19,-70},{-2,-70}}, color={0,0,127}));
        connect(abs.y, valvePID.u_m) annotation (Line(points={{21,-70},{46,-70},
                {46,-20}}, color={0,0,127}));
        connect(valvePID.y, neutralCheck.u3) annotation (Line(points={{57,-8},{
                66,-8}},                                   color={0,0,127}));
        connect(neutralOpen.y, neutralCheck.u1) annotation (Line(points={{41,22},
                {42,22},{42,8},{66,8}}, color={0,0,127}));
        connect(signalBus.restMode, neutralCheck.u2) annotation (Line(
            points={{100,0},{100,-20},{58,-20},{58,0},{66,0}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(signalBus.baseSetpoint, deltaSetPoint.u1) annotation (Line(
            points={{100,0},{100,40},{-70,40},{-70,-2},{-62,-2}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(deltaSetPoint.y, abs1.u)
          annotation (Line(points={{-39,-8},{-34,-8}}, color={0,0,127}));
        connect(abs1.y, floorSetPoint.u[1])
          annotation (Line(points={{-11,-8},{-10,-8}},color={0,0,127}));
        connect(floorSetPoint.y[1], overwrite.u)
          annotation (Line(points={{13,-8},{16.8,-8}}, color={0,0,127}));
        connect(overwrite.y, valvePID.u_s)
          annotation (Line(points={{30.6,-8},{34,-8}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end TwoWayValveCCAbaseline;
    end BaseClasses;

    package RBCBaseline
      model TwoWayValveCCA0
        extends BaseClasses.TwoWayValveCCAbaseline(FloorAvg(nin=6));
      equation
        connect(neutralCheck.y, signalBus.CCA0_val) annotation (Line(points={{89,0},{
                86,0},{86,0},{100,0}},
                                    color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(dataBus.TretCCA0, deltaTABS.u2) annotation (Line(
            points={{-99.9,0.1},{-99.9,-76},{-42,-76},{-42,-76}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,6},{-3,6}},
            horizontalAlignment=TextAlignment.Right));

        connect(dataBus.TGndFlr_SVR, FloorAvg.u[1]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-22},{-92,-22},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));

        connect(dataBus.TGndFlr_1stAid, FloorAvg.u[2]) annotation (Line(
            points={{-99.9,0.1},{-98,0.1},{-98,-26},{-92,-26},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.TGndFlr_KTR, FloorAvg.u[3]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.TGndFlr_MT1, FloorAvg.u[4]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.TGndFlr_MT2, FloorAvg.u[5]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.TGndFlr_hall, FloorAvg.u[6]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-30},{-92,-30},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));


      end TwoWayValveCCA0;

      model TwoWayValveCCA1
        extends BaseClasses.TwoWayValveCCAbaseline(FloorAvg(nin=5));
      equation

        connect(dataBus.TretCCA1, deltaTABS.u2) annotation (Line(
            points={{-99.9,0.1},{-99.9,-76},{-42,-76}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(neutralCheck.y, signalBus.CCA1_val) annotation (Line(points={{71,0},{100,
                0}}, color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(dataBus.T1stFlr_NZ, FloorAvg.u[1]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-82,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T1stFlr_SZ1, FloorAvg.u[2]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-22},{-82,-22},{-82,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T1stFlr_SZ2, FloorAvg.u[3]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-82,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T1stFlr_MT1, FloorAvg.u[4]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-22},{-82,-22},{-82,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T1stFlr_MT2, FloorAvg.u[5]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-82,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
      end TwoWayValveCCA1;

      model TwoWayValveCCA2
        extends BaseClasses.TwoWayValveCCAbaseline(FloorAvg(nin=4));
      equation

        connect(neutralCheck.y, signalBus.CCA2_val) annotation (Line(points={{81,0},{
                100,0}},
                     color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(dataBus.TretCCA2, deltaTABS.u2) annotation (Line(
            points={{-99.9,0.1},{-99.9,-76},{-42,-76}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,-6},{-3,-6}},
            horizontalAlignment=TextAlignment.Right));
        connect(dataBus.T2ndFlr_NZ, FloorAvg.u[1]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T2ndFlr_SZ, FloorAvg.u[2]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T2ndFlr_MT1, FloorAvg.u[3]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-22},{-92,-22},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T2ndFlr_MT2, FloorAvg.u[4]) annotation (Line(
            points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
      end TwoWayValveCCA2;

      model TwoWayValveCCA3
        extends BaseClasses.TwoWayValveCCAbaseline(FloorAvg(nin=4));
      equation

        connect(neutralCheck.y, signalBus.CCA3_val) annotation (Line(points={{89,0},{
                100,0}},
                     color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(dataBus.TretCCA3, deltaTABS.u2) annotation (Line(
            points={{-99.9,0.1},{-99.9,-76},{-42,-76}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}},
            horizontalAlignment=TextAlignment.Right));
        connect(dataBus.T3rdFlr_SZ, FloorAvg.u[1]) annotation (Line(
            points={{-99.9,0.1},{-100,0.1},{-100,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T3rdFlr_MTR, FloorAvg.u[2]) annotation (Line(
            points={{-99.9,0.1},{-100,0.1},{-100,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T3rdFlr_CPR, FloorAvg.u[3]) annotation (Line(
            points={{-99.9,0.1},{-100,0.1},{-100,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus.T3rdFlr_SmaR, FloorAvg.u[4]) annotation (Line(
            points={{-99.9,0.1},{-100,0.1},{-100,-20},{-92,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
      end TwoWayValveCCA3;

      model TwoWayValvesTABS
        TwoWayValveCCA3 twoWayCCA3Con "Control logic of 2way valve in floor 3"
          annotation (Placement(transformation(extent={{-10,50},{10,70}})));
        TwoWayValveCCA2 twoWayCCA2Con "Control logic of 2way valve in floor 3"
          annotation (Placement(transformation(extent={{-10,10},{10,30}})));
        TwoWayValveCCA1 twoWayCCA1Con "Control logic of 2way valve in floor 1"
          annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
        TwoWayValveCCA0 twoWayCCA0Con "Control logic of 2way valve in floor 0"
          annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
        DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                  -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
        SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                  120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      equation
        connect(dataBus, twoWayCCA3Con.dataBus) annotation (Line(
            points={{-100,0},{-56,0},{-56,60},{-10,60}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus, twoWayCCA2Con.dataBus) annotation (Line(
            points={{-100,0},{-56,0},{-56,20},{-10,20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus, twoWayCCA1Con.dataBus) annotation (Line(
            points={{-100,0},{-56,0},{-56,-20},{-10,-20}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(dataBus, twoWayCCA0Con.dataBus) annotation (Line(
            points={{-100,0},{-56,0},{-56,-60},{-10,-60}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(twoWayCCA3Con.signalBus, signalBus) annotation (Line(
            points={{10.2,60},{52,60},{52,0},{100,0}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(twoWayCCA2Con.signalBus, signalBus) annotation (Line(
            points={{10.2,20},{52,20},{52,0},{100,0}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(twoWayCCA1Con.signalBus, signalBus) annotation (Line(
            points={{10.2,-20},{52,-20},{52,0},{100,0}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(twoWayCCA0Con.signalBus, signalBus) annotation (Line(
            points={{10.2,-60},{52,-60},{52,0},{100,0}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
                                                                               Text(
                extent={{-70,80},{70,-60}},
                lineColor={28,108,200},
                textString="2-way valves")}),                          Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end TwoWayValvesTABS;

      model ThreeWayValveTABS_baseline
        "controller of the mixing 3-way valve of TABS"
        DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                  -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
        SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                  120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
        inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
              0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
              IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
              IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
          annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
        IDEAS.Controls.Continuous.LimPID     con3WayHea(
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          Td=0,
          k=5,
          Ti(displayUnit="min") = 60,
          y_start=1)                  "Controller for 3-way valve"
          annotation (Placement(transformation(extent={{26,40},{46,60}})));
        Modelica.Blocks.Tables.CombiTable1D heaCurve_TABS(table=[273.15 - 8,
              273.15 + 26; 273.15,273.15 + 23.5; 273.15 + 5,273.15 + 22.5;
              273.15 + 15,273.15 + 21])
          "Infrax TABS heating curve"
          annotation (Placement(transformation(extent={{-66,40},{-46,60}})));
        Modelica.Blocks.Sources.Constant cooMode(k=1)
          "In cooling mode, valve is opened"
          annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
        Modelica.Blocks.Logical.Switch heaCheck "Checking if heating mode"
          annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
        Modelica.Blocks.Logical.Switch neutralCheck
          annotation (Placement(transformation(extent={{52,16},{72,-4}})));
        Modelica.Blocks.Sources.Constant restMode(k=0)
          "In neutral mode valve is closed"
          annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
        Modelica.Blocks.Nonlinear.Limiter limiter(uMax=273.15 + 30, uMin=273.15
               + 23)
          annotation (Placement(transformation(extent={{-36,40},{-16,60}})));
        IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 rmot
          annotation (Placement(transformation(extent={{-96,40},{-76,60}})));
        IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
              "TABS supply heating temperature", u(
            min=293.15,
            max=313.15,
            unit="K"))
          annotation (Placement(transformation(extent={{0,44},{12,56}})));
      equation

        connect(signalBus.heatMode, heaCheck.u2) annotation (Line(
            points={{100,0},{100,20},{-24,20},{-24,-2},{-12,-2}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));

        connect(neutralCheck.y, signalBus.TABS_3way_signal) annotation (Line(
              points={{73,6},{100,6},{100,0}}, color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(signalBus.restMode, neutralCheck.u2) annotation (Line(
            points={{100,0},{100,20},{20,20},{20,6},{50,6}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-6,3},{-6,3}}));
        connect(heaCheck.y, neutralCheck.u3) annotation (Line(points={{11,-2},{
                30,-2},{30,14},{50,14}}, color={0,0,127}));
        connect(restMode.y, neutralCheck.u1) annotation (Line(points={{21,-50},
                {40,-50},{40,-2},{50,-2}}, color={0,0,127}));
        connect(cooMode.y, heaCheck.u3)
          annotation (Line(points={{-39,-10},{-12,-10}}, color={0,0,127}));
        connect(dataBus.T24, con3WayHea.u_m) annotation (Line(
            points={{-99.9,0.1},{-99.9,26},{36,26},{36,38}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,-6},{-3,-6}},
            horizontalAlignment=TextAlignment.Right));
        connect(con3WayHea.y, heaCheck.u1) annotation (Line(points={{47,50},{50,
                50},{50,24},{-18,24},{-18,6},{-12,6}}, color={0,0,127}));
        connect(limiter.u, heaCurve_TABS.y[1])
          annotation (Line(points={{-38,50},{-45,50}}, color={0,0,127}));
        connect(limiter.y, signalBus.T_TABS) annotation (Line(points={{-15,50},
                {-8,50},{-8,82},{100,82},{100,0}}, color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
        connect(rmot.TRm, heaCurve_TABS.u[1])
          annotation (Line(points={{-75.4,50},{-68,50}}, color={0,0,127}));
        connect(limiter.y, overwrite.u)
          annotation (Line(points={{-15,50},{-1.2,50}}, color={0,0,127}));
        connect(overwrite.y, con3WayHea.u_s)
          annotation (Line(points={{12.6,50},{24,50}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end ThreeWayValveTABS_baseline;
    end RBCBaseline;
  end Valves;

  package Situations

    model Situations
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      SituationSelector sitSel
        "Control logic that decides how the cooling tower is working depending on the situation"
        annotation (Placement(transformation(extent={{-62,-10},{-42,10}})));
      SituationActions comCon
        "signals to the different components of the cooling tower system"
        annotation (Placement(transformation(extent={{0,-10},{20,10}})));
      CoolingTower cooTowCon
        annotation (Placement(transformation(extent={{0,-50},{20,-30}})));
      OverwriteBoolean overwriteBoolean2(
        description="Heat dissipattion boolean",
        min=0,
        max=1,
        unit="1")
        annotation (Placement(transformation(extent={{-36,2},{-32,6}})));
      OverwriteBoolean overwriteBoolean1(
        description="Relief borefield load boolean",
        min=0,
        max=1,
        unit="1")
        annotation (Placement(transformation(extent={{-34,-4},{-30,0}})));
      Modelica.Blocks.Sources.BooleanConstant booleanConstant(k=false)
        annotation (Placement(transformation(extent={{-20,-12},{-14,-6}})));
    equation
      connect(dataBus, sitSel.dataBus) annotation (Line(
          points={{-100,0},{-80,0},{-62,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(sitSel.signalBus, signalBus) annotation (Line(
          points={{-41.8,0},{-24,0},{-24,36},{100,36},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(cooTowCon.sit1, comCon.sit1) annotation (Line(points={{7.2,-30},{
              8,-30},{8,-20},{-26,-20},{-26,4},{0,4}}, color={255,0,255}));
      connect(dataBus, cooTowCon.dataBus) annotation (Line(
          points={{-100,0},{-100,0},{-100,-40},{0,-40}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(cooTowCon.signalBus, signalBus) annotation (Line(
          points={{20.2,-40},{60,-40},{100,-40},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(comCon.p10, signalBus.P10_signal) annotation (Line(points={{21,6},
              {56,6},{98,6},{98,4},{98,0},{100,0},{100,0}}, color={255,127,0}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(comCon.p11, signalBus.P11_signal) annotation (Line(points={{21,2},
              {100,2},{100,0}}, color={255,127,0}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(comCon.twv_cc, signalBus.CC_2way_signal) annotation (Line(points=
              {{21,-2},{94,-2},{94,0},{100,0}}, color={255,0,255}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(comCon.twv_hex, signalBus.Hex_2way_signal) annotation (Line(
            points={{21,-6},{100,-6},{100,0}}, color={255,0,255}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(sitSel.sit1, overwriteBoolean2.u) annotation (Line(points={{-41,2},
              {-38,2},{-38,4},{-36.4,4}}, color={255,0,255}));
      connect(overwriteBoolean2.y, comCon.sit1)
        annotation (Line(points={{-31.6,4},{0,4}}, color={255,0,255}));
      connect(overwriteBoolean1.y, cooTowCon.sit2) annotation (Line(points={{
              -29.6,-2},{-10,-2},{-10,-18},{11,-18},{11,-30}}, color={255,0,255}));
      connect(overwriteBoolean1.y, comCon.sit2) annotation (Line(points={{-29.6,
              -2},{-16,-2},{-16,0},{0,0}}, color={255,0,255}));
      connect(sitSel.sit2, overwriteBoolean1.u)
        annotation (Line(points={{-41,-2},{-34.4,-2}}, color={255,0,255}));
      connect(booleanConstant.y, comCon.sit3) annotation (Line(points={{-13.7,
              -9},{-8.85,-9},{-8.85,-4},{0,-4}}, color={255,0,255}));
      connect(cooTowCon.sit3, booleanConstant.y) annotation (Line(points={{15,
              -30},{15,-12},{-13.7,-12},{-13.7,-9}}, color={255,0,255}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
                                                                             Text(
              extent={{-96,86},{96,-76}},
              lineColor={28,108,200},
              textString="Cooling
Tower")}),                                                           Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Situations;

    model SituationSelector
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      Modelica.Blocks.Logical.GreaterThreshold activeCoolingSetPoint(threshold=
            273.15 + 5)  "set point to activate active cooling"
        annotation (Placement(transformation(extent={{14,-96},{34,-76}})));
      Modelica.Blocks.Interfaces.BooleanOutput sit1
        annotation (Placement(transformation(extent={{100,10},{120,30}})));
      Modelica.Blocks.Interfaces.BooleanOutput sit2
        annotation (Placement(transformation(extent={{100,-30},{120,-10}})));
      Modelica.Blocks.Interfaces.BooleanOutput sit3
        annotation (Placement(transformation(extent={{100,-70},{120,-50}})));
      Modelica.Blocks.Logical.Hysteresis hysteresis(
        uLow=273.15 + 38,
        uHigh=273.15 + 40,
        pre_y_start=false)
        annotation (Placement(transformation(extent={{-60,10},{-40,30}})));
      Modelica.Blocks.Logical.And and1
        annotation (Placement(transformation(extent={{-20,10},{0,30}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=273.15 + 38)
        annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
      Modelica.Blocks.Logical.Hysteresis       activeCoolingSetPoint1(uLow=
            273.15 + 12, uHigh=273.15 + 15)
                         "set point to activate active cooling"
        annotation (Placement(transformation(extent={{-60,-50},{-40,-30}})));
      Modelica.Blocks.Logical.And and2
        annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
      Modelica.Blocks.Logical.And and3
        annotation (Placement(transformation(extent={{20,-30},{40,-10}})));
      Modelica.Blocks.Logical.Not not1
        annotation (Placement(transformation(extent={{-20,-70},{0,-50}})));
      Modelica.Blocks.Logical.And and4
        annotation (Placement(transformation(extent={{14,-62},{34,-42}})));
      Modelica.Blocks.Logical.And and5
        annotation (Placement(transformation(extent={{44,-88},{64,-68}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
        annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-60,-96},{-40,-76}})));
      Modelica.Blocks.Logical.And and6
        annotation (Placement(transformation(extent={{20,10},{40,30}})));
      Modelica.Blocks.Logical.And and7
        annotation (Placement(transformation(extent={{60,-30},{80,-10}})));
      Modelica.Blocks.Logical.And and8
        annotation (Placement(transformation(extent={{74,-70},{94,-50}})));
      Modelica.Blocks.Math.IntegerToBoolean integerToBoolean
        annotation (Placement(transformation(extent={{4,-6},{-8,6}})));
    equation
      connect(dataBus.T14, hysteresis.u) annotation (Line(
          points={{-99.9,0.1},{-99.9,20},{-62,20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(hysteresis.y, and1.u1)
        annotation (Line(points={{-39,20},{-39,20},{-22,20}},
                                                     color={255,0,255}));
      connect(dataBus.T14, lessThreshold.u) annotation (Line(
          points={{-99.9,0.1},{-99.9,-10},{-62,-10}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(lessThreshold.y, and2.u1) annotation (Line(points={{-39,-10},{-32,
              -10},{-32,-30},{-22,-30}}, color={255,0,255}));
      connect(activeCoolingSetPoint1.y, and2.u2) annotation (Line(points={{-39,
              -40},{-30,-40},{-30,-38},{-22,-38}}, color={255,0,255}));
      connect(and2.y, and3.u2) annotation (Line(points={{1,-30},{8,-30},{8,-28},{
              18,-28}}, color={255,0,255}));
      connect(sim.weaBus, weaBus) annotation (Line(
          points={{-81,93},{-78,93},{-78,70},{-70,70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(weaBus.Te, add.u2) annotation (Line(
          points={{-69.95,70.05},{-73.95,70.05},{-73.95,-92},{-62,-92}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add.y, activeCoolingSetPoint.u) annotation (Line(points={{-39,-86},
              {-14,-86},{12,-86}}, color={0,0,127}));
      connect(activeCoolingSetPoint.y, and5.u2) annotation (Line(points={{35,
              -86},{35,-86},{42,-86}}, color={255,0,255}));
      connect(not1.y, and4.u2)
        annotation (Line(points={{1,-60},{12,-60}}, color={255,0,255}));
      connect(and4.u1, and2.y) annotation (Line(points={{12,-52},{8,-52},{8,-30},
              {1,-30}}, color={255,0,255}));
      connect(and4.y, and5.u1) annotation (Line(points={{35,-52},{38,-52},{38,
              -62},{38,-78},{42,-78}}, color={255,0,255}));
      connect(and1.y, and6.u1)
        annotation (Line(points={{1,20},{10,20},{18,20}}, color={255,0,255}));
      connect(signalBus.coolMode, and6.u2) annotation (Line(
          points={{100,0},{56,0},{10,0},{10,12},{18,12}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(and6.y, sit1)
        annotation (Line(points={{41,20},{110,20}}, color={255,0,255}));
      connect(and7.y, sit2) annotation (Line(points={{81,-20},{110,-20},{110,
              -20}}, color={255,0,255}));
      connect(and5.y, and8.u2) annotation (Line(points={{65,-78},{68,-78},{68,
              -68},{72,-68}}, color={255,0,255}));
      connect(and8.y, sit3) annotation (Line(points={{95,-60},{110,-60},{110,
              -60}}, color={255,0,255}));
      connect(signalBus.coolMode, and8.u1) annotation (Line(
          points={{100,0},{76,0},{52,0},{52,-60},{72,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(and3.y, and7.u1) annotation (Line(points={{41,-20},{50,-20},{58,
              -20}}, color={255,0,255}));
      connect(signalBus.coolMode, and7.u2) annotation (Line(
          points={{100,0},{76,0},{52,0},{52,-28},{58,-28}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T7, activeCoolingSetPoint1.u) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-42},{-99.9,-40},{-62,-40}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T7, add.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-82},{-99.9,-80},{-62,-80}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.HP1_signal, integerToBoolean.u) annotation (Line(
          points={{100,0},{5.2,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
      connect(integerToBoolean.y, and1.u2) annotation (Line(points={{-8.6,0},{
              -26,0},{-26,12},{-22,12}}, color={255,0,255}));
      connect(integerToBoolean.y, not1.u) annotation (Line(points={{-8.6,0},{
              -26,0},{-26,-60},{-22,-60}}, color={255,0,255}));
      connect(and3.u1, not1.u) annotation (Line(points={{18,-20},{8,-20},{8,-12},
              {-26,-12},{-26,-60},{-22,-60}}, color={255,0,255}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end SituationSelector;

    model SituationActions
      import INFRAX;

      Modelica.Blocks.Interfaces.IntegerOutput p10
        annotation (Placement(transformation(extent={{100,50},{120,70}})));
      Modelica.Blocks.Interfaces.IntegerOutput p11
        annotation (Placement(transformation(extent={{100,10},{120,30}})));
      Modelica.Blocks.Interfaces.BooleanOutput twv_hex
        annotation (Placement(transformation(extent={{100,-70},{120,-50}})));
                                                       //valves v7 and v8
      Modelica.Blocks.Interfaces.BooleanOutput twv_cc
        annotation (Placement(transformation(extent={{100,-30},{120,-10}})));
                                                      //valves v9 and v10
      Modelica.Blocks.Interfaces.BooleanInput sit1
        annotation (Placement(transformation(extent={{-120,20},{-80,60}})));
      Modelica.Blocks.Interfaces.BooleanInput sit2
        annotation (Placement(transformation(extent={{-120,-20},{-80,20}})));
      Modelica.Blocks.Interfaces.BooleanInput sit3
        annotation (Placement(transformation(extent={{-120,-60},{-80,-20}})));

      INFRAX.Data.Parameters.Hydronic hydronic
        annotation (Placement(transformation(extent={{-10,80},{10,100}})));
    //  Modelica.Blocks.Interfaces.RealOutput p10_real
    //    annotation (Placement(transformation(extent={{100,30},{120,50}})));
    //  Modelica.Blocks.Interfaces.RealOutput p11_real
    //    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    //  Modelica.Blocks.Interfaces.RealOutput twv_cc_real
    //    annotation (Placement(transformation(extent={{100,-50},{120,-30}})));
    //  Modelica.Blocks.Interfaces.RealOutput twv_hex_real
    //    annotation (Placement(transformation(extent={{100,-90},{120,-70}})));
    equation

      if sit1 == true then
        p10 = 1;
    //    p10_real = 1;
        p11 = 1;
    //    p11_real = 1;
        twv_cc = false;
    //    twv_cc_real = 0;
        twv_hex = true;
    //    twv_hex_real = 1;
      elseif sit2 == true then
        p10 = 0;
    //    p10_real = 0;
        p11 = 1;
    //    p11_real = 1;
        twv_cc = true;
    //    twv_cc_real = 1;
        twv_hex = false;
    //    twv_hex_real = 0;
      elseif sit3 == true then
        p10 = 0;
    //    p10_real = 0;
        p11 = 1;
     //   p11_real = 1;
        twv_cc = true;
    //    twv_cc_real = 1;
        twv_hex = false;
    //    twv_hex_real = 0;
      else //sit0
        p10 = 0;
    //    p10_real = 0;
        p11 = 0;
    //    p11_real = 0;
        twv_cc = false;
    //    twv_cc_real = 0;
        twv_hex = false;
    //    twv_hex_real = 0;
      end if;

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end SituationActions;
  end Situations;

  package VAV
    model Damper

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      Modelica.Blocks.Math.Gain[21] maxFlows(k=maxGains)
        annotation (Placement(transformation(extent={{20,60},{40,80}})));
      parameter Modelica.SIunits.MassFlowRate[21] maxGains = {1600, 300, 150, 300, 350, 1400, 300, 300, 550, 400, 800, 300, 300, 100, 50, 3200, 900, 1600, (450+150), 70, 70}*1.21/3600 "damper max mass flow rates";
      parameter Modelica.SIunits.MassFlowRate[21] maxGains_extract = {950, 300, 150, 300, 350, 1150, 300, 300, 550, 400, 450, 300, 300, 100, 50, 3000, 900, 1600, 300, 70, 70}*1.21/3600;

      Modelica.Blocks.Math.Gain[21] heatOpening(k=openRatesHea)
                                                   annotation (Placement(transformation(extent={{-20,60},
                {0,80}})));

      parameter Real[21] openRatesHea = {0, 0.5, 1, 0.3, 1, 0.2, 0.2, 0.2, 0.75, 1, 0.25, 0.05, 0.05, 1, 1, 0.4, 0.25, 0.5, 1, 1, 1} "1 means not VAV or fully opened";

      Real[21] openRatesCoo = {conPID[1].y, conPID[2].y, 1, conPID[3].y, 1, conPID[4].y, conPID[5].y, conPID[6].y, 0.75, conPID[7].y, conPID[8].y, conPID[9].y, conPID[10].y, 1, 1, conPID[11].y, conPID[12].y, conPID[13].y, 1, 1, 1} "1 means not VAV or fully opened";
      Real[21] closeRatesCoo = {conPID1[1].y, conPID1[2].y, 1, conPID1[3].y, 1, conPID1[4].y, conPID1[5].y, conPID1[6].y, 0.75, conPID1[7].y, conPID1[8].y, conPID1[9].y, conPID1[10].y, 1, 1, conPID1[11].y, conPID1[12].y, conPID1[13].y, 1, 1, 1} "1 means not VAV or fully opened";

      parameter Real[13] y_min = {0.40625, 0.4, 0.4, 0.39285, 0, 0, 0.2, 0.8125, 0.2, 0.2, 0.0625, 0.2, 0.2};
      parameter Real[13] y_min_extract = {0, 0.4, 0.4, 0.26087, 0, 0, 0.2, 0.375, 0.2, 0.2, 0, 0.2, 0.2};

      Modelica.Blocks.Math.BooleanToReal[21] booleanToReal
        annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
      Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=true)
        "air supply to server"
        annotation (Placement(transformation(extent={{-100,60},{-80,80}})));
      IDEAS.Utilities.Math.Max[21] max(nin=2)
        annotation (Placement(transformation(extent={{50,-10},{70,10}})));
      Modelica.Blocks.Math.Gain[21] maxFlows1(
                                             k=maxGains)
        annotation (Placement(transformation(extent={{20,-60},{40,-40}})));
      IDEAS.Controls.Continuous.LimPID[13] conPID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        each k=0.5,
        each Ti=100,
        reverseAction=true,
        yMin=y_min)
        annotation (Placement(transformation(extent={{10,-2},{30,18}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,-2},{-30,18}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-78,-2},{-58,18}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,8},{-90,20}})));
      Modelica.Blocks.Sources.Constant const4(k=273.15)
        annotation (Placement(transformation(extent={{-100,-18},{-88,-6}})));
      Modelica.Blocks.Math.Add add5
        annotation (Placement(transformation(extent={{-20,-2},{0,18}})));
      Modelica.Blocks.Sources.RealExpression[21] realExpression(y=openRatesCoo
             .* booleanToReal1.y)
        annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
      Modelica.Blocks.Math.BooleanToReal[21] booleanToReal1
        annotation (Placement(transformation(extent={{-60,-80},{-40,-60}})));
      Modelica.Blocks.Sources.BooleanExpression booleanExpression1(
                                                                  y=true)
        "air supply to server"
        annotation (Placement(transformation(extent={{-100,-80},{-80,-60}})));
      Weather.Clock clock
        annotation (Placement(transformation(extent={{-100,90},{-90,100}})));
      Modelica.Blocks.Sources.RealExpression[21] realExpression1(y=if clock.hour
             > 6 and clock.hour < 18 then max.y elseif clock.hour == 5 then
            maxGains else signalBus.NightVentilation*maxGains)
        annotation (Placement(transformation(extent={{56,44},{76,64}})));
      Modelica.Blocks.Math.Gain[21] maxFlows2(k=maxGains_extract)
        annotation (Placement(transformation(extent={{20,-90},{40,-70}})));
      Modelica.Blocks.Math.Gain[21] maxFlows3(k=maxGains_extract)
        annotation (Placement(transformation(extent={{20,80},{40,100}})));
      IDEAS.Utilities.Math.Max[21] max1(
                                       nin=2)
        annotation (Placement(transformation(extent={{50,-38},{70,-18}})));
      Modelica.Blocks.Sources.RealExpression[21] realExpression2(y=if clock.hour
             > 6 and clock.hour < 18 then max1.y elseif clock.hour == 5 then
            maxGains_extract else signalBus.NightVentilation*maxGains_extract)
        annotation (Placement(transformation(extent={{56,14},{76,34}})));
      IDEAS.Controls.Continuous.LimPID[13] conPID1(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        each k=0.5,
        each Ti=100,
        reverseAction=true,
        yMin=y_min_extract)
        annotation (Placement(transformation(extent={{10,-28},{30,-8}})));
      Modelica.Blocks.Sources.RealExpression[21] realExpression3(y=
            closeRatesCoo .* booleanToReal1.y)
        annotation (Placement(transformation(extent={{-20,-90},
                {0,-70}})));
    equation
      connect(heatOpening.y, maxFlows.u)
        annotation (Line(points={{1,70},{1,70},{18,70}}, color={0,0,127}));
      connect(booleanToReal.y, heatOpening.u)
        annotation (Line(points={{-39,70},{-22,70}}, color={0,0,127}));
      connect(booleanExpression.y, booleanToReal[14].u) annotation (Line(points={{-79,
              70},{-70.5,70},{-62,70}}, color={255,0,255}));
      connect(signalBus.VAVheatingDemandInd[1], booleanToReal[1].u) annotation (
          Line(
          points={{100.1,0.1},{100.1,100},{-66,100},{-66,70},{-62,70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.VAVheatingDemandInd[2], booleanToReal[2].u);
      connect(signalBus.VAVheatingDemandInd[3], booleanToReal[3].u);
      connect(signalBus.VAVheatingDemandInd[4], booleanToReal[4].u);
      connect(signalBus.VAVheatingDemandInd[5], booleanToReal[5].u);
      connect(signalBus.VAVheatingDemandInd[6], booleanToReal[6].u);
      connect(signalBus.VAVheatingDemandInd[7], booleanToReal[7].u);
      connect(signalBus.VAVheatingDemandInd[8], booleanToReal[8].u);
      connect(signalBus.VAVheatingDemandInd[9], booleanToReal[9].u);
      connect(signalBus.VAVheatingDemandInd[10], booleanToReal[10].u);
      connect(signalBus.VAVheatingDemandInd[11], booleanToReal[11].u);
      connect(signalBus.VAVheatingDemandInd[12], booleanToReal[12].u);
      connect(signalBus.VAVheatingDemandInd[13], booleanToReal[13].u);
      connect(signalBus.VAVheatingDemandInd[14], booleanToReal[15].u);
      connect(signalBus.VAVheatingDemandInd[15], booleanToReal[16].u);
      connect(signalBus.VAVheatingDemandInd[16], booleanToReal[17].u);
      connect(signalBus.VAVheatingDemandInd[17], booleanToReal[18].u);
      connect(signalBus.VAVheatingDemandInd[18], booleanToReal[19].u);
      connect(signalBus.VAVheatingDemandInd[19], booleanToReal[20].u);
      connect(signalBus.VAVheatingDemandInd[20], booleanToReal[21].u);
      connect(maxFlows.y, max.u[1]) annotation (Line(points={{41,70},{44,70},{44,0},
              {48,0},{48,-1}},              color={0,0,127}));
      connect(const4.y,add4. u2) annotation (Line(points={{-87.4,-12},{-87.4,-12},{-86,
              -12},{-88,-12},{-80,-12},{-80,2}},   color={0,0,127}));
      connect(const4.y,add5. u2) annotation (Line(points={{-87.4,-12},{-56,-12},{-56,
              -6},{-26,-6},{-26,2},{-22,2}},       color={0,0,127}));
      connect(runningMeanTemperature8hours.TRm,add4. u1)
        annotation (Line(points={{-89.7,14},{-80,14}},   color={0,0,127}));
      connect(add4.y,buildingBaseSetpoint. u[1]) annotation (Line(points={{-57,8},{-54.5,
              8},{-52,8}},            color={0,0,127}));
      connect(buildingBaseSetpoint.y[1],add5. u1) annotation (Line(points={{-29,8},{
              -26,8},{-26,14},{-22,14}},      color={0,0,127}));
      connect(add5.y, conPID[1].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(add5.y, conPID[2].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(add5.y, conPID[3].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(dataBus.T3rdFlr_SZ, conPID[1].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-28},{20,-28},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_CPR, conPID[2].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-28},{20,-28},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_SmaR, conPID[3].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-28},{20,-28},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_SZ, conPID[4].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-28},{20,-28},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID[4].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(dataBus.TAirSupplyVAV[7], conPID[5].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-28},{20,-28},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[8], conPID[6].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-26},{22,-26},{22,-4},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[7], conPID[5].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,38},{100.1,34},{8,34},{8,8}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[8], conPID[6].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,34},{8,34},{8,8}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ1, conPID[7].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-26},{20,-26},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ2, conPID[8].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-28},{22,-28},{22,-4},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID[7].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(add5.y, conPID[8].u_s)
        annotation (Line(points={{1,8},{4.5,8},{8,8}}, color={0,0,127}));
      connect(maxFlows1.y, max.u[2]) annotation (Line(points={{41,-50},{44,-50},{44,
              1},{48,1}}, color={0,0,127}));
      connect(signalBus.TSupplySetPoints[12], conPID[9].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,34},{100.1,36},{8,36},{8,8}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[13], conPID[10].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,36},{8,36},{8,8}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[12], conPID[9].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-24},{20,-24},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[13], conPID[10].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-26},{20,-26},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID[11].u_s)
        annotation (Line(points={{1,8},{8,8}},       color={0,0,127}));
      connect(add5.y, conPID[12].u_s)
        annotation (Line(points={{1,8},{8,8}},       color={0,0,127}));
      connect(add5.y, conPID[13].u_s)
        annotation (Line(points={{1,8},{4,8},{8,8}}, color={0,0,127}));
      connect(dataBus.TGndFlr_KTR, conPID[11].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-26},{26,-26},{26,-4},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT1, conPID[12].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-22},{20,-22},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT2, conPID[13].u_m) annotation (Line(
          points={{-99.9,0.1},{-98,0.1},{-98,-26},{20,-26},{20,-4}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(realExpression.y, maxFlows1.u)
        annotation (Line(points={{1,-50},{18,-50}},          color={0,0,127}));
      connect(booleanExpression1.y, booleanToReal1[3].u) annotation (Line(points={{-79,
              -70},{-62,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[5].u) annotation (Line(points={{-79,
              -70},{-70.5,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[9].u) annotation (Line(points={{-79,
              -70},{-70.5,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[20].u) annotation (Line(points={{
              -79,-70},{-62,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[21].u) annotation (Line(points={{
              -79,-70},{-62,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[19].u) annotation (Line(points={{
              -79,-70},{-70,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[14].u) annotation (Line(points={{
              -79,-70},{-70.5,-70},{-62,-70}}, color={255,0,255}));
      connect(booleanExpression1.y, booleanToReal1[15].u) annotation (Line(points={{
              -79,-70},{-62,-70},{-62,-70}}, color={255,0,255}));
      connect(signalBus.VAVcoolingDemandInd[1], booleanToReal1[1].u) annotation (
          Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-98},{-62,-98},{-62,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.VAVcoolingDemandInd[2], booleanToReal1[2].u);
      connect(signalBus.VAVcoolingDemandInd[3], booleanToReal1[4].u);
      connect(signalBus.VAVcoolingDemandInd[4], booleanToReal1[6].u);
      connect(signalBus.VAVcoolingDemandInd[5], booleanToReal1[7].u);
      connect(signalBus.VAVcoolingDemandInd[6], booleanToReal1[8].u);
      connect(signalBus.VAVcoolingDemandInd[7], booleanToReal1[10].u);
      connect(signalBus.VAVcoolingDemandInd[8], booleanToReal1[11].u);
      connect(signalBus.VAVcoolingDemandInd[9], booleanToReal1[12].u);
      connect(signalBus.VAVcoolingDemandInd[10], booleanToReal1[13].u);
      connect(signalBus.VAVcoolingDemandInd[11], booleanToReal1[16].u);
      connect(signalBus.VAVcoolingDemandInd[12], booleanToReal1[17].u);
      connect(signalBus.VAVcoolingDemandInd[13], booleanToReal1[18].u);


      connect(maxFlows1.y, signalBus.VAV_coolingsignal) annotation (Line(points={{41,-50},
              {64,-50},{100,-50},{100,0}},                color={0,0,127}),
          Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(realExpression1.y, signalBus.VAV_signal) annotation (Line(points=
              {{77,54},{84,54},{84,0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(maxFlows2.y, max1.u[1]) annotation (Line(points={{41,-80},{46,-80},{46,
              -29},{48,-29}}, color={0,0,127}));
      connect(heatOpening.y, maxFlows3.u)
        annotation (Line(points={{1,70},{8,70},{8,90},{18,90}}, color={0,0,127}));
      connect(maxFlows3.y, max1.u[2]) annotation (Line(points={{41,90},{46,90},{46,-27},
              {48,-27}}, color={0,0,127}));
      connect(realExpression2.y, signalBus.VAV_signal_extract) annotation (Line(
            points={{77,24},{84,24},{84,0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(add5.y, conPID1[1].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(add5.y, conPID1[2].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(add5.y, conPID1[3].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(dataBus.T3rdFlr_SZ, conPID1[1].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-54},{20,-54},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_CPR, conPID1[2].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-54},{20,-54},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_SmaR, conPID1[3].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-54},{20,-54},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_SZ, conPID1[4].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-54},{20,-54},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID1[4].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(dataBus.TAirSupplyVAV[7], conPID1[5].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-54},{20,-54},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[8], conPID1[6].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-52},{22,-52},{22,-30},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[7], conPID1[5].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,4.1},{132.1,4.1},{100.1,4.1},{8,4.1},{8,-18}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(signalBus.TSupplySetPoints[8], conPID1[6].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,4.1},{132.1,4.1},{8,4.1},{8,-18}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ1, conPID1[7].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-52},{20,-52},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ2, conPID1[8].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-54},{22,-54},{22,-30},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID1[7].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(add5.y, conPID1[8].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(signalBus.TSupplySetPoints[12], conPID1[9].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,4.1},{132.1,4.1},{100.1,4.1},{8,4.1},{8,-18}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(signalBus.TSupplySetPoints[13], conPID1[10].u_s) annotation (Line(
          points={{100.1,0.1},{100.1,10},{8,10},{8,-18}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[12], conPID1[9].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-50},{20,-50},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[13], conPID1[10].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-52},{20,-52},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, conPID1[11].u_s)
        annotation (Line(points={{1,8},{0,8},{0,-18},{8,-18}}, color={0,0,127}));
      connect(add5.y, conPID1[12].u_s)
        annotation (Line(points={{1,8},{0,8},{0,-18},{8,-18}}, color={0,0,127}));
      connect(add5.y, conPID1[13].u_s)
        annotation (Line(points={{1,8},{8,8},{8,-18}}, color={0,0,127}));
      connect(dataBus.TGndFlr_KTR, conPID1[11].u_m) annotation (Line(
          points={{-99.9,0.1},{-81.9,0.1},{-81.9,-52},{26,-52},{26,-30},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT1, conPID1[12].u_m) annotation (Line(
          points={{-99.9,0.1},{-99.9,-48},{20,-48},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT2, conPID1[13].u_m) annotation (Line(
          points={{-99.9,0.1},{-98,0.1},{-98,-52},{20,-52},{20,-30}},
          color={255,204,51},
          thickness=0.5,
          visible=false), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(realExpression3.y, maxFlows2.u)
        annotation (Line(points={{1,-80},{10,-80},{18,
              -80}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Damper;

    model TWVVAVHeaCoi

      parameter Real[21] k = {2, 2, 2, 2, 2, 2, 2, 2, 5, 10, 5, 2, 2, 2, 2, 5, 5, 2, 2, 2, 2};
      parameter Modelica.SIunits.Time[21] Ti = {100, 100, 100, 100, 100, 100, 100, 100, 100, 120, 60, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100};
      parameter Real[21] yMin = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0} "for servers room";
      parameter Modelica.SIunits.Temperature[21] uLow = {-1, -2, -1, -2, -2, -1.2, -2, -2, -1, -0.5, 0, -2, -2, -0.1, -1, -0.5, -0.5, -0.3, -1, -1, -1};
      parameter Modelica.SIunits.Temperature[21] uHigh = {-0.5, -1.2, -0.5, -1.2, -1.2, 1.3, -1.2, -1.2, 0, 0.5, 1.5, 0, -1.2, 0, 0.5, 0.5, 0.5, -0.2, 0.5, 0.5, 0.5};


      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));

      outer IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Buildings.Controls.Continuous.LimPID[21] PID_VAV(
        reverseAction=true,
        initType=Modelica.Blocks.Types.InitPID.InitialState,
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        Td=0,
        k=k,
        Ti=Ti)
              "Controller for vav 3-way valves"
        annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{120,
                20}}), iconTransformation(extent={{90,-10},{110,10}})));
      Modelica.Blocks.Logical.Switch[21] switch1
        annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
      Modelica.Blocks.Sources.Constant[21] const1(k=0)
        annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
      Modelica.Blocks.Sources.BooleanExpression booleanExpression
        annotation (Placement(transformation(extent={{-94,-40},{-74,-20}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-14,74},{6,94}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-42,74},{-22,94}})));
      Components.RunningMeanDailyTemperature  runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-64,84},{-54,96}})));
      Modelica.Blocks.Sources.Constant const4(k=273.15)
        annotation (Placement(transformation(extent={{-64,58},{-52,70}})));
      Modelica.Blocks.Math.Add add5
        annotation (Placement(transformation(extent={{16,74},{36,94}})));
      Modelica.Blocks.Math.Add[21] add1(k1=-1, k2=+1)
        annotation (Placement(transformation(extent={{-20,0},{0,20}})));
      Modelica.Blocks.Sources.Constant[21] const2(k=1)
        annotation (Placement(transformation(extent={{-46,-12},{-36,-2}})));
    equation

      connect(const1.y, switch1.u3) annotation (Line(points={{-39,-50},{-31.5,-50},{
              -31.5,-38},{-22,-38}}, color={0,0,127}));
      connect(booleanExpression.y, switch1[14].u2) annotation (Line(points={{-73,-30},
              {-22,-30},{-22,-30}}, color={255,0,255}));
      connect(signalBus.VAVheatingDemandInd[1], switch1[1].u2) annotation (Line(
          points={{100,0},{100,0},{100,-102},{100,-100},{-34,-100},{-34,-30},{-22,-30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.VAVheatingDemandInd[2], switch1[2].u2);
      connect(signalBus.VAVheatingDemandInd[3], switch1[3].u2);
      connect(signalBus.VAVheatingDemandInd[4], switch1[4].u2);
      connect(signalBus.VAVheatingDemandInd[5], switch1[5].u2);
      connect(signalBus.VAVheatingDemandInd[6], switch1[6].u2);
      connect(signalBus.VAVheatingDemandInd[7], switch1[7].u2);
      connect(signalBus.VAVheatingDemandInd[8], switch1[8].u2);
      connect(signalBus.VAVheatingDemandInd[9], switch1[9].u2);
      connect(signalBus.VAVheatingDemandInd[10], switch1[10].u2);
      connect(signalBus.VAVheatingDemandInd[11], switch1[11].u2);
      connect(signalBus.VAVheatingDemandInd[12], switch1[12].u2);
      connect(signalBus.VAVheatingDemandInd[13], switch1[13].u2);
      connect(signalBus.VAVheatingDemandInd[14], switch1[15].u2);
      connect(signalBus.VAVheatingDemandInd[15], switch1[16].u2);
      connect(signalBus.VAVheatingDemandInd[16], switch1[17].u2);
      connect(signalBus.VAVheatingDemandInd[17], switch1[18].u2);
      connect(signalBus.VAVheatingDemandInd[18], switch1[19].u2);
      connect(signalBus.VAVheatingDemandInd[19], switch1[20].u2);
      connect(signalBus.VAVheatingDemandInd[20], switch1[21].u2);

      connect(switch1.y, signalBus.VAVcoils_signal) annotation (Line(points={{1,-30},
              {48,-30},{48,0},{100,0}},       color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(dataBus.T3rdFlr_SZ, PID_VAV[1].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_CPR, PID_VAV[2].u_m) annotation (Line(
          points={{-99.9,0.1},{-74,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T3rdFlr_SmaR, PID_VAV[4].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[3], PID_VAV[3].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[3], PID_VAV[3].u_s) annotation (Line(
          points={{100,0},{100,0},{100,52},{100,50},{-80,50},{-80,30},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const4.y,add4. u2) annotation (Line(points={{-51.4,64},{-51.4,64},
              {-50,64},{-52,64},{-44,64},{-44,78}},color={0,0,127}));
      connect(const4.y,add5. u2) annotation (Line(points={{-51.4,64},{-20,64},{
              -20,70},{10,70},{10,78},{14,78}},    color={0,0,127}));
      connect(runningMeanTemperature8hours.TRm,add4. u1)
        annotation (Line(points={{-53.7,90},{-44,90}},   color={0,0,127}));
      connect(add4.y,buildingBaseSetpoint. u[1]) annotation (Line(points={{-21,84},
              {-18.5,84},{-16,84}},   color={0,0,127}));
      connect(buildingBaseSetpoint.y[1],add5. u1) annotation (Line(points={{7,84},{
              10,84},{10,90},{14,90}},        color={0,0,127}));
      connect(add5.y, PID_VAV[1].u_s) annotation (Line(points={{37,84},{40,84},
              {40,48},{-62,48},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[2].u_s) annotation (Line(points={{37,84},{40,84},{40,48},
              {-62,48},{-62,30}},                  color={0,0,127}));
      connect(add5.y, PID_VAV[4].u_s) annotation (Line(points={{37,84},{40,84},
              {40,52},{-62,52},{-62,30}}, color={0,0,127}));
      connect(signalBus.TSupplySetPoints[5], PID_VAV[5].u_s) annotation (Line(
          points={{100,0},{100,0},{100,50},{100,48},{-62,48},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[5], PID_VAV[5].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T2ndFlr_SZ, PID_VAV[6].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,14},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, PID_VAV[6].u_s) annotation (Line(points={{37,84},{42,84},
              {42,52},{-68,52},{-68,30},{-62,30}}, color={0,0,127}));
      connect(signalBus.TSupplySetPoints[7], PID_VAV[7].u_s) annotation (Line(
          points={{100,0},{100,0},{100,46},{-62,46},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[8], PID_VAV[8].u_s) annotation (Line(
          points={{100,0},{100,0},{100,48},{-62,48},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[7], PID_VAV[7].u_m) annotation (Line(
          points={{-99.9,0.1},{-76,0.1},{-76,0},{-50,0},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[8], PID_VAV[8].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[9], PID_VAV[9].u_s) annotation (Line(
          points={{100,0},{100,0},{100,48},{-74,48},{-74,32},{-62,32},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[9], PID_VAV[9].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, PID_VAV[10].u_s) annotation (Line(points={{37,84},{36,84},
              {36,52},{-62,52},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[11].u_s) annotation (Line(points={{37,84},{38,84},
              {38,50},{38,46},{-62,46},{-62,30}}, color={0,0,127}));
      connect(dataBus.T1stFlr_SZ1, PID_VAV[10].u_m) annotation (Line(
          points={{-99.9,0.1},{-76,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T1stFlr_SZ2, PID_VAV[11].u_m) annotation (Line(
          points={{-99.9,0.1},{-74,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.VAVcoils_signal[12], PID_VAV[12].u_s) annotation (Line(
          points={{100,0},{100,0},{100,44},{-72,44},{-72,34},{-62,34},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TSupplySetPoints[13], PID_VAV[13].u_s) annotation (Line(
          points={{100,0},{100,0},{100,42},{-74,42},{-74,32},{-62,32},{-62,30}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[12], PID_VAV[12].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TAirSupplyVAV[13], PID_VAV[13].u_m) annotation (Line(
          points={{-99.9,0.1},{-80,0.1},{-80,2},{-50,2},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, PID_VAV[14].u_s) annotation (Line(points={{37,84},{36,84},
              {36,48},{-74,48},{-74,30},{-62,30}}, color={0,0,127}));
      connect(dataBus.TGndFlr_SVR, PID_VAV[14].u_m) annotation (Line(
          points={{-99.9,0.1},{-76,0.1},{-76,18},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, PID_VAV[15].u_s) annotation (Line(points={{37,84},{38,84},
              {38,42},{38,44},{-62,44},{-62,30}}, color={0,0,127}));
      connect(dataBus.TGndFlr_1stAid, PID_VAV[15].u_m) annotation (Line(
          points={{-99.9,0.1},{-75,0.1},{-75,18},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add5.y, PID_VAV[16].u_s) annotation (Line(points={{37,84},{37,40},
              {-62,40},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[17].u_s) annotation (Line(points={{37,84},{38,84},
              {38,38},{38,42},{-62,42},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[18].u_s) annotation (Line(points={{37,84},{32,84},
              {32,50},{-62,50},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[19].u_s) annotation (Line(points={{37,84},{36,84},
              {36,48},{36,44},{-62,44},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[20].u_s) annotation (Line(points={{37,84},{38,84},
              {38,46},{-64,46},{-64,32},{-62,32},{-62,30}}, color={0,0,127}));
      connect(add5.y, PID_VAV[21].u_s) annotation (Line(points={{37,84},{36,84},{36,
              46},{-62,46},{-62,30}},              color={0,0,127}));
      connect(dataBus.TGndFlr_KTR, PID_VAV[16].u_m) annotation (Line(
          points={{-99.9,0.1},{-76,0.1},{-76,18},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT1, PID_VAV[17].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_MT2, PID_VAV[18].u_m) annotation (Line(
          points={{-99.9,0.1},{-78,0.1},{-78,-2},{-50,-2},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_hall, PID_VAV[19].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_WStairs, PID_VAV[20].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TGndFlr_EStairs, PID_VAV[21].u_m) annotation (Line(
          points={{-99.9,0.1},{-50,0.1},{-50,18}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const2.y, add1.u2) annotation (Line(points={{-35.5,-7},{-29.75,-7},
              {-29.75,4},{-22,4}}, color={0,0,127}));
      connect(PID_VAV.y, add1.u1) annotation (Line(points={{-39,30},{-32,30},{
              -32,16},{-22,16}}, color={0,0,127}));
      connect(add1.y, switch1.u1) annotation (Line(points={{1,10},{2,10},{2,-12},
              {2,-14},{-26,-14},{-26,-22},{-22,-22}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TWVVAVHeaCoi;

  end VAV;

  model NightVentilation "night ventilation RBC"

    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));

    Modelica.Blocks.Sources.BooleanExpression on_off(y=if (clock.hour >= 0 and
          clock.hour < 5) or clock.hour > 22 then true else false)
      "Time zone for which the night ventilation can be activated"
      annotation (Placement(transformation(extent={{-60,66},{-40,86}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(
        threshold=273.15 + 10)
      annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
          IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    Modelica.Blocks.Math.Add add(k2=-1)
      annotation (Placement(transformation(extent={{-60,0},{-40,20}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis(uLow=1, uHigh=3)
      annotation (Placement(transformation(extent={{-30,0},{-10,20}})));
    Modelica.Blocks.MathBoolean.And nv1(nu=4)
      "First activation of night ventilation"
      annotation (Placement(transformation(extent={{0,50},{20,70}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis1(uLow=273.15 + 24.5,
                                                                     uHigh=
          273.15 + 25.5)
      annotation (Placement(transformation(extent={{-30,-34},{-10,-14}})));
    Modelica.Blocks.MathBoolean.And nv2(nu=4)
      "Second activation of night ventilation"
      annotation (Placement(transformation(extent={{0,30},{20,50}})));
    Modelica.StateGraph.Step
                    stab(
      nOut=2,
      nIn=1)                "stabilization period"
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,-20})));
    Modelica.StateGraph.TransitionWithSignal
                          transitionWithSignal(      waitTime=86400)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,40})));
    Modelica.StateGraph.InitialStep
                    no_nv(
      nOut=1,
      nIn=1)                "night ventilation off"
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,60})));
    Modelica.StateGraph.StepWithSignal
                    nv_1(
      nOut=1,
      nIn=1)             "night ventilation 1"
      annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={60,20})));
    Modelica.StateGraph.StepWithSignal
                    nv_2(
      nOut=1,
      nIn=1)             "night ventilation 2"
      annotation (Placement(transformation(extent={{-4,4},{4,-4}},
          rotation=-90,
          origin={60,-60})));
    Modelica.StateGraph.TransitionWithSignal
                          T2(                        waitTime=86400)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,0})));
    Modelica.StateGraph.TransitionWithSignal
                          T3(enableTimer=true,
      waitTime=15*60)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,-40})));
    Modelica.Blocks.Logical.Hysteresis hysteresis2(uLow=273.15 + 24, uHigh=
          273.15 + 25)
      annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
    Modelica.StateGraph.TransitionWithSignal
                          T4(enableTimer=true,
      waitTime=15*60)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={80,-30})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{40,-36},{52,-24}})));
    Modelica.StateGraph.Step
                    wait(
      nOut=1,
      nIn=2)             "wait till next day"
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={80,-86})));
    Modelica.StateGraph.Transition
                          T5(enableTimer=true,
      waitTime=6*3600)
      annotation (Placement(transformation(extent={{4,4},{-4,-4}},
          rotation=-90,
          origin={140,-84})));
    Modelica.Blocks.Logical.Not not2
      annotation (Placement(transformation(extent={{38,-6},{50,6}})));
    Modelica.StateGraph.TransitionWithSignal
                          T6(enableTimer=true,
      waitTime=15*60)
      annotation (Placement(transformation(extent={{-4,-4},{4,4}},
          rotation=-90,
          origin={60,-76})));
    Modelica.Blocks.Logical.Not not3
      annotation (Placement(transformation(extent={{38,-82},{50,-70}})));
    Modelica.Blocks.Logical.Or or1
      annotation (Placement(transformation(extent={{74,14},{86,26}})));
    Modelica.Blocks.Interfaces.BooleanOutput NightVentilation
      annotation (Placement(transformation(extent={{100,-12},{120,8}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{80,80},{100,100}})));
    Modelica.Blocks.Sources.RealExpression Te(y=sim.Te) "External temperature"
      annotation (Placement(transformation(extent={{-94,40},{-74,60}})));
  equation

    connect(dataBus.Tavg_building, add.u1) annotation (Line(
        points={{-99.9,0.1},{-82,0.1},{-82,16},{-62,16}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(add.y, hysteresis.u) annotation (Line(points={{-39,10},{-39,10},{
            -32,10}},  color={0,0,127}));
    connect(dataBus.Tavg_building, hysteresis1.u) annotation (Line(
        points={{-99.9,0.1},{-82,0.1},{-82,-24},{-32,-24}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(no_nv.outPort[1], transitionWithSignal.inPort)
      annotation (Line(points={{60,55.8},{60,41.6},{60,41.6}}, color={0,0,0}));
    connect(transitionWithSignal.outPort, nv_1.inPort[1])
      annotation (Line(points={{60,39.4},{60,24.4},{60,24.4}}, color={0,0,0}));
    connect(nv_1.outPort[1], T2.inPort)
      annotation (Line(points={{60,15.8},{60,12},{60,1.6},{60,1.6}},
                                                  color={0,0,0}));
    connect(T2.outPort, stab.inPort[1])
      annotation (Line(points={{60,-0.6},{60,-15.6},{60,-15.6}},
                                                          color={0,0,0}));
    connect(stab.outPort[1], T3.inPort)
      annotation (Line(points={{60.1,-24.2},{60,-30},{60,-38.4}},
                                                              color={0,0,0}));
    connect(dataBus.Tavg_building, hysteresis2.u) annotation (Line(
        points={{-99.9,0.1},{-92,0.1},{-82,0.1},{-82,-50},{-32,-50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(T3.outPort, nv_2.inPort[1])
      annotation (Line(points={{60,-40.6},{60,-55.6},{60,-55.6}},
                                                              color={0,0,0}));
    connect(nv2.y, not1.u) annotation (Line(points={{21.5,40},{30,40},{30,-30},
            {38.8,-30}}, color={255,0,255}));
    connect(T4.outPort, wait.inPort[1])
      annotation (Line(points={{80,-30.6},{80,-81.6},{80.2,-81.6}},
                                                            color={0,0,0}));
    connect(wait.outPort[1], T5.inPort) annotation (Line(points={{80,-90.2},{80,
            -100},{140,-100},{140,-85.6}},
                                         color={0,0,0}));
    connect(T5.outPort, no_nv.inPort[1]) annotation (Line(points={{140,-83.4},{
            140,-83.4},{140,72},{60,72},{60,64.4}},
                                                color={0,0,0}));
    connect(nv1.y, not2.u) annotation (Line(points={{21.5,60},{34,60},{34,0},{
            36,0},{36.8,0}},                      color={255,0,255}));
    connect(nv2.y, not3.u) annotation (Line(points={{21.5,40},{28,40},{28,-76},
            {36.8,-76}}, color={255,0,255}));
    connect(T6.inPort, nv_2.outPort[1]) annotation (Line(points={{60,-74.4},{60,
            -64.2},{60,-64.2}}, color={0,0,0}));
    connect(T6.outPort, wait.inPort[2]) annotation (Line(points={{60,-76.6},{60,
            -76.6},{60,-81.6},{79.8,-81.6}},
                                     color={0,0,0}));
    connect(stab.outPort[2], T4.inPort) annotation (Line(points={{59.9,-24.2},{
            70,-24.2},{70,-28.4},{80,-28.4}},
                                       color={0,0,0}));
    connect(on_off.y, nv1.u[1]) annotation (Line(points={{-39,76},{-20,76},{-20,
            65.25},{0,65.25}}, color={255,0,255}));
    connect(on_off.y, nv2.u[1]) annotation (Line(points={{-39,76},{-20,76},{-20,
            45.25},{0,45.25}}, color={255,0,255}));
    connect(greaterEqualThreshold.y, nv1.u[2]) annotation (Line(points={{-39,50},
            {-36,50},{-36,61.75},{0,61.75}}, color={255,0,255}));
    connect(greaterEqualThreshold.y, nv2.u[2]) annotation (Line(points={{-39,50},
            {-20,50},{-20,41.75},{0,41.75}}, color={255,0,255}));
    connect(hysteresis.y, nv1.u[3]) annotation (Line(points={{-9,10},{-10,10},{
            -10,58.25},{0,58.25}}, color={255,0,255}));
    connect(hysteresis.y, nv2.u[3])
      annotation (Line(points={{-9,10},{0,10},{0,38.25}}, color={255,0,255}));
    connect(hysteresis1.y, nv1.u[4]) annotation (Line(points={{-9,-24},{-6,-24},
            {-6,54.75},{0,54.75}}, color={255,0,255}));
    connect(hysteresis2.y, nv2.u[4]) annotation (Line(points={{-9,-50},{-10,-50},
            {-10,-50},{-10,-50},{0,-50},{0,34.75}}, color={255,0,255}));
    connect(or1.y, NightVentilation) annotation (Line(points={{86.6,20},{86.6,
            -2},{110,-2}}, color={255,0,255}));
    connect(Te.y, greaterEqualThreshold.u)
      annotation (Line(points={{-73,50},{-62,50}}, color={0,0,127}));
    connect(Te.y, add.u2) annotation (Line(points={{-73,50},{-68,50},{-68,4},{
            -62,4}}, color={0,0,127}));
    connect(nv_1.active, or1.u1)
      annotation (Line(points={{64.4,20},{72.8,20}}, color={255,0,255}));
    connect(nv_2.active, or1.u2) annotation (Line(points={{64.4,-60},{72.8,-60},
            {72.8,15.2}}, color={255,0,255}));
    connect(transitionWithSignal.condition, nv1.y) annotation (Line(points={{
            55.2,40},{38,40},{38,60},{21.5,60}}, color={255,0,255}));
    connect(T2.condition, not2.y) annotation (Line(points={{55.2,8.88178e-16},{
            52.6,8.88178e-16},{52.6,0},{50.6,0}}, color={255,0,255}));
    connect(T3.condition, nv2.y) annotation (Line(points={{55.2,-40},{24,-40},{
            24,40},{21.5,40}}, color={255,0,255}));
    connect(not1.y, T4.condition)
      annotation (Line(points={{52.6,-30},{75.2,-30}}, color={255,0,255}));
    connect(T6.condition, not3.y)
      annotation (Line(points={{55.2,-76},{50.6,-76}}, color={255,0,255}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end NightVentilation;

  model VAV_baseline "Controls of AHU loop for baseline"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},
          {IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,100},{-80,120}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{-60,100},{-40,120}})));
    IDEAS.Controls.Continuous.LimPID conVAV[21](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      each Ti=100,
      reverseAction=true,
      each k=0.5) "Controller for VAV based on temperature"
      annotation (Placement(transformation(extent={{-44,20},{-24,40}})));
    Modelica.Blocks.Sources.Constant tracking[21](k=0)
      "set point tracking signal"
      annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
    Modelica.Blocks.Math.Feedback diff[21]
      annotation (Placement(transformation(extent={{-90,-36},{-70,-16}})));
    Modelica.Blocks.Math.Abs abs[21]
      "absolute value (air flow either for heating or cooling)"
      annotation (Placement(transformation(extent={{-60,-36},{-40,-16}})));
    Modelica.Blocks.Routing.Replicator replicator(nout=21) annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=90,
          origin={-80,-70})));
    Modelica.Blocks.Logical.Switch heaDemand[21]
      annotation (Placement(transformation(extent={{80,48},{100,28}})));
    Modelica.Blocks.Logical.Hysteresis hysteresisHea[21](            uHigh=-0.25, uLow=-1)
      annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Logical.Not not1[21]
      annotation (Placement(transformation(extent={{-20,64},{-8,76}})));
    Modelica.Blocks.Tables.CombiTable1D supplySetpoint[21](each table=[-1,
          273.15 + 28; -0.25,273.15 + 20.5; 0.3,273.15 + 16])
                        "setpoint for the supply air temperature"
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Modelica.Blocks.Nonlinear.Limiter limiter[21](uMin=273.15 + 16, uMax=273.15
           + 32)
              "air supply temperature setpoint"
      annotation (Placement(transformation(extent={{16,20},{36,40}})));
    IDEAS.Controls.Continuous.LimPID conHeaCoi[21](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      each k=2,
      each Ti=100,
      each reset=IDEAS.Types.Reset.Disabled)
      "Controller for heating coils in air ducts"
      annotation (Placement(transformation(extent={{54,20},{74,40}})));
    IDEAS.Utilities.Math.Max max[15](nin=3)
      "Maximum of the setpoints is the setpoint for the damper" annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-10,-44})));
    Modelica.Blocks.Sources.RealExpression flush[15](y=if (clock.hour >= 6 and
          clock.hour <= 7) or (clock.weekDay < 2 and (clock.hour >= 5 and clock.hour
           <= 6)) or nightVentilation then 1 else 0)
                   "at 5am, dampers are opening at maximum"
      annotation (Placement(transformation(extent={{40,-36},{20,-16}})));

    Modelica.Blocks.MathBoolean.Or or1(nu=21)
      annotation (Placement(transformation(extent={{20,88},{32,100}})));
    Modelica.Blocks.Math.BooleanToInteger P06_signal
      "If any valve is open, then pump mass flow"
      annotation (Placement(transformation(extent={{64,92},{80,108}})));
    IDEAS.Utilities.Math.Max max1(nin=21)
      annotation (Placement(transformation(extent={{20,50},{36,66}})));
    Modelica.Blocks.Tables.CombiTable1D curve_HP(table=[273.15 + 18,273.15 + 26;
          273.15 + 24,273.15 + 32; 273.15 + 32,273.15 + 37])
      "HP setpoint depending on VAV coils required temperature"
      annotation (Placement(transformation(extent={{42,50},{58,66}})));
    IDEAS.Controls.Continuous.LimPID conCO2[15](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      each reset=IDEAS.Types.Reset.Disabled,
      reverseAction=true,
      each k=0.5,
      each Ti(displayUnit="min") = 120) "Controller for VAV based on CO2"
      annotation (Placement(transformation(extent={{10,-100},{30,-80}})));
    Modelica.Blocks.Routing.Replicator replicator1(nout=15)
                                                           annotation (Placement(
          transformation(
          extent={{-10,-10},{10,10}},
          rotation=0,
          origin={-10,-90})));
    Modelica.Blocks.Sources.Constant CO2setpoint(k=850)
      "set point tracking signal"
      annotation (Placement(transformation(extent={{-50,-100},{-30,-80}})));
    Modelica.Blocks.Logical.Switch airDemand[15] annotation (Placement(
          transformation(
          extent={{-10,10},{10,-10}},
          rotation=-90,
          origin={-10,-6})));
    Modelica.Blocks.Routing.Replicator replicator2(nout=15)
                                                           annotation (Placement(
          transformation(
          extent={{-6,-6},{6,6}},
          rotation=0,
          origin={-44,4})));
    Modelica.Blocks.Logical.Hysteresis hysteresisVAV[15](
      pre_y_start=true,
      uHigh=1,
      uLow=0.3)
      annotation (Placement(transformation(extent={{-80,80},{-62,98}})));
    Modelica.Blocks.Interfaces.BooleanInput nightVentilation
      "night ventilation active"
      annotation (Placement(transformation(extent={{-120,-70},{-80,-30}})));
    Modelica.Blocks.Sources.BooleanExpression AHUon(y=if ((clock.hour >= 6 and
          clock.hour <= 19) and (clock.weekDay) < 6) == true then true else
          false) "Supply fan pressure difference set-point"
      annotation (Placement(transformation(extent={{10,100},{32,120}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{42,94},{54,106}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite[21](description="Heating coil supply temperature set-point",
        u(
        min=288.15,
        max=305.15,
        unit="K"))
      annotation (Placement(transformation(extent={{40,26},{48,34}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite1[15](description="VAV damper position",
        u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{16,-64},{24,-56}})));
  equation

    connect(tracking.y, conVAV.u_s)
      annotation (Line(points={{-59,30},{-46,30}}, color={0,0,127}));
    connect(diff.y, abs.u)
      annotation (Line(points={{-71,-26},{-62,-26}}, color={0,0,127}));
    connect(signalBus.baseSetpoint, replicator.u) annotation (Line(
        points={{100,0},{100,-120},{-80,-120},{-80,-82}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(replicator.y, diff.u2)
      annotation (Line(points={{-80,-59},{-80,-34}}, color={0,0,127}));
    connect(abs.y, conVAV.u_m)
      annotation (Line(points={{-39,-26},{-34,-26},{-34,18}}, color={0,0,127}));
    connect(dataBus.T3rdFlr_SZ, diff[1].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T3rdFlr_CPR, diff[2].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T3rdFlr_MTR, diff[4].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T3rdFlr_SmaR, diff[3].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T2ndFlr_NZ, diff[5].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T2ndFlr_SZ, diff[6].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T2ndFlr_MT1, diff[7].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-12},{-100,-12},{-100,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,6},{-3,6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T2ndFlr_MT2, diff[8].u1) annotation (Line(
        points={{-99.9,0.1},{-100,0.1},{-100,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T1stFlr_NZ, diff[9].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T1stFlr_SZ1, diff[10].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T1stFlr_SZ2, diff[11].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T1stFlr_MT1, diff[12].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.T1stFlr_MT2, diff[13].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_hall, diff[14].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_1stAid, diff[15].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_KTR, diff[16].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_MT2, diff[17].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_MT1, diff[18].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_hall, diff[19].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_WStairs, diff[20].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.TGndFlr_EStairs, diff[21].u1) annotation (Line(
        points={{-99.9,0.1},{-99.9,-26},{-88,-26}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(diff.y, hysteresisHea.u) annotation (Line(points={{-71,-26},{-66,-26},
            {-66,14},{-88,14},{-88,70},{-62,70}}, color={0,0,127}));
    connect(hysteresisHea.y, not1.u)
      annotation (Line(points={{-39,70},{-21.2,70}}, color={255,0,255}));
    connect(not1.y, heaDemand.u2) annotation (Line(points={{-7.4,70},{66,70},{66,38},
            {78,38}},                   color={255,0,255}));
    connect(supplySetpoint.y[1], limiter.u)
      annotation (Line(points={{11,30},{14,30}},color={0,0,127}));
    connect(dataBus.TAirSupplyVAV, conHeaCoi.u_m) annotation (Line(
        points={{-99.9,0.1},{64,0.1},{64,18}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(flush.y, max.u[1])
      annotation (Line(points={{19,-26},{-10,-26},{-10,-32},{-11.3333,-32}},
                                                              color={0,0,127}));



    connect(conVAV[1].y, airDemand[1].u1) annotation (Line(points={{-23,30},{-18,30},
            {-18,-2},{-18,-2},{-18,6}},color={0,0,127}));
    connect(conVAV[2].y, airDemand[2].u1);
    connect(conVAV[3].y, airDemand[3].u1);
    connect(conVAV[5].y, airDemand[4].u1);
    connect(conVAV[6].y, airDemand[5].u1);
    connect(conVAV[7].y, airDemand[6].u1);
    connect(conVAV[8].y, airDemand[7].u1);
    connect(conVAV[9].y, airDemand[8].u1);
    connect(conVAV[10].y, airDemand[9].u1);
    connect(conVAV[11].y, airDemand[10].u1);
    connect(conVAV[12].y, airDemand[11].u1);
    connect(conVAV[13].y, airDemand[12].u1);
    connect(conVAV[16].y, airDemand[13].u1);
    connect(conVAV[17].y, airDemand[14].u1);
    connect(conVAV[18].y, airDemand[15].u1);



    connect(heaDemand.y, signalBus.Heacoils_signal) annotation (Line(points={{101,38},
            {100.1,38},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(overwrite1[1].y, signalBus.VAV_signal_extract[1]);
    connect(overwrite1[2].y, signalBus.VAV_signal_extract[2]);
    connect(overwrite1[3].y, signalBus.VAV_signal_extract[3]);
    connect(overwrite1[4].y, signalBus.VAV_signal_extract[4]);
    connect(overwrite1[5].y, signalBus.VAV_signal_extract[5]);
    connect(overwrite1[6].y, signalBus.VAV_signal_extract[6]);
    connect(overwrite1[7].y, signalBus.VAV_signal_extract[7]);
    connect(overwrite1[8].y, signalBus.VAV_signal_extract[8]);
    connect(overwrite1[9].y, signalBus.VAV_signal_extract[9]);
    connect(overwrite1[11].y, signalBus.VAV_signal_extract[10]);
    connect(overwrite1[12].y, signalBus.VAV_signal_extract[11]);
    connect(overwrite1[13].y, signalBus.VAV_signal_extract[12]);
    connect(overwrite1[14].y, signalBus.VAV_signal_extract[13]);
    connect(overwrite1[15].y, signalBus.VAV_signal_extract[14]);

    connect(overwrite1[10].y, signalBus.VAV_signal_extract[15]); //dummy connection

    connect(not1.y, or1.u[1:21]) annotation (Line(points={{-7.4,70},{8,70},{8,
            90},{20,90}}, color={255,0,255}));
    connect(P06_signal.y, signalBus.P06_signal) annotation (Line(points={{80.8,
            100},{100,100},{100,0}},
                                   color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(conHeaCoi.y, heaDemand.u1)
      annotation (Line(points={{75,30},{78,30}}, color={0,0,127}));
    connect(heaDemand.u3, tracking.y) annotation (Line(points={{78,46},{-54,46},{-54,
            30},{-59,30}},      color={0,0,127}));
    connect(max1.y, curve_HP.u[1])
      annotation (Line(points={{36.8,58},{40.4,58}}, color={0,0,127}));
    connect(curve_HP.y[1], signalBus.T_VAV) annotation (Line(points={{58.8,58},
            {100,58},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(replicator1.y, conCO2.u_s)
      annotation (Line(points={{1,-90},{8,-90}}, color={0,0,127}));
    connect(CO2setpoint.y, replicator1.u)
      annotation (Line(points={{-29,-90},{-22,-90}}, color={0,0,127}));
    connect(conCO2.y, max.u[3]) annotation (Line(points={{31,-90},{60,-90},{60,-32},
            {-8.66667,-32}}, color={0,0,127}));
    connect(dataBus.CO2_3rdFlr_SZ, conCO2[1].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_3rdFlr_CPR, conCO2[2].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_3rdFlr_SmaR, conCO2[3].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_2ndFlr_NZ, conCO2[4].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_2ndFlr_SZ, conCO2[5].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_2ndFlr_MT1, conCO2[6].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_2ndFlr_MT2, conCO2[7].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_1stFlr_NZ, conCO2[8].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_1stFlr_SZ1, conCO2[9].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_1stFlr_SZ2, conCO2[10].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_1stFlr_MT1, conCO2[11].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_1stFlr_MT2, conCO2[12].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_GndFlr_KTR, conCO2[13].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_GndFlr_MT2, conCO2[14].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_GndFlr_MT1, conCO2[15].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(airDemand.y, max.u[2])
      annotation (Line(points={{-10,-17},{-10,-32}}, color={0,0,127}));
    connect(replicator2.y, airDemand.u3) annotation (Line(points={{-37.4,4},{-32,4},
            {-32,12},{-2,12},{-2,6}}, color={0,0,127}));
    connect(tracking[1].y, replicator2.u) annotation (Line(points={{-59,30},{-54,30},
            {-54,4},{-51.2,4}}, color={0,0,127}));
    connect(abs[1].y, hysteresisVAV[1].u) annotation (Line(points={{-39,-26},{
            -34,-26},{-34,-8},{-94,-8},{-94,89},{-81.8,89}},
                                   color={0,0,127}));
    connect(abs[2].y, hysteresisVAV[2].u);
    connect(abs[3].y, hysteresisVAV[3].u);
    connect(abs[5].y, hysteresisVAV[4].u);
    connect(abs[6].y, hysteresisVAV[5].u);
    connect(abs[7].y, hysteresisVAV[6].u);
    connect(abs[8].y, hysteresisVAV[7].u);
    connect(abs[9].y, hysteresisVAV[8].u);
    connect(abs[10].y, hysteresisVAV[9].u);
    connect(abs[11].y, hysteresisVAV[10].u);
    connect(abs[12].y, hysteresisVAV[11].u);
    connect(abs[13].y, hysteresisVAV[12].u);
    connect(abs[16].y, hysteresisVAV[13].u);
    connect(abs[17].y, hysteresisVAV[14].u);
    connect(abs[18].y, hysteresisVAV[15].u);

    connect(hysteresisVAV.y, airDemand.u2) annotation (Line(points={{-61.1,89},
            {-10,89},{-10,6}}, color={255,0,255}));
    connect(and1.y, P06_signal.u)
      annotation (Line(points={{54.6,100},{62.4,100}}, color={255,0,255}));
    connect(or1.y, and1.u2) annotation (Line(points={{32.9,94},{38,94},{38,95.2},
            {40.8,95.2}}, color={255,0,255}));
    connect(AHUon.y, and1.u1) annotation (Line(points={{33.1,110},{38,110},{38,
            100},{40.8,100}}, color={255,0,255}));
    connect(hysteresisHea.u, supplySetpoint.u[1]) annotation (Line(points={{-62,
            70},{-72,70},{-72,52},{-16,52},{-16,30},{-12,30}}, color={0,0,127}));
    connect(overwrite.y, conHeaCoi.u_s)
      annotation (Line(points={{48.4,30},{52,30}}, color={0,0,127}));
    connect(overwrite.u, limiter.y)
      annotation (Line(points={{39.2,30},{37,30}}, color={0,0,127}));
    connect(overwrite.u, max1.u) annotation (Line(points={{39.2,30},{38,30},{38,48},
            {8,48},{8,58},{18.4,58}}, color={0,0,127}));
    connect(max.y, overwrite1.u) annotation (Line(points={{-10,-55},{-10,-60},{15.2,
            -60}}, color={0,0,127}));
    connect(overwrite1.y, signalBus.VAV_signal) annotation (Line(points={{24.4,-60},
            {100.1,-60},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-120},
              {100,120}}),                                        graphics={
            Rectangle(
            extent={{-100,120},{100,-120}},
            lineColor={28,108,200},
            fillColor={255,255,255},
            fillPattern=FillPattern.Solid),                                Text(
            extent={{-62,76},{78,-64}},
            lineColor={28,108,200},
            textString="VAV")}),Diagram(coordinateSystem(preserveAspectRatio=
              false, extent={{-100,-120},{100,120}})));
  end VAV_baseline;

  model SunShading "sunshading control"

    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));

    Modelica.Blocks.Sources.BooleanExpression east_on(y=if clock.hour > 7 and
          clock.hour < 13 then true else false)
      "Time frame for which the east windows can activate the shading device"
      annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold=
         10)
      annotation (Placement(transformation(extent={{8,-40},{28,-20}})));
    inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
          IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
          IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
      annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    IDEAS.Buildings.Components.Interfaces.WeaBus weaBus(numSolBus=5)
      annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    Modelica.Blocks.Math.Add altAng(k2=-1) "Altitude angle of sun"
      annotation (Placement(transformation(extent={{-40,-60},{-20,-40}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis(uLow=273.15 + 21, uHigh=
          273.15 + 22.5)
      "External temperature for which the shading device can be on"
      annotation (Placement(transformation(extent={{-32,-20},{-12,0}})));
    Modelica.Blocks.MathBoolean.And east2nd(nu=2)
      annotation (Placement(transformation(extent={{40,80},{60,100}})));
    Modelica.Blocks.Sources.BooleanExpression south_on(y=if clock.hour > 10
           and clock.hour < 19 then true else false)
      "Time frame for which the south windows can activate the shading device"
      annotation (Placement(transformation(extent={{-40,60},{-20,80}})));
    Modelica.Blocks.Sources.BooleanExpression west_on(y=if clock.hour > 14 and
          clock.hour < 20 then true else false)
      "Time frame for which the west windows can activate the shading device"
      annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
    Modelica.Blocks.Sources.Constant ninety_degrees(k=Modelica.Constants.pi/2)
      annotation (Placement(transformation(extent={{-100,-40},{-80,-20}})));
    Modelica.Blocks.Math.Gain radiansToDegrees(k=180/Modelica.Constants.pi)
      annotation (Placement(transformation(extent={{-14,-54},{-6,-46}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold1(threshold=
         20)
      annotation (Placement(transformation(extent={{8,-80},{28,-60}})));
    Modelica.Blocks.MathBoolean.And south(nu=2)
      annotation (Placement(transformation(extent={{40,60},{60,80}})));
    Modelica.Blocks.MathBoolean.And west(nu=2)
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
    Modelica.Blocks.Logical.LessEqualThreshold    greaterEqualThreshold2(threshold=
         30)
      annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
    Modelica.Blocks.Logical.LessEqualThreshold    greaterEqualThreshold3(threshold=
         22)
      annotation (Placement(transformation(extent={{40,-80},{60,-60}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal
      annotation (Placement(transformation(extent={{-148,-20},{-138,-10}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal1
      annotation (Placement(transformation(extent={{-148,10},{-138,20}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal2
      annotation (Placement(transformation(extent={{-148,-6},{-138,4}})));
    Modelica.Blocks.MathBoolean.And east3rd(nu=2)
      annotation (Placement(transformation(extent={{40,100},{60,120}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal3
      annotation (Placement(transformation(extent={{-148,26},{-138,36}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{80,80},{100,100}})));
    Modelica.Blocks.Math.Add sum2nd3rd "Altitude angle of sun"
      annotation (Placement(transformation(extent={{-68,-20},{-48,0}})));
    Modelica.Blocks.Math.Gain avg(k=1/2)
      annotation (Placement(transformation(extent={{-44,-14},{-36,-6}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=
          "Shading control of 3rd floor east windows", u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{-130,26},{-120,36}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite1(description=
          "Shading control of 2nd floor east windows", u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{-130,10},{-120,20}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite2(description=
          "Shading control of south windows", u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{-130,-6},{-120,4}})));
    IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite3(description=
          "Shading control of south windows", u(
        min=0,
        max=1,
        unit="1"))
      annotation (Placement(transformation(extent={{-130,-20},{-120,-10}})));
  equation

    connect(ninety_degrees.y, altAng.u1) annotation (Line(points={{-79,-30},{-60,
            -30},{-60,-44},{-42,-44}}, color={0,0,127}));
    connect(altAng.y, radiansToDegrees.u)
      annotation (Line(points={{-19,-50},{-14.8,-50}}, color={0,0,127}));
    connect(west_on.y, west.u[1]) annotation (Line(points={{-19,50},{40,50},{40,
            53.5}},  color={255,0,255}));
    connect(south_on.y, south.u[1]) annotation (Line(points={{-19,70},{40,70},{
            40,73.5}},  color={255,0,255}));
    connect(east_on.y, east2nd.u[1]) annotation (Line(points={{-19,90},{40,90},
            {40,93.5}},  color={255,0,255}));
    connect(hysteresis.y, west.u[2]) annotation (Line(points={{-11,-10},{0,-10},
            {0,46.5},{40,46.5}},                color={255,0,255}));
    connect(hysteresis.y, south.u[2]) annotation (Line(points={{-11,-10},{0,-10},
            {0,66.5},{40,66.5}},   color={255,0,255}));
    connect(hysteresis.y, east2nd.u[2]) annotation (Line(points={{-11,-10},{0,
            -10},{0,86.5},{40,86.5}},
                                   color={255,0,255}));
    connect(radiansToDegrees.y, greaterEqualThreshold.u) annotation (Line(
          points={{-5.6,-50},{0,-50},{0,-30},{6,-30}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold2.u) annotation (Line(
          points={{-5.6,-50},{34,-50},{34,-30},{38,-30}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold1.u) annotation (Line(
          points={{-5.6,-50},{0,-50},{0,-70},{6,-70}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold3.u) annotation (Line(
          points={{-5.6,-50},{-5.6,-50},{34,-50},{34,-70},{38,-70}}, color={0,0,
            127}));
    connect(east2nd.y, booleanToReal1.u) annotation (Line(points={{61.5,90},{62,
            90},{62,104},{-138,104},{-138,15},{-149,15}},            color={255,
            0,255}));
    connect(south.y, booleanToReal2.u) annotation (Line(points={{61.5,70},{61.5,
            102},{-136,102},{-136,-1},{-149,-1}}, color={255,0,255}));
    connect(west.y, booleanToReal.u) annotation (Line(points={{61.5,50},{62,50},
            {62,106},{-140,106},{-140,-15},{-149,-15}},          color={255,0,
            255}));
    connect(east_on.y, east3rd.u[1]) annotation (Line(points={{-19,90},{-8,90},
            {-8,113.5},{40,113.5}},   color={255,0,255}));
    connect(hysteresis.y, east3rd.u[2]) annotation (Line(points={{-11,-10},{-6,
            -10},{-6,106.5},{40,106.5}},   color={255,0,255}));
    connect(east3rd.y, booleanToReal3.u) annotation (Line(points={{61.5,110},{
            61.5,126},{-149,126},{-149,31}}, color={255,0,255}));
    connect(weaBus.angZen, altAng.u2) annotation (Line(
        points={{-69.95,70.05},{-70,70.05},{-70,-56},{-42,-56}},
        color={255,204,51},
        thickness=0.5));
    connect(sim.weaBus, weaBus) annotation (Line(
        points={{-81,93},{-78,93},{-78,70},{-70,70}},
        color={255,204,51},
        thickness=0.5));
    connect(sum2nd3rd.y, avg.u)
      annotation (Line(points={{-47,-10},{-44.8,-10}}, color={0,0,127}));
    connect(sum2nd3rd.u1, dataBus.Tavg_3rdFlr) annotation (Line(points={{-70,-4},
            {-80,-4},{-80,0.1},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(sum2nd3rd.u2, dataBus.Tavg_2ndFlr) annotation (Line(points={{-70,-16},
            {-80,-16},{-80,0.1},{-99.9,0.1}},      color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{-6,3},{-6,3}},
        horizontalAlignment=TextAlignment.Right));
    connect(hysteresis.u, avg.y)
      annotation (Line(points={{-34,-10},{-35.6,-10}}, color={0,0,127}));
    connect(overwrite.u, booleanToReal3.y)
      annotation (Line(points={{-131,31},{-137.5,31}}, color={0,0,127}));
    connect(overwrite.y, dataBus.eastShading3rd) annotation (Line(points={{
            -119.5,31},{-99.9,31},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(booleanToReal1.y, overwrite1.u)
      annotation (Line(points={{-137.5,15},{-131,15}}, color={0,0,127}));
    connect(overwrite1.y, dataBus.eastShading2nd) annotation (Line(points={{
            -119.5,15},{-119.5,8.5},{-99.9,8.5},{-99.9,0.1}}, color={0,0,127}),
        Text(
        string="%second",
        index=1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(overwrite2.u, booleanToReal2.y)
      annotation (Line(points={{-131,-1},{-137.5,-1}}, color={0,0,127}));
    connect(overwrite2.y, dataBus.southShading) annotation (Line(points={{
            -119.5,-1},{-112.75,-1},{-112.75,0.1},{-99.9,0.1}}, color={0,0,127}),
        Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(overwrite3.u, booleanToReal.y) annotation (Line(points={{-131,-15},
            {-134.5,-15},{-134.5,-15},{-137.5,-15}}, color={0,0,127}));
    connect(overwrite3.y, dataBus.westShading) annotation (Line(points={{-119.5,
            -15},{-99.9,-15},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end SunShading;
end SubControllers;
