within INFRAX.SubSystems.HeatingSystem.Components;
model CoolingTowerKPI
  extends CoolingTower;

  INFRAX.SubSystems.Controllers.EnergyKPIBus energyKPIBus annotation (Placement(
        transformation(extent={{80,-108},{120,-68}}), iconTransformation(extent=
           {{90,-80},{110,-60}})));
  Modelica.Blocks.Math.Gain gain(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{62,-76},{74,-64}})));
  Modelica.Blocks.Continuous.Integrator integrator(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{62,-98},{74,-86}})));
  Modelica.Blocks.Math.Gain gain1(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{60,-34},{72,-22}})));
  Modelica.Blocks.Continuous.Integrator integrator1(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{60,-58},{72,-46}})));
  Modelica.Blocks.Sources.RealExpression realExpression1(y=-coolingTower.Q_flow)
    annotation (Placement(transformation(extent={{34,-38},{54,-18}})));
  Modelica.Blocks.Sources.RealExpression EER(y=if P_CT > 0 then coolingTower.Q_flow
        /(P_CT + 0.001) else 1)
    annotation (Placement(transformation(extent={{40,-126},{60,-106}})));
  Modelica.Blocks.Math.Division division1
    annotation (Placement(transformation(extent={{112,-62},{128,-46}})));
  Modelica.Blocks.Continuous.Integrator integrator4(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{-40,-86},{-32,-78}})));
  Modelica.Blocks.Math.Gain gain4(k=1/1000)
                                           "W to kW"
    annotation (Placement(transformation(extent={{-64,-86},{-56,-78}})));
  Modelica.Blocks.Math.Gain gain2(k=1/1000)
                                           "W to kW"
    annotation (Placement(transformation(extent={{-66,26},{-58,34}})));
  Modelica.Blocks.Continuous.Integrator integrator2(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{-42,26},{-34,34}})));
  Modelica.Blocks.Sources.RealExpression realExpression2(y=e006.Q2_flow)
    annotation (Placement(transformation(extent={{-80,-42},{-60,-22}})));
  Modelica.Blocks.Math.Gain gain3(k=1/1000)
                                           "W to kW"
    annotation (Placement(transformation(extent={{-54,-36},{-46,-28}})));
  Modelica.Blocks.Continuous.Integrator integrator3(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{-30,-36},{-22,-28}})));

equation

    connect(realExpression.y, gain.u) annotation (Line(
      points={{93,90},{94,90},{94,-46},{52,-46},{52,-70},{60.8,-70}},
      color={0,0,127},
      visible=false));
  connect(gain.y, energyKPIBus.dotW_CT) annotation (Line(points={{74.6,-70},{
          100.1,-70},{100.1,-87.9}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator.u, gain.y) annotation (Line(points={{60.8,-92},{58,-92},{
          58,-82},{82,-82},{82,-70},{74.6,-70}}, color={0,0,127}));
  connect(integrator.y, energyKPIBus.W_CT) annotation (Line(points={{74.6,-92},
          {92,-92},{92,-87.9},{100.1,-87.9}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator1.u, gain1.y) annotation (Line(points={{58.8,-52},{50,-52},
          {50,-40},{78,-40},{78,-28},{72.6,-28}}, color={0,0,127}));
  connect(gain1.y, energyKPIBus.dotQ_CT) annotation (Line(points={{72.6,-28},{
          100.1,-28},{100.1,-87.9}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator1.y, energyKPIBus.Q_CT) annotation (Line(points={{72.6,-52},
          {100.1,-52},{100.1,-87.9}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression1.y, gain1.u)
    annotation (Line(points={{55,-28},{58.8,-28}}, color={0,0,127}));
  connect(EER.y, energyKPIBus.EER_CT) annotation (Line(points={{61,-116},{100.1,
          -116},{100.1,-87.9}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator1.y, division1.u1) annotation (Line(points={{72.6,-52},{82,
          -52},{82,-46},{100,-46},{100,-49.2},{110.4,-49.2}}, color={0,0,127}));
  connect(integrator.y, division1.u2) annotation (Line(points={{74.6,-92},{82,
          -92},{82,-58.8},{110.4,-58.8}}, color={0,0,127}));
  connect(division1.y, energyKPIBus.SEER_CT) annotation (Line(points={{128.8,
          -54},{142,-54},{142,-84},{100.1,-84},{100.1,-87.9}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(p10.P, gain4.u) annotation (Line(points={{-9.1,-51.3},{-76,-51.3},{
          -76,-82},{-64.8,-82}}, color={0,0,127}));
  connect(gain4.y, integrator4.u)
    annotation (Line(points={{-55.6,-82},{-40.8,-82}}, color={0,0,127}));
  connect(integrator4.y, energyKPIBus.W_P10) annotation (Line(
      points={{-31.6,-82},{36,-82},{36,-87.9},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain4.y, energyKPIBus.dotW_P10) annotation (Line(
      points={{-55.6,-82},{-48,-82},{-48,-92},{100.1,-92},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain2.y, integrator2.u)
    annotation (Line(points={{-57.6,30},{-42.8,30}}, color={0,0,127}));
  connect(p11.P, gain2.u) annotation (Line(points={{-21.2,50.6},{-70,50.6},{-70,
          30},{-66.8,30}}, color={0,0,127}));
  connect(integrator2.y, energyKPIBus.W_P11) annotation (Line(
      points={{-33.6,30},{-22,30},{-22,-87.9},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain2.y, energyKPIBus.dotW_P11) annotation (Line(
      points={{-57.6,30},{-52,30},{-52,-60},{100.1,-60},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression2.y, gain3.u)
    annotation (Line(points={{-59,-32},{-54.8,-32}}, color={0,0,127}));
  connect(gain3.y, integrator3.u)
    annotation (Line(points={{-45.6,-32},{-30.8,-32}}, color={0,0,127}));
  connect(integrator3.y, energyKPIBus.Q_E006) annotation (Line(
      points={{-21.6,-32},{-20,-32},{-20,-76},{100.1,-76},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain3.y, energyKPIBus.dotQ_E006) annotation (Line(
      points={{-45.6,-32},{-38,-32},{-38,-68},{100.1,-68},{100.1,-87.9}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));

end CoolingTowerKPI;
