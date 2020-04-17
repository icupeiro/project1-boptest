within INFRAX.SubSystems.HeatingSystem;
model HP_KPIs
  Modelica.Blocks.Math.Gain gain(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-60,38},{-40,58}})));
  Modelica.Blocks.Math.Gain gain1(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-26,-30},{-6,-10}})));
  Modelica.Blocks.Math.Gain gain2(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-26,-62},{-6,-42}})));
  Modelica.Blocks.Continuous.Integrator integrator(k=1/3600)
    annotation (Placement(transformation(extent={{18,38},{38,58}})));
  Modelica.Blocks.Continuous.Integrator integrator1(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{48,-14},{68,6}})));
  Modelica.Blocks.Continuous.Integrator integrator2(k=1/3600)
    annotation (Placement(transformation(extent={{72,-48},{92,-28}})));
  Modelica.Blocks.Sources.Constant EER(k=1) "no reversible HPs"
    annotation (Placement(transformation(extent={{142,88},{162,108}})));
  Modelica.Blocks.Math.Division division
    annotation (Placement(transformation(extent={{84,64},{104,84}})));
  Modelica.Blocks.Continuous.Integrator integrator3(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{44,-118},{64,-98}})));
  Modelica.Blocks.Continuous.Integrator integrator4(k=1/3600)
    annotation (Placement(transformation(extent={{74,-146},{94,-126}})));
  Modelica.Blocks.Continuous.Integrator integrator5(k=1/3600)
    annotation (Placement(transformation(extent={{20,-82},{40,-62}})));
  Modelica.Blocks.Math.Gain gain3(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-24,-106},{-4,-86}})));
  Modelica.Blocks.Math.Gain gain4(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-24,-134},{-4,-114}})));
  Modelica.Blocks.Math.Gain gain5(k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{-24,-160},{-4,-140}})));
  Modelica.Blocks.Math.Division division1
    annotation (Placement(transformation(extent={{140,-96},{160,-76}})));
  Modelica.Blocks.Sources.RealExpression COP2 "COP of HP1"
    annotation (Placement(transformation(extent={{104,104},{124,124}})));
  Modelica.Blocks.Sources.RealExpression COP1 "COP of HP1"
    annotation (Placement(transformation(extent={{104,120},{124,140}})));
  Modelica.Blocks.Interfaces.RealOutput COP_HP1 annotation (Placement(
        transformation(rotation=0, extent={{220.5,122},{241.5,138}})));
  Modelica.Blocks.Interfaces.RealOutput COP_HP2 annotation (Placement(
        transformation(rotation=0, extent={{220.5,106},{241.5,122}})));
  Modelica.Blocks.Interfaces.RealOutput EER_nonRev annotation (Placement(
        transformation(rotation=0, extent={{220.5,90},{241.5,106}})));
  Modelica.Blocks.Interfaces.RealOutput SCOP_HP1 annotation (Placement(
        transformation(rotation=0, extent={{219.5,66},{240.5,82}})));
  Modelica.Blocks.Interfaces.RealOutput SCOP_HP2 annotation (Placement(
        transformation(rotation=0, extent={{219.5,-94},{240.5,-78}})));
  Modelica.Blocks.Interfaces.RealInput udotQcon_HP1 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,40},{-189.5,56}})));
  Modelica.Blocks.Interfaces.RealOutput dotQcon_HP1 annotation (Placement(
        transformation(rotation=0, extent={{219.5,54},{240.5,70}})));
  Modelica.Blocks.Interfaces.RealInput udotW_HP1 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,-28},{-189.5,-12}})));
  Modelica.Blocks.Interfaces.RealOutput dotW_HP1 annotation (Placement(
        transformation(rotation=0, extent={{219.5,6},{240.5,22}})));
  Modelica.Blocks.Interfaces.RealInput udotQeva_HP1 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,-60},{-189.5,-44}})));
  Modelica.Blocks.Interfaces.RealOutput dotQeva_HP1 annotation (Placement(
        transformation(rotation=0, extent={{219.5,-8},{240.5,8}})));
  Modelica.Blocks.Interfaces.RealInput udotQcon_HP2 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,-104},{-189.5,-88}})));
  Modelica.Blocks.Interfaces.RealOutput dotQcon_HP2 annotation (Placement(
        transformation(rotation=0, extent={{221.5,-78},{242.5,-62}})));
  Modelica.Blocks.Interfaces.RealInput udotW_HP2 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,-132},{-189.5,-116}})));
  Modelica.Blocks.Interfaces.RealOutput dotW_HP2 annotation (Placement(
        transformation(rotation=0, extent={{219.5,-132},{240.5,-116}})));
  Modelica.Blocks.Interfaces.RealInput udotQeva_HP2 annotation (Placement(
        transformation(rotation=0, extent={{-210.5,-158},{-189.5,-142}})));
  Modelica.Blocks.Interfaces.RealOutput dotQeva_HP2 annotation (Placement(
        transformation(rotation=0, extent={{219.5,-172},{240.5,-156}})));
  Modelica.Blocks.Interfaces.RealOutput Qcon_HP1(start=integrator.y_start)
    annotation (Placement(transformation(rotation=0, extent={{220.5,40},{241.5,
            56}})));
  Modelica.Blocks.Interfaces.RealOutput W_HP1(start=integrator1.y_start)
    annotation (Placement(transformation(rotation=0, extent={{219.5,20},{240.5,
            36}})));
  Modelica.Blocks.Interfaces.RealOutput Qeva_HP1(start=integrator2.y_start)
    annotation (Placement(transformation(rotation=0, extent={{219.5,-24},{240.5,
            -8}})));
  Modelica.Blocks.Interfaces.RealOutput W_HP2(start=integrator3.y_start)
    annotation (Placement(transformation(rotation=0, extent={{219.5,-118},{
            240.5,-102}})));
  Modelica.Blocks.Interfaces.RealOutput Qeva_HP2(start=integrator4.y_start)
    annotation (Placement(transformation(rotation=0, extent={{219.5,-144},{
            240.5,-128}})));
  Modelica.Blocks.Interfaces.RealOutput Qcon_HP2(start=integrator5.y_start)
    annotation (Placement(transformation(rotation=0, extent={{220.5,-66},{241.5,
            -50}})));
  Modelica.Blocks.Math.Add add
    annotation (Placement(transformation(extent={{44,114},{24,134}})));
  Modelica.Blocks.Math.Add add1
    annotation (Placement(transformation(extent={{0,94},{-20,114}})));
  Modelica.Blocks.Interfaces.RealOutput dotQcon_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-12,150})));
  Modelica.Blocks.Interfaces.RealOutput Qcon_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-40,150})));
  Modelica.Blocks.Interfaces.RealOutput Qeva_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-98,150})));
  Modelica.Blocks.Interfaces.RealOutput dotQeva_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-70,150})));
  Modelica.Blocks.Math.Add add2
    annotation (Placement(transformation(extent={{-44,82},{-64,102}})));
  Modelica.Blocks.Math.Add add3
    annotation (Placement(transformation(extent={{-2,62},{-22,82}})));
  Modelica.Blocks.Math.Add add4
    annotation (Placement(transformation(extent={{-138,86},{-158,106}})));
  Modelica.Blocks.Math.Add add5
    annotation (Placement(transformation(extent={{-96,66},{-116,86}})));
  Modelica.Blocks.Interfaces.RealOutput W_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-182,150})));
  Modelica.Blocks.Interfaces.RealOutput dotW_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-154,150})));
  Modelica.Blocks.Interfaces.RealOutput COP_total annotation (Placement(
        transformation(
        rotation=-90,
        extent={{10.5,8},{-10.5,-8}},
        origin={-135,150})));
  Modelica.Blocks.Interfaces.RealOutput SCOP_total annotation (Placement(
        transformation(
        rotation=90,
        extent={{-10.5,-8},{10.5,8}},
        origin={-120,150})));
  Modelica.Blocks.Sources.RealExpression COPtot(y=if dotW_total > 0 then
        dotQcon_total/dotW_total else 1) "total COP"
    annotation (Placement(transformation(extent={{-178,112},{-158,132}})));
  Modelica.Blocks.Sources.RealExpression SCOPtot(y=if W_total > 0 then
        Qcon_total/W_total else 1) "total SCOP"
    annotation (Placement(transformation(extent={{-178,102},{-158,122}})));
