within INFRAX.SubSystems.Controllers;
package SubControllers "Individual controller modules"

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
    connect(HP2.y, signalBus.HP2_signal) annotation (Line(points={{61,-50},{100,
            -50},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
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
    connect(HP1.y, signalBus.HP1_signal) annotation (Line(points={{81,30},{100,
            30},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
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
    connect(max.y, add.u2) annotation (Line(points={{-35,80},{-80,80},{-80,44},{-62,
            44}}, color={0,0,127}));
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
    Modelica.Blocks.Tables.CombiTable1D curve_AHU(table=[273.15 + 0,273.15 + 20; 273.15
           + 15,273.15 + 19]) "Infrax AHU heating/cooling curve"
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
                                     supplySP(y=if ((clock.hour >= 5 and clock.hour <
          20) and (clock.weekDay) < 6) or nightVentilation == true then 180 else 0)
                   "Supply fan pressure difference set-point"
      annotation (Placement(transformation(extent={{-10,-156},{12,-136}})));
    Modelica.Blocks.Sources.RealExpression
                                     extractSP(y=if ((clock.hour >= 5 and clock.hour <
          20) and (clock.weekDay) < 6) or nightVentilation == true then 125 else 0)
      "Extract fan pressure difference set-point"
      annotation (Placement(transformation(extent={{-10,-186},{10,-164}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{-100,144},{-80,164}})));
    Modelica.Blocks.Sources.IntegerExpression P08P09signal(y=if (clock.hour >= 5
           and clock.hour < 20) and (clock.weekDay) < 6 then P0809_signal.y else 0)
      "Pumps 08 and 09 signal"
      annotation (Placement(transformation(extent={{20,-100},{42,-80}})));
    Modelica.Blocks.Sources.IntegerExpression P04signal(y=if (clock.hour >= 5
           and clock.hour < 20) and (clock.weekDay) < 6 then P04_signal.y else
          0)
      "pump 04 signal"
      annotation (Placement(transformation(extent={{66,-48},{88,-28}})));
    Modelica.Blocks.Sources.RealExpression
                                     P13signal(y=if (clock.hour >= 5 and clock.hour <
          20) and (clock.weekDay) < 6 then switch1.y else 0)
      "Pump 13 signal"
      annotation (Placement(transformation(extent={{52,8},{74,28}})));
    Modelica.Blocks.Tables.CombiTable1D curve_HP(table=[273.15 + 15,273.15 + 24;
          273.15 + 23,273.15 + 32])
      "HP setpoint depending on AHU required temperature"
      annotation (Placement(transformation(extent={{72,166},{92,186}})));
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
    connect(limiter.y, con3wayCoo.u_s) annotation (Line(points={{41,176},{58,
            176},{58,200},{-72,200},{-72,48},{-12,48}},
                                                   color={0,0,127}));
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
    connect(supplySP.y, signalBus.AHUsupply) annotation (Line(points={{13.1,
            -146},{100,-146},{100,0}},
                                 color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(extractSP.y, signalBus.AHUextract) annotation (Line(points={{11,-175},
            {100,-175},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
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
    connect(limiter.y, curve_HP.u[1])
      annotation (Line(points={{41,176},{70,176}}, color={0,0,127}));
    connect(limiter.y, signalBus.T_AHU) annotation (Line(points={{41,176},{58,
            176},{58,156},{100,156},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(curve_HP.y[1], signalBus.T_AHU_HP) annotation (Line(points={{93,176},
            {100,176},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(bypass.y, switch2.u1) annotation (Line(points={{-33.6,74},{-10,74},
            {-10,76},{14,76}}, color={0,0,127}));
    connect(con3wayTW.y, switch2.u3) annotation (Line(points={{-5,110},{4,110},
            {4,92},{14,92}}, color={0,0,127}));
    connect(switch2.y, signalBus.TW_bypass) annotation (Line(points={{37,84},{
            100,84},{100,0}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
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

  model CoolingTower "CoolingTower PID"

    SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
              120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
              -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
    Modelica.Blocks.Sources.Constant TSetLea(k=273.15 + 29)
      "Setpoint for leaving temperature"
                   annotation (Placement(transformation(extent={{-60,-60},{-40,
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
    connect(TSetLea.y, conFan.u_s) annotation (Line(points={{-39,-50},{-32,-50},
            {-26,-50}}, color={0,0,127}));
    connect(conFan.y, switch1.u1)
      annotation (Line(points={{-3,-50},{22,-50}}, color={0,0,127}));
    connect(conFan.u_m, dataBus.T27) annotation (Line(points={{-14,-62},{-14,
            -74},{-99.9,-74},{-99.9,0.1}}, color={0,0,127}), Text(
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
  equation
    connect(p7Con.y, signalBus.P07_signal) annotation (Line(points={{11,70},{
            100,70},{100,0}}, color={255,127,0}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
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

  model ModeSelector_baseline
    // -1 cooling, 0 rest, 1 heating
    IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 avgExt "RMOT"
      annotation (Placement(transformation(extent={{-92,-10},{-72,10}})));
    Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold=273.15
           + 10)
      annotation (Placement(transformation(extent={{-50,-70},{-30,-50}})));
    Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold=273.15 + 8)
      annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
    Modelica.Blocks.Interfaces.BooleanOutput heat
      annotation (Placement(transformation(extent={{100,40},{120,60}})));
    Modelica.Blocks.Interfaces.BooleanOutput rest
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));
    Modelica.Blocks.Interfaces.BooleanOutput cool
      annotation (Placement(transformation(extent={{100,-60},{120,-40}})));
    Components.Step restWait(
      use_activePort=true,
      nOut=1,
      nIn=4,
      initialStep=false)
             annotation (Placement(transformation(extent={{52,16},{60,24}})));
    Components.Step restDecide(
      initialStep=false,
      use_activePort=false,
      nIn=1,
      nOut=3) annotation (Placement(transformation(extent={{52,-14},{60,-6}})));
    Components.Transition T1(delayedTransition=true, waitTime=86400)
      annotation (Placement(transformation(extent={{52,2},{60,10}})));
    Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold=
         273.15 + 8)
      annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
    Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold=
          273.15 + 10)
      annotation (Placement(transformation(extent={{-50,-28},{-30,-8}})));
    Components.Transition T3(use_conditionPort=true)
      annotation (Placement(transformation(extent={{16,64},{24,56}})));
    Components.Transition T2(use_conditionPort=true)
      annotation (Placement(transformation(extent={{36,12},{44,4}})));
    Components.Transition T4(use_conditionPort=true)
      annotation (Placement(transformation(extent={{52,-38},{60,-30}})));
    Components.Step coolWait(
      use_activePort=true,
      nOut=1,
      initialStep=false,
      nIn=3) annotation (Placement(transformation(extent={{52,-56},{60,-48}})));
    Components.Step coolDecide(
      initialStep=false,
      use_activePort=false,
      nIn=1,
      nOut=2) annotation (Placement(transformation(extent={{52,-88},{60,-80}})));
    Components.Transition T5(delayedTransition=true, waitTime=86400)
      annotation (Placement(transformation(extent={{52,-70},{60,-62}})));
    Components.Step heatWait(
      use_activePort=true,
      nOut=1,
      initialStep=false,
      nIn=3) annotation (Placement(transformation(extent={{52,76},{60,84}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{-14,-2},{6,18}})));
    Components.Step heatDecide(
      initialStep=false,
      use_activePort=false,
      nIn=1,
      nOut=2) annotation (Placement(transformation(extent={{52,46},{60,54}})));
    Components.Transition T6(delayedTransition=true, waitTime=86400)
      annotation (Placement(transformation(extent={{52,64},{60,72}})));
    Components.Transition T7(use_conditionPort=true)
      annotation (Placement(transformation(extent={{52,34},{60,42}})));
    Components.Transition T8(use_conditionPort=true)
      annotation (Placement(transformation(extent={{16,-66},{24,-74}})));
    Components.Transition T9(use_conditionPort=true)
      annotation (Placement(transformation(extent={{36,-56},{44,-64}})));
    Components.Transition T10(use_conditionPort=true)
      annotation (Placement(transformation(extent={{36,72},{44,64}})));

    Components.Step ini(
      initialStep=true,
      nOut=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{70,34},{78,42}})));
    Components.Transition T11(
                             delayedTransition=true, waitTime=64800)
      annotation (Placement(transformation(extent={{88,20},{96,28}})));

    Components.Step iniDecide(
      nOut=3,
      use_activePort=false,
      nIn=1,
      initialStep=false)
      annotation (Placement(transformation(extent={{88,4},{96,12}})));
    Components.Transition T12(
                             use_conditionPort=true)
      annotation (Placement(transformation(extent={{78,-8},{86,-16}})));
    Components.Transition T13(
                             use_conditionPort=true)
      annotation (Placement(transformation(extent={{92,-26},{100,-18}})));
    Components.Transition T14(
                             use_conditionPort=true)
      annotation (Placement(transformation(extent={{84,66},{92,58}})));
    Modelica.Blocks.Logical.Or  and2
      annotation (Placement(transformation(extent={{86,32},{98,44}})));
  equation

    connect(avgExt.TRm, greaterThreshold.u) annotation (Line(points={{-71.4,0},{-66,
            0},{-62,0},{-62,-60},{-52,-60}}, color={0,0,127}));

    connect(avgExt.TRm, lessThreshold.u) annotation (Line(points={{-71.4,0},{-62,0},
            {-62,60},{-52,60}},     color={0,0,127}));

    connect(restWait.outPort[1], T1.inPort)
      annotation (Line(points={{56,15.4},{56,12.7},{56,10}}, color={0,0,0}));
    connect(T1.outPort, restDecide.inPort[1])
      annotation (Line(points={{56,1},{56,-2},{56,-6}},
                                                color={0,0,0}));
    connect(restDecide.outPort[1], T4.inPort) annotation (Line(points={{54.6667,
            -14.6},{54.6667,-22},{56,-22},{56,-30}},
                                              color={0,0,0}));
    connect(coolWait.activePort, cool) annotation (Line(points={{60.72,-52},{60.72,
            -56},{92,-56},{92,-50},{110,-50}}, color={255,0,255}));
    connect(T4.outPort, coolWait.inPort[1])
      annotation (Line(points={{56,-39},{56,-48},{54.6667,-48}},
                                                            color={0,0,0}));
    connect(coolWait.outPort[1], T5.inPort)
      annotation (Line(points={{56,-56.6},{56,-59.3},{56,-62}}, color={0,0,0}));
    connect(T5.outPort, coolDecide.inPort[1])
      annotation (Line(points={{56,-71},{56,-75.5},{56,-80}}, color={0,0,0}));
    connect(greaterEqualThreshold.u, lessThreshold.u) annotation (Line(points={{-52,
            20},{-62,20},{-62,60},{-52,60}}, color={0,0,127}));
    connect(lessEqualThreshold.u, greaterThreshold.u) annotation (Line(points={{-52,
            -18},{-62,-18},{-62,-60},{-52,-60}}, color={0,0,127}));
    connect(greaterThreshold.y, T4.conditionPort) annotation (Line(points={{-29,-60},
            {10,-60},{10,-34},{51,-34}}, color={255,0,255}));
    connect(restDecide.outPort[2], T3.inPort) annotation (Line(points={{56,-14.6},
            {54,-14.6},{54,-20},{20,-20},{20,18},{20,38},{20,56}}, color={0,0,0}));
    connect(lessThreshold.y, T3.conditionPort)
      annotation (Line(points={{-29,60},{15,60}}, color={255,0,255}));
    connect(heatWait.activePort, heat) annotation (Line(points={{60.72,80},{80,80},
            {80,50},{110,50}}, color={255,0,255}));
    connect(T3.outPort, heatWait.inPort[1]) annotation (Line(points={{20,65},{
            20,66},{20,96},{54.6667,96},{54.6667,84}},color={0,0,0}));
    connect(restDecide.outPort[3], T2.inPort) annotation (Line(points={{57.3333,
            -14.6},{50,-14.6},{50,-16},{40,-16},{40,4}},
                                                  color={0,0,0}));
    connect(T2.outPort, restWait.inPort[1]) annotation (Line(points={{40,13},{
            40,30},{54.5,30},{54.5,24}},color={0,0,0}));
    connect(and1.y, T2.conditionPort)
      annotation (Line(points={{7,8},{22,8},{35,8}}, color={255,0,255}));
    connect(heatWait.outPort[1], T6.inPort)
      annotation (Line(points={{56,75.4},{56,73.7},{56,72}}, color={0,0,0}));
    connect(T6.outPort, heatDecide.inPort[1])
      annotation (Line(points={{56,63},{56,58.5},{56,54}}, color={0,0,0}));
    connect(heatDecide.outPort[1], T7.inPort)
      annotation (Line(points={{55,45.4},{56,43.7},{56,42}}, color={0,0,0}));
    connect(T7.outPort, restWait.inPort[2])
      annotation (Line(points={{56,33},{56,24},{55.5,24}},       color={0,0,0}));
    connect(greaterEqualThreshold.y, T7.conditionPort) annotation (Line(points={{-29,
            20},{-16,20},{-16,38},{51,38}}, color={255,0,255}));
    connect(lessEqualThreshold.y, and1.u2)
      annotation (Line(points={{-29,-18},{-16,-18},{-16,0}}, color={255,0,255}));
    connect(greaterEqualThreshold.y, and1.u1) annotation (Line(points={{-29,20},{-24,
            20},{-16,20},{-16,8}}, color={255,0,255}));
    connect(coolDecide.outPort[1], T8.inPort) annotation (Line(points={{55,-88.6},
            {55,-92},{20,-92},{20,-74}}, color={0,0,0}));
    connect(lessEqualThreshold.y, T8.conditionPort) annotation (Line(points={{-29,
            -18},{-24,-18},{-16,-18},{-16,-70},{15,-70}}, color={255,0,255}));
    connect(T8.outPort, restWait.inPort[3]) annotation (Line(points={{20,-65},{
            28,-65},{28,-64},{30,-64},{30,32},{58,32},{58,24},{56.5,24}}, color={0,
            0,0}));
    connect(coolDecide.outPort[2], T9.inPort)
      annotation (Line(points={{57,-88.6},{40,-88.6},{40,-64}}, color={0,0,0}));
    connect(T9.outPort, coolWait.inPort[2]) annotation (Line(points={{40,-55},{
            40,-55},{40,-44},{56,-44},{56,-48}},
                                              color={0,0,0}));
    connect(greaterThreshold.y, T9.conditionPort)
      annotation (Line(points={{-29,-60},{35,-60}}, color={255,0,255}));
    connect(T10.outPort, heatWait.inPort[2]) annotation (Line(points={{40,73},{
            40,73},{40,90},{56,90},{56,84}},
                                          color={0,0,0}));
    connect(heatDecide.outPort[2], T10.inPort) annotation (Line(points={{57,45.4},
            {50,45.4},{50,46},{40,46},{40,64}}, color={0,0,0}));
    connect(lessThreshold.y, T10.conditionPort) annotation (Line(points={{-29,60},
            {2,60},{2,68},{35,68}}, color={255,0,255}));
    connect(ini.outPort[1], T11.inPort)
      annotation (Line(points={{74,33.4},{74,30},{92,30},{92,28}},
                                                   color={0,0,0}));
    connect(T11.outPort, iniDecide.inPort[1])
      annotation (Line(points={{92,19},{92,15.5},{92,12}}, color={0,0,0}));
    connect(iniDecide.outPort[1], T12.inPort) annotation (Line(points={{90.6667,
            3.4},{88,3.4},{88,-16},{82,-16}}, color={0,0,0}));
    connect(T12.outPort, restWait.inPort[4]) annotation (Line(points={{82,-7},{
            80,-7},{80,-4},{80,24},{57.5,24}}, color={0,0,0}));
    connect(and1.y, T12.conditionPort) annotation (Line(points={{7,8},{24,8},{
            24,-2},{78,-2},{44,-2},{44,-12},{77,-12}}, color={255,0,255}));
    connect(iniDecide.outPort[2], T13.inPort) annotation (Line(points={{92,3.4},
            {92,-7.3},{96,-7.3},{96,-18}}, color={0,0,0}));
    connect(T13.outPort, coolWait.inPort[3]) annotation (Line(points={{96,-27},
            {76,-27},{76,-48},{57.3333,-48}}, color={0,0,0}));
    connect(greaterThreshold.y, T13.conditionPort) annotation (Line(points={{
            -29,-60},{10,-60},{10,-22},{91,-22}}, color={255,0,255}));
    connect(iniDecide.outPort[3], T14.inPort) annotation (Line(points={{93.3333,
            3.4},{93.3333,2},{82,2},{82,58},{88,58}}, color={0,0,0}));
    connect(T14.outPort, heatWait.inPort[3]) annotation (Line(points={{88,67},{
            88,68},{88,68},{88,68},{88,94},{57.3333,94},{57.3333,84}}, color={0,
            0,0}));
    connect(T14.conditionPort, lessThreshold.y) annotation (Line(points={{83,62},
            {6,62},{6,60},{-29,60}}, color={255,0,255}));
    connect(and2.y, rest) annotation (Line(points={{98.6,38},{100,38},{100,0},{
            110,0}}, color={255,0,255}));
    connect(ini.activePort, and2.u1) annotation (Line(points={{78.72,38},{84.8,
            38},{84.8,38}}, color={255,0,255}));
    connect(restWait.activePort, and2.u2) annotation (Line(points={{60.72,20},{
            78,20},{78,33.2},{84.8,33.2}}, color={255,0,255}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end ModeSelector_baseline;

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
        annotation (Placement(transformation(extent={{72,22},{90,40}})));
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

      connect(not1.y, isOffCheck.u2) annotation (Line(points={{80.6,60},{86,60},{86,
              46},{50,46},{50,31},{70.2,31}}, color={255,0,255}));
      connect(off.y, isOffCheck.u1) annotation (Line(points={{60.4,38},{65.25,38},{65.25,
              38.2},{70.2,38.2}}, color={0,0,127}));
      connect(switch1.y, isOffCheck.u3) annotation (Line(points={{73,0},{80,0},{80,16},
              {60,16},{60,23.8},{70.2,23.8}}, color={0,0,127}));
      connect(isOffCheck.y, signalBus.P0102_mod) annotation (Line(points={{90.9,31},
              {100,31},{100,0}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
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
      connect(HPSwitch.y, signalBus.P03_mod) annotation (Line(points={{61,30},{
              80,30},{80,0},{100,0}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}},
          horizontalAlignment=TextAlignment.Left));
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
        IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 rmot
          annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
        Modelica.Blocks.Tables.CombiTable1D cooCurve_TABS(table=[273.15 + 18,
              273.15 + 22.5; 273.15 + 23,273.15 + 21; 273.15 + 30,273.15 + 19.5])
          "Infrax TABS cooling curve"
          annotation (Placement(transformation(extent={{-70,40},{-50,60}})));
        Modelica.Blocks.Nonlinear.Limiter limiter(uMax=273.15 + 23, uMin=273.15 + 19)
          annotation (Placement(transformation(extent={{-42,40},{-22,60}})));
        IDEAS.Controls.Continuous.LimPID conP05(
          initType=Modelica.Blocks.Types.InitPID.InitialState,
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          Td=0,
          reverseAction=true,
          k=10,
          Ti(displayUnit="s") = 45) "Controller for TABS pump"
          annotation (Placement(transformation(extent={{60,40},{80,60}})));
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
      equation

        connect(rmot.TRm, cooCurve_TABS.u[1])
          annotation (Line(points={{-79.4,50},{-72,50}}, color={0,0,127}));
        connect(dataBus.T17, conP05.u_m) annotation (Line(
            points={{-99.9,0.1},{-99.9,20},{70,20},{70,38}},
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
          annotation (Line(points={{-6,50},{-21,50}}, color={0,0,127}));
        connect(cooCurve_TABS.y[1], limiter.u)
          annotation (Line(points={{-49,50},{-44,50}}, color={0,0,127}));
        connect(product.y, add.u2) annotation (Line(points={{45,-30},{56,-30},{56,-6},
                {-14,-6},{-14,38},{-6,38}}, color={0,0,127}));
        connect(add.y, dewProt.u2)
          annotation (Line(points={{17,44},{24,44}}, color={0,0,127}));
        connect(dewProt.y, conP05.u_s)
          annotation (Line(points={{47,50},{58,50}}, color={0,0,127}));
        connect(DewPoiThre.y, dewProt.u1) annotation (Line(points={{17,70},{20,70},{20,
                56},{24,56}}, color={0,0,127}));
        connect(conP05.y, product1.u2) annotation (Line(points={{81,50},{86,50},
                {86,66},{44,66},{44,74},{58,74}}, color={0,0,127}));
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
          annotation (Placement(transformation(extent={{-4,-18},{16,2}})));
        IDEAS.Controls.Continuous.LimPID valvePID(
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          k=1,
          Ti(displayUnit="min") = 1800,
          y_start=1,
          reverseAction=true,
          yMin=0.05)
          annotation (Placement(transformation(extent={{24,-18},{44,2}})));
        Modelica.Blocks.Math.Add deltaTABS(k2=-1)
          "TABS temperature difference (per floor)"
          annotation (Placement(transformation(extent={{-40,-80},{-20,-60}})));
        Modelica.Blocks.Logical.Switch neutralCheck
          annotation (Placement(transformation(extent={{60,-10},{80,10}})));
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
      equation
        connect(floorSetPoint.y[1], valvePID.u_s)
          annotation (Line(points={{17,-8},{22,-8}},
                                                   color={0,0,127}));
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
        connect(abs.y, valvePID.u_m) annotation (Line(points={{21,-70},{34,-70},
                {34,-20}}, color={0,0,127}));
        connect(valvePID.y, neutralCheck.u3) annotation (Line(points={{45,-8},{
                58,-8}},                                   color={0,0,127}));
        connect(neutralOpen.y, neutralCheck.u1) annotation (Line(points={{41,22},
                {42,22},{42,8},{58,8}}, color={0,0,127}));
        connect(signalBus.restMode, neutralCheck.u2) annotation (Line(
            points={{100,0},{100,-20},{50,-20},{50,0},{58,0}},
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
          annotation (Line(points={{-11,-8},{-6,-8}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end TwoWayValveCCAbaseline;
    end BaseClasses;

    package RBCBaseline
      model TwoWayValveCCA0
        extends BaseClasses.TwoWayValveCCAbaseline(FloorAvg(nin=6));
      equation
        connect(neutralCheck.y, signalBus.CCA0_val) annotation (Line(points={{81,0},{
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

        connect(neutralCheck.y, signalBus.CCA3_val) annotation (Line(points={{81,0},{
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
          annotation (Placement(transformation(extent={{0,40},{20,60}})));
        Modelica.Blocks.Tables.CombiTable1D heaCurve_TABS(table=[273.15 - 10,
              273.15 + 27; 273.15,273.15 + 24.5; 273.15 + 15,273.15 + 22.5])
          "Infrax TABS heating curve"
          annotation (Placement(transformation(extent={{-70,40},{-50,60}})));
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
        IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 rmot
          annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
        Modelica.Blocks.Nonlinear.Limiter limiter(uMax=273.15 + 30, uMin=273.15
               + 23)
          annotation (Placement(transformation(extent={{-36,40},{-16,60}})));
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
        connect(rmot.TRm, heaCurve_TABS.u[1])
          annotation (Line(points={{-79.4,50},{-72,50}}, color={0,0,127}));
        connect(dataBus.T24, con3WayHea.u_m) annotation (Line(
            points={{-99.9,0.1},{-99.9,26},{10,26},{10,38}},
            color={255,204,51},
            thickness=0.5), Text(
            string="%first",
            index=-1,
            extent={{-3,-6},{-3,-6}},
            horizontalAlignment=TextAlignment.Right));
        connect(con3WayHea.y, heaCheck.u1) annotation (Line(points={{21,50},{50,
                50},{50,24},{-18,24},{-18,6},{-12,6}}, color={0,0,127}));
        connect(limiter.u, heaCurve_TABS.y[1])
          annotation (Line(points={{-38,50},{-49,50}}, color={0,0,127}));
        connect(limiter.y, con3WayHea.u_s)
          annotation (Line(points={{-15,50},{-2,50}}, color={0,0,127}));
        connect(limiter.y, signalBus.T_TABS) annotation (Line(points={{-15,50},
                {-8,50},{-8,82},{100,82},{100,0}}, color={0,0,127}), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}},
            horizontalAlignment=TextAlignment.Left));
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
    equation
      connect(sitSel.sit1, comCon.sit1) annotation (Line(points={{-41,2},{-41,4},
              {-20,4},{0,4}}, color={255,0,255}));
      connect(sitSel.sit2, comCon.sit2) annotation (Line(points={{-41,-2},{-20,
              -2},{-20,0},{0,0}}, color={255,0,255}));
      connect(sitSel.sit3, comCon.sit3) annotation (Line(points={{-41,-6},{-41,
              -4},{0,-4}}, color={255,0,255}));
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
      connect(sitSel.sit3, cooTowCon.sit3) annotation (Line(points={{-41,-6},{-18,
              -6},{-18,-12},{15,-12},{15,-30}}, color={255,0,255}));
      connect(sitSel.sit2, cooTowCon.sit2) annotation (Line(points={{-41,-2},{-22,
              -2},{-22,-16},{11,-16},{11,-30}}, color={255,0,255}));
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
    Modelica.Blocks.Logical.Hysteresis hysteresis1(uLow=273.15 + 24, uHigh=
          273.15 + 25.5)
      annotation (Placement(transformation(extent={{-30,-34},{-10,-14}})));
    Modelica.Blocks.MathBoolean.And nv2(nu=4)
      "Second activation of night ventilation"
      annotation (Placement(transformation(extent={{0,30},{20,50}})));
    Components.Step stab(
      nOut=2,
      nIn=1,
      initialStep=false,
      use_activePort=false) "stabilization period"
      annotation (Placement(transformation(extent={{56,-24},{64,-16}})));
    Components.Transition T1(                        waitTime=86400,
      use_conditionPort=true,
      delayedTransition=false,
      use_firePort=false)
      annotation (Placement(transformation(extent={{56,36},{64,44}})));
    Components.Step no_nv(
      nOut=1,
      nIn=1,
      initialStep=true,
      use_activePort=false) "night ventilation off"
      annotation (Placement(transformation(extent={{56,56},{64,64}})));
    Components.Step nv_1(
      use_activePort=true,
      nOut=1,
      nIn=1,
      initialStep=false) "night ventilation 1"
      annotation (Placement(transformation(extent={{56,16},{64,24}})));
    Components.Step nv_2(
      use_activePort=true,
      nOut=1,
      nIn=1,
      initialStep=false) "night ventilation 2"
      annotation (Placement(transformation(extent={{56,-64},{64,-56}})));
    Components.Transition T2(                        waitTime=86400,
      use_conditionPort=true,
      delayedTransition=false,
      use_firePort=false)
      annotation (Placement(transformation(extent={{56,-4},{64,4}})));
    Components.Transition T3(
      use_firePort=false,
      delayedTransition=true,
      waitTime=15*60,
      use_conditionPort=true)
      annotation (Placement(transformation(extent={{56,-44},{64,-36}})));
    Modelica.Blocks.Logical.Hysteresis hysteresis2(uLow=273.15 + 23.5, uHigh=
          273.15 + 24.5)
      annotation (Placement(transformation(extent={{-30,-60},{-10,-40}})));
    Components.Transition T4(
      use_firePort=false,
      delayedTransition=true,
      waitTime=15*60,
      use_conditionPort=true)
      annotation (Placement(transformation(extent={{76,-34},{84,-26}})));
    Modelica.Blocks.Logical.Not not1
      annotation (Placement(transformation(extent={{40,-36},{52,-24}})));
    Components.Step wait(
      use_activePort=true,
      nOut=1,
      nIn=2,
      initialStep=false) "wait till next day"
      annotation (Placement(transformation(extent={{76,-90},{84,-82}})));
    Components.Transition T5(
      use_firePort=false,
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=6*3600)
      annotation (Placement(transformation(extent={{136,-80},{144,-88}})));
    Modelica.Blocks.Logical.Not not2
      annotation (Placement(transformation(extent={{38,-6},{50,6}})));
    Components.Transition T6(
      use_firePort=false,
      waitTime=15*60,
      use_conditionPort=true,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{56,-80},{64,-72}})));
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
        points={{-99.9,0.1},{-82,0.1},{-82,-24},{-34,-24},{-32,-24}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(no_nv.outPort[1], T1.inPort)
      annotation (Line(points={{60,55.4},{60,49.7},{60,44}}, color={0,0,0}));
    connect(nv1.y, T1.conditionPort) annotation (Line(points={{21.5,60},{40.75,
            60},{40.75,40},{55,40}}, color={255,0,255}));
    connect(T1.outPort, nv_1.inPort[1])
      annotation (Line(points={{60,35},{60,29.5},{60,24}}, color={0,0,0}));
    connect(nv_1.outPort[1], T2.inPort)
      annotation (Line(points={{60,15.4},{60,4}}, color={0,0,0}));
    connect(T2.outPort, stab.inPort[1])
      annotation (Line(points={{60,-5},{60,-5},{60,-16}}, color={0,0,0}));
    connect(stab.outPort[1], T3.inPort)
      annotation (Line(points={{59,-24.6},{60,-30},{60,-36}}, color={0,0,0}));
    connect(dataBus.Tavg_building, hysteresis2.u) annotation (Line(
        points={{-99.9,0.1},{-92,0.1},{-82,0.1},{-82,-50},{-32,-50}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(nv2.y, T3.conditionPort) annotation (Line(points={{21.5,40},{30,40},
            {30,-40},{55,-40}}, color={255,0,255}));
    connect(T3.outPort, nv_2.inPort[1])
      annotation (Line(points={{60,-45},{60,-50.5},{60,-56}}, color={0,0,0}));
    connect(nv2.y, not1.u) annotation (Line(points={{21.5,40},{30,40},{30,-30},
            {38.8,-30}}, color={255,0,255}));
    connect(not1.y, T4.conditionPort)
      annotation (Line(points={{52.6,-30},{75,-30}}, color={255,0,255}));
    connect(T4.outPort, wait.inPort[1])
      annotation (Line(points={{80,-35},{80,-82},{79,-82}}, color={0,0,0}));
    connect(wait.outPort[1], T5.inPort) annotation (Line(points={{80,-90.6},{80,
            -100},{140,-100},{140,-88}}, color={0,0,0}));
    connect(T5.outPort, no_nv.inPort[1]) annotation (Line(points={{140,-79},{
            140,-79},{140,72},{60,72},{60,64}}, color={0,0,0}));
    connect(not2.y, T2.conditionPort)
      annotation (Line(points={{50.6,0},{55,0}}, color={255,0,255}));
    connect(nv1.y, not2.u) annotation (Line(points={{21.5,60},{34,60},{34,0},{
            36,0},{36.8,0}},                      color={255,0,255}));
    connect(not3.y, T6.conditionPort) annotation (Line(points={{50.6,-76},{55,
            -76},{55,-76}}, color={255,0,255}));
    connect(nv2.y, not3.u) annotation (Line(points={{21.5,40},{28,40},{28,-76},
            {36.8,-76}}, color={255,0,255}));
    connect(T6.inPort, nv_2.outPort[1]) annotation (Line(points={{60,-72},{60,
            -64.6},{60,-64.6}}, color={0,0,0}));
    connect(T6.outPort, wait.inPort[2]) annotation (Line(points={{60,-81},{60,
            -81},{60,-82},{81,-82}}, color={0,0,0}));
    connect(stab.outPort[2], T4.inPort) annotation (Line(points={{61,-24.6},{70,
            -24.6},{70,-26},{80,-26}}, color={0,0,0}));
    connect(nv_1.activePort, or1.u1)
      annotation (Line(points={{64.72,20},{72.8,20}}, color={255,0,255}));
    connect(nv_2.activePort, or1.u2) annotation (Line(points={{64.72,-60},{70,
            -60},{70,15.2},{72.8,15.2}}, color={255,0,255}));
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
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end NightVentilation;

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
          273.15 + 23)
      "External temperature for which the shading device can be on"
      annotation (Placement(transformation(extent={{-40,-20},{-20,0}})));
    Modelica.Blocks.MathBoolean.And east2nd(nu=4)
      annotation (Placement(transformation(extent={{40,80},{60,100}})));
    Modelica.Blocks.Sources.BooleanExpression south_on(y=if clock.hour > 11
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
    Modelica.Blocks.MathBoolean.And south(nu=4)
      annotation (Placement(transformation(extent={{40,60},{60,80}})));
    Modelica.Blocks.MathBoolean.And west(nu=4)
      annotation (Placement(transformation(extent={{40,40},{60,60}})));
    Modelica.Blocks.Logical.LessEqualThreshold    greaterEqualThreshold2(threshold=
         30)
      annotation (Placement(transformation(extent={{40,-40},{60,-20}})));
    Modelica.Blocks.Logical.LessEqualThreshold    greaterEqualThreshold3(threshold=
         22)
      annotation (Placement(transformation(extent={{40,-80},{60,-60}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal
      annotation (Placement(transformation(extent={{-130,-20},{-120,-10}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal1
      annotation (Placement(transformation(extent={{-130,10},{-120,20}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal2
      annotation (Placement(transformation(extent={{-130,-6},{-120,4}})));
    Modelica.Blocks.MathBoolean.And east3rd(nu=4)
      annotation (Placement(transformation(extent={{40,100},{60,120}})));
    Modelica.Blocks.Math.BooleanToReal booleanToReal3
      annotation (Placement(transformation(extent={{-130,26},{-120,36}})));
    Components.Clock           clock
      annotation (Placement(transformation(extent={{80,80},{100,100}})));
  equation

    connect(weaBus.Te, hysteresis.u) annotation (Line(
        points={{-69.95,70.05},{-69.95,70.05},{-69.95,-10},{-42,-10}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-6,3},{-6,3}}));
    connect(ninety_degrees.y, altAng.u1) annotation (Line(points={{-79,-30},{-60,
            -30},{-60,-44},{-42,-44}}, color={0,0,127}));
    connect(altAng.y, radiansToDegrees.u)
      annotation (Line(points={{-19,-50},{-14.8,-50}}, color={0,0,127}));
    connect(west_on.y, west.u[1]) annotation (Line(points={{-19,50},{40,50},{40,
            55.25}}, color={255,0,255}));
    connect(south_on.y, south.u[1]) annotation (Line(points={{-19,70},{40,70},{
            40,75.25}}, color={255,0,255}));
    connect(east_on.y, east2nd.u[1]) annotation (Line(points={{-19,90},{40,90},
            {40,95.25}}, color={255,0,255}));
    connect(hysteresis.y, west.u[2]) annotation (Line(points={{-19,-10},{-10,
            -10},{0,-10},{0,51.75},{40,51.75}}, color={255,0,255}));
    connect(hysteresis.y, south.u[2]) annotation (Line(points={{-19,-10},{0,-10},
            {0,71.75},{40,71.75}}, color={255,0,255}));
    connect(hysteresis.y, east2nd.u[2]) annotation (Line(points={{-19,-10},{0,-10},
            {0,91.75},{40,91.75}}, color={255,0,255}));
    connect(radiansToDegrees.y, greaterEqualThreshold.u) annotation (Line(
          points={{-5.6,-50},{0,-50},{0,-30},{6,-30}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold2.u) annotation (Line(
          points={{-5.6,-50},{34,-50},{34,-30},{38,-30}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold1.u) annotation (Line(
          points={{-5.6,-50},{0,-50},{0,-70},{6,-70}}, color={0,0,127}));
    connect(radiansToDegrees.y, greaterEqualThreshold3.u) annotation (Line(
          points={{-5.6,-50},{-5.6,-50},{34,-50},{34,-70},{38,-70}}, color={0,0,
            127}));
    connect(greaterEqualThreshold.y, east2nd.u[3]) annotation (Line(points={{29,
            -30},{28,-30},{28,86},{28,88.25},{40,88.25}}, color={255,0,255}));
    connect(greaterEqualThreshold2.y, east2nd.u[4]) annotation (Line(points={{
            61,-30},{60,-30},{60,18},{60,20},{30,20},{30,84.75},{40,84.75}},
          color={255,0,255}));
    connect(greaterEqualThreshold1.y, west.u[3]) annotation (Line(points={{29,
            -70},{32,-70},{32,48.25},{40,48.25}}, color={255,0,255}));
    connect(greaterEqualThreshold3.y, west.u[4]) annotation (Line(points={{61,
            -70},{61,32},{40,32},{40,44.75}}, color={255,0,255}));
    connect(greaterEqualThreshold1.y, south.u[3]) annotation (Line(points={{29,
            -70},{30,-70},{30,68.25},{40,68.25}}, color={255,0,255}));
    connect(greaterEqualThreshold3.y, south.u[4]) annotation (Line(points={{61,
            -70},{60,-70},{60,36},{40,36},{40,64.75}}, color={255,0,255}));
    connect(east2nd.y, booleanToReal1.u) annotation (Line(points={{61.5,90},{62,
            90},{62,104},{-122,104},{-138,104},{-138,15},{-131,15}}, color={255,
            0,255}));
    connect(south.y, booleanToReal2.u) annotation (Line(points={{61.5,70},{61.5,
            102},{-136,102},{-136,-1},{-131,-1}}, color={255,0,255}));
    connect(booleanToReal2.y, dataBus.southShading) annotation (Line(points={{
            -119.5,-1},{-110.75,-1},{-110.75,0.1},{-99.9,0.1}}, color={0,0,127}),
        Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(west.y, booleanToReal.u) annotation (Line(points={{61.5,50},{62,50},
            {62,104},{62,106},{-140,106},{-140,-15},{-131,-15}}, color={255,0,
            255}));
    connect(booleanToReal.y, dataBus.westShading) annotation (Line(points={{
            -119.5,-15},{-99.9,-15},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(booleanToReal1.y, dataBus.eastShading2nd) annotation (Line(points={
            {-119.5,15},{-99.9,15},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(greaterEqualThreshold1.y, east3rd.u[1]) annotation (Line(points={{
            29,-70},{28,-70},{28,115.25},{40,115.25}}, color={255,0,255}));
    connect(greaterEqualThreshold3.y, east3rd.u[2]) annotation (Line(points={{
            61,-70},{64,-70},{64,28},{64,26},{34,26},{34,111.75},{40,111.75}},
          color={255,0,255}));
    connect(east_on.y, east3rd.u[3]) annotation (Line(points={{-19,90},{-8,90},
            {-8,108.25},{40,108.25}}, color={255,0,255}));
    connect(hysteresis.y, east3rd.u[4]) annotation (Line(points={{-19,-10},{-6,
            -10},{-6,104.75},{40,104.75}}, color={255,0,255}));
    connect(east3rd.y, booleanToReal3.u) annotation (Line(points={{61.5,110},{
            61.5,126},{-131,126},{-131,31}}, color={255,0,255}));
    connect(booleanToReal3.y, dataBus.eastShading3rd) annotation (Line(points={
            {-119.5,31},{-99.9,31},{-99.9,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}}));
    connect(weaBus.angZen, altAng.u2) annotation (Line(
        points={{-69.95,70.05},{-70,70.05},{-70,-56},{-42,-56}},
        color={255,204,51},
        thickness=0.5));
    connect(sim.weaBus, weaBus) annotation (Line(
        points={{-81,93},{-78,93},{-78,70},{-70,70}},
        color={255,204,51},
        thickness=0.5));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
          coordinateSystem(preserveAspectRatio=false)));
  end SunShading;

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
      annotation (Placement(transformation(extent={{74,48},{94,28}})));
    Modelica.Blocks.Logical.Hysteresis hysteresisHea[21](            uHigh=-0.25, uLow=-1.25)
      annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
    Modelica.Blocks.Logical.Not not1[21]
      annotation (Placement(transformation(extent={{-20,64},{-8,76}})));
    Modelica.Blocks.Tables.CombiTable1D supplySetpoint[21](each table=[-1,
          273.15 + 24; 0,273.15 + 22; 0.5,273.15 + 18])
                        "setpoint for the supply air temperature"
      annotation (Placement(transformation(extent={{-10,20},{10,40}})));
    Modelica.Blocks.Nonlinear.Limiter limiter[21](                  uMin=273.15 +
          18, uMax=273.15 + 24)
              "air supply temperature setpoint"
      annotation (Placement(transformation(extent={{16,20},{36,40}})));
    IDEAS.Controls.Continuous.LimPID conHeaCoi[21](
      controllerType=Modelica.Blocks.Types.SimpleController.PI,
      each k=2,
      each Ti=100,
      each reset=IDEAS.Types.Reset.Disabled)
      "Controller for heating coils in air ducts"
      annotation (Placement(transformation(extent={{44,20},{64,40}})));
    IDEAS.Utilities.Math.Max max[15](nin=3)
      "Maximum of the setpoints is the setpoint for the damper" annotation (
        Placement(transformation(
          extent={{-10,-10},{10,10}},
          rotation=-90,
          origin={-10,-44})));
    Modelica.Blocks.Sources.RealExpression flush[15](y=if (clock.hour >= 5 and
          clock.hour <= 6) or nightVentilation then 1 else 0)
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
          273.15 + 24,273.15 + 32])
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
    Modelica.Blocks.Sources.BooleanExpression AHUon(y=if ((clock.hour >= 5 and
          clock.hour < 20) and (clock.weekDay) < 6) == true then true else
          false) "Supply fan pressure difference set-point"
      annotation (Placement(transformation(extent={{10,100},{32,120}})));
    Modelica.Blocks.Logical.And and1
      annotation (Placement(transformation(extent={{42,94},{54,106}})));
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
            {72,38}},                   color={255,0,255}));
    connect(supplySetpoint.y[1], limiter.u)
      annotation (Line(points={{11,30},{14,30}},color={0,0,127}));
    connect(conHeaCoi.u_s, limiter.y)
      annotation (Line(points={{42,30},{37,30}}, color={0,0,127}));
    connect(dataBus.TAirSupplyVAV, conHeaCoi.u_m) annotation (Line(
        points={{-99.9,0.1},{54,0.1},{54,18}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(flush.y, max.u[1])
      annotation (Line(points={{19,-26},{-10,-26},{-10,-32},{-11.3333,-32}},
                                                              color={0,0,127}));
    connect(max.y, signalBus.VAV_signal) annotation (Line(points={{-10,-55},{-10,-60},
            {100.1,-60},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));



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



    connect(heaDemand.y, signalBus.Heacoils_signal) annotation (Line(points={{95,38},
            {100.1,38},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{6,3},{6,3}},
        horizontalAlignment=TextAlignment.Left));
    connect(max[1].y, signalBus.VAV_signal_extract[1]) annotation (Line(points={{-10,-55},
            {-10,-60},{100.1,-60},{100.1,0.1}}, color={0,0,127}), Text(
        string="%second",
        index=1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(max[2].y, signalBus.VAV_signal_extract[2]);
    connect(max[3].y, signalBus.VAV_signal_extract[3]);
    connect(max[4].y, signalBus.VAV_signal_extract[4]);
    connect(max[5].y, signalBus.VAV_signal_extract[5]);
    connect(max[6].y, signalBus.VAV_signal_extract[6]);
    connect(max[7].y, signalBus.VAV_signal_extract[7]);
    connect(max[8].y, signalBus.VAV_signal_extract[8]);
    connect(max[9].y, signalBus.VAV_signal_extract[9]);
    connect(max[11].y, signalBus.VAV_signal_extract[10]);
    connect(max[12].y, signalBus.VAV_signal_extract[11]);
    connect(max[13].y, signalBus.VAV_signal_extract[12]);
    connect(max[14].y, signalBus.VAV_signal_extract[13]);
    connect(max[15].y, signalBus.VAV_signal_extract[14]);

    connect(max[10].y, signalBus.VAV_signal_extract[15]); //dummy connection

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
      annotation (Line(points={{65,30},{72,30}}, color={0,0,127}));
    connect(heaDemand.u3, tracking.y) annotation (Line(points={{72,46},{-54,46},
            {-54,30},{-59,30}}, color={0,0,127}));
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
    connect(dataBus.CO2_GndFlr_MT1, conCO2[14].u_m) annotation (Line(
        points={{-99.9,0.1},{-99.9,-112},{20,-112},{20,-102}},
        color={255,204,51},
        thickness=0.5), Text(
        string="%first",
        index=-1,
        extent={{-3,-6},{-3,-6}},
        horizontalAlignment=TextAlignment.Right));
    connect(dataBus.CO2_GndFlr_MT2, conCO2[15].u_m) annotation (Line(
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
    connect(limiter.y, max1.u) annotation (Line(points={{37,30},{38,30},{38,48},
            {12,48},{12,58},{18.4,58}}, color={0,0,127}));
    connect(and1.y, P06_signal.u)
      annotation (Line(points={{54.6,100},{62.4,100}}, color={255,0,255}));
    connect(or1.y, and1.u2) annotation (Line(points={{32.9,94},{38,94},{38,95.2},
            {40.8,95.2}}, color={255,0,255}));
    connect(AHUon.y, and1.u1) annotation (Line(points={{33.1,110},{38,110},{38,
            100},{40.8,100}}, color={255,0,255}));
    connect(hysteresisHea.u, supplySetpoint.u[1]) annotation (Line(points={{-62,
            70},{-72,70},{-72,52},{-16,52},{-16,30},{-12,30}}, color={0,0,127}));
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

end SubControllers;