equation
  connect(gain.y, integrator.u)
    annotation (Line(points={{-39,48},{16,48}}, color={0,0,127}));
  connect(gain1.y, integrator1.u) annotation (Line(points={{-5,-20},{18,-20},{
          18,-4},{46,-4}}, color={0,0,127}));
  connect(gain2.y, integrator2.u) annotation (Line(points={{-5,-52},{30.5,-52},
          {30.5,-38},{70,-38}}, color={0,0,127}));
  connect(gain5.y, integrator4.u) annotation (Line(points={{-3,-150},{32.5,-150},
          {32.5,-136},{72,-136}}, color={0,0,127}));
  connect(gain4.y, integrator3.u) annotation (Line(points={{-3,-124},{20,-124},
          {20,-108},{42,-108}}, color={0,0,127}));
  connect(gain3.y, integrator5.u) annotation (Line(points={{-3,-96},{6,-96},{6,
          -72},{18,-72}}, color={0,0,127}));
  connect(integrator1.y, division.u2)
    annotation (Line(points={{69,-4},{82,-4},{82,68}}, color={0,0,127}));
  connect(integrator.y, division.u1) annotation (Line(points={{39,48},{68,48},{
          68,80},{82,80}}, color={0,0,127}));
  connect(integrator5.y, division1.u1) annotation (Line(points={{41,-72},{60,
          -72},{60,-80},{138,-80}}, color={0,0,127}));
  connect(integrator3.y, division1.u2) annotation (Line(points={{65,-108},{74,
          -108},{74,-92},{138,-92}}, color={0,0,127}));
  connect(COP_HP1, COP1.y)
    annotation (Line(points={{231,130},{125,130}}, color={0,0,127}));
  connect(COP_HP2, COP2.y)
    annotation (Line(points={{231,114},{125,114}}, color={0,0,127}));
  connect(EER_nonRev, EER.y)
    annotation (Line(points={{231,98},{163,98}}, color={0,0,127}));
  connect(SCOP_HP1, division.y)
    annotation (Line(points={{230,74},{105,74}}, color={0,0,127}));
  connect(SCOP_HP2, division1.y)
    annotation (Line(points={{230,-86},{161,-86}}, color={0,0,127}));
  connect(udotQcon_HP1, gain.u)
    annotation (Line(points={{-200,48},{-62,48}}, color={0,0,127}));
  connect(dotQcon_HP1, gain.y) annotation (Line(points={{230,62},{126,62},{126,
          94},{6,94},{6,48},{-39,48}}, color={0,0,127}));
  connect(udotW_HP1, gain1.u)
    annotation (Line(points={{-200,-20},{-28,-20}}, color={0,0,127}));
  connect(dotW_HP1, gain1.y) annotation (Line(points={{230,14},{6,14},{6,-20},{
          -5,-20}}, color={0,0,127}));
  connect(udotQeva_HP1, gain2.u)
    annotation (Line(points={{-200,-52},{-28,-52}}, color={0,0,127}));
  connect(dotQeva_HP1, gain2.y) annotation (Line(points={{230,0},{130,0},{130,
          -22},{30,-22},{30,-52},{-5,-52}}, color={0,0,127}));
  connect(udotQcon_HP2, gain3.u)
    annotation (Line(points={{-200,-96},{-26,-96}}, color={0,0,127}));
  connect(dotQcon_HP2, gain3.y) annotation (Line(points={{232,-70},{120,-70},{
          120,-88},{6,-88},{6,-96},{-3,-96}}, color={0,0,127}));
  connect(udotW_HP2, gain4.u)
    annotation (Line(points={{-200,-124},{-26,-124}}, color={0,0,127}));
  connect(dotW_HP2, gain4.y)
    annotation (Line(points={{230,-124},{-3,-124}}, color={0,0,127}));
  connect(udotQeva_HP2, gain5.u)
    annotation (Line(points={{-200,-150},{-26,-150}}, color={0,0,127}));
  connect(dotQeva_HP2, gain5.y) annotation (Line(points={{230,-164},{32,-164},{
          32,-150},{-3,-150}}, color={0,0,127}));
  connect(Qcon_HP1, integrator.y)
    annotation (Line(points={{231,48},{39,48}}, color={0,0,127}));
  connect(W_HP1, integrator1.y) annotation (Line(points={{230,28},{82,28},{82,
          -4},{69,-4}}, color={0,0,127}));
  connect(Qeva_HP1, integrator2.y) annotation (Line(points={{230,-16},{216,-16},
          {216,-38},{93,-38}}, color={0,0,127}));
  connect(W_HP2, integrator3.y) annotation (Line(points={{230,-110},{84,-110},{
          84,-108},{65,-108}}, color={0,0,127}));
  connect(Qeva_HP2, integrator4.y)
    annotation (Line(points={{230,-136},{95,-136}}, color={0,0,127}));
  connect(Qcon_HP2, integrator5.y) annotation (Line(points={{231,-58},{60,-58},
          {60,-72},{41,-72}}, color={0,0,127}));
  connect(W_HP2, W_HP2)
    annotation (Line(points={{230,-110},{230,-110}}, color={0,0,127}));
  connect(COP_HP2, COP_HP2)
    annotation (Line(points={{231,114},{231,114}}, color={0,0,127}));
  connect(Qcon_HP2, Qcon_HP2)
    annotation (Line(points={{231,-58},{231,-58}}, color={0,0,127}));
  connect(gain.y, add.u1) annotation (Line(points={{-39,48},{6,48},{6,94},{78,
          94},{78,130},{46,130}}, color={0,0,127}));
  connect(gain3.y, add.u2) annotation (Line(points={{-3,-96},{6,-96},{6,-88},{
          120,-88},{120,102},{88,102},{88,118},{46,118}}, color={0,0,127}));
  connect(add.y, dotQcon_total)
    annotation (Line(points={{23,124},{-12,124},{-12,150}}, color={0,0,127}));
  connect(add1.y, Qcon_total)
    annotation (Line(points={{-21,104},{-40,104},{-40,150}}, color={0,0,127}));
  connect(integrator.y, add1.u1) annotation (Line(points={{39,48},{68,48},{68,
          80},{28,80},{28,110},{2,110}}, color={0,0,127}));
  connect(integrator5.y, add1.u2) annotation (Line(points={{41,-72},{60,-72},{
          60,-58},{112,-58},{112,98},{2,98}}, color={0,0,127}));
  connect(add2.y, Qeva_total)
    annotation (Line(points={{-65,92},{-98,92},{-98,150}}, color={0,0,127}));
  connect(add3.y, dotQeva_total)
    annotation (Line(points={{-23,72},{-70,72},{-70,150}}, color={0,0,127}));
  connect(gain5.y, add3.u2) annotation (Line(points={{-3,-150},{12,-150},{12,66},
          {0,66}}, color={0,0,127}));
  connect(gain2.y, add3.u1) annotation (Line(points={{-5,-52},{10,-52},{10,78},
          {0,78}}, color={0,0,127}));
  connect(integrator2.y, add2.u1) annotation (Line(points={{93,-38},{102,-38},{
          102,56},{50,56},{50,90},{-28,90},{-28,98},{-42,98}}, color={0,0,127}));
  connect(integrator4.y, add2.u2) annotation (Line(points={{95,-136},{108,-136},
          {108,86},{-42,86}}, color={0,0,127}));
  connect(integrator1.y, add4.u1) annotation (Line(points={{69,-4},{82,-4},{82,
          28},{-120,28},{-120,102},{-136,102}}, color={0,0,127}));
  connect(integrator3.y, add4.u2) annotation (Line(points={{65,-108},{74,-108},
          {74,-58},{-128,-58},{-128,90},{-136,90}}, color={0,0,127}));
  connect(add4.y, W_total) annotation (Line(points={{-159,96},{-182,96},{-182,
          150}}, color={0,0,127}));
  connect(gain4.y, add5.u2) annotation (Line(points={{-3,-124},{0,-124},{0,60},
          {-82,60},{-82,70},{-94,70}}, color={0,0,127}));
  connect(add5.u1, integrator1.u) annotation (Line(points={{-94,82},{-76,82},{
          -76,66},{-28,66},{-28,14},{6,14},{6,-20},{18,-20},{18,-4},{46,-4}},
        color={0,0,127}));
  connect(add5.y, dotW_total) annotation (Line(points={{-117,76},{-118,76},{
          -118,128},{-154,128},{-154,150}}, color={0,0,127}));
  connect(COPtot.y, COP_total) annotation (Line(points={{-157,122},{-135,122},{
          -135,150}}, color={0,0,127}));
  connect(SCOPtot.y, SCOP_total) annotation (Line(points={{-157,112},{-120,112},
          {-120,150}}, color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-200,-180},{220,140}})), Icon(
        coordinateSystem(extent={{-200,-180},{220,140}})));
end HP_KPIs;
