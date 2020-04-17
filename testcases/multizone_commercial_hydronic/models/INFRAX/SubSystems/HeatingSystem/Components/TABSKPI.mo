within INFRAX.SubSystems.HeatingSystem.Components;
model TABSKPI
  extends TABS(
    val_coo_sup(l=1e-10),
    val_heat_sup(l=1e-10),
    val_heat_ret(l=1e-10),
    val_coo_ret(l=1e-10));

    Controllers.EnergyKPIBus energyKPIBus annotation (Placement(transformation(
          extent={{102,18},{142,58}}), iconTransformation(extent={{-246,-4},{
            -226,16}})));
  Modelica.Blocks.Continuous.Integrator integrator[35](each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,78},{112,86}})));
  Modelica.Blocks.Math.Gain gain[35](each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,78},{94,86}})));
  Modelica.Blocks.Sources.RealExpression realExpression1[35](y=
        dotQ_TABS_circuit_heating)
    annotation (Placement(transformation(extent={{62,74},{78,90}})));

  Modelica.SIunits.Power dotQ_TABS_circuit_heating[35];
  Modelica.SIunits.Power dotQ_TABS_circuit_cooling[35];
  Modelica.SIunits.Power dotQ_TABS_circuit[35];

  Modelica.SIunits.Power dotQ_TABS_floor_heating[4];
  Modelica.SIunits.Power dotQ_TABS_floor_cooling[4];

  Modelica.SIunits.Power dotQ_TABS_heating;
  Modelica.SIunits.Power dotQ_TABS_cooling;



  Modelica.SIunits.Power dotQ_TABS;
  Modelica.Blocks.Sources.RealExpression realExpression2[35](y=
        dotQ_TABS_circuit_cooling)
    annotation (Placement(transformation(extent={{62,88},{78,104}})));
  Modelica.Blocks.Math.Gain gain1
                                [35](each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,92},{94,100}})));
  Modelica.Blocks.Continuous.Integrator integrator1
                                                  [35](each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,92},{112,100}})));
  Modelica.Blocks.Math.Gain gain4(k=1/1000)
                                           "W to kW"
    annotation (Placement(transformation(extent={{-14,-36},{-6,-28}})));
  Modelica.Blocks.Continuous.Integrator integrator4(k=1/3600, y_start=0.001)
    annotation (Placement(transformation(extent={{12,-36},{20,-28}})));
  Modelica.Blocks.Sources.RealExpression realExpression3[4](y=
        dotQ_TABS_floor_cooling)
    annotation (Placement(transformation(extent={{62,116},{78,132}})));
  Modelica.Blocks.Sources.RealExpression realExpression4[4](y=
        dotQ_TABS_floor_heating)
    annotation (Placement(transformation(extent={{62,102},{78,118}})));
  Modelica.Blocks.Math.Gain gain2[4](each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,106},{94,114}})));
  Modelica.Blocks.Math.Gain gain3[4](each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,120},{94,128}})));
  Modelica.Blocks.Continuous.Integrator integrator2[4](each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,120},{112,128}})));
  Modelica.Blocks.Continuous.Integrator integrator3[4](each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,106},{112,114}})));
  Modelica.Blocks.Sources.RealExpression realExpression5(y=dotQ_TABS_heating)
    annotation (Placement(transformation(extent={{62,130},{78,146}})));
  Modelica.Blocks.Math.Gain gain5(each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,134},{94,142}})));
  Modelica.Blocks.Continuous.Integrator integrator5(each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,134},{112,142}})));
  Modelica.Blocks.Sources.RealExpression realExpression6(y=dotQ_TABS_cooling)
    annotation (Placement(transformation(extent={{62,144},{78,160}})));
  Modelica.Blocks.Math.Gain gain6(each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{86,148},{94,156}})));
  Modelica.Blocks.Continuous.Integrator integrator6(each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{104,148},{112,156}})));
  Modelica.Blocks.Math.Division division1[4]
    annotation (Placement(transformation(extent={{118,168},{128,178}})));
  Modelica.Blocks.Math.Division division2[4]
    annotation (Placement(transformation(extent={{150,168},{160,178}})));
  Modelica.Blocks.Math.Division division3[4]
    annotation (Placement(transformation(extent={{150,186},{160,196}})));
  Modelica.Blocks.Math.Division division4[4]
    annotation (Placement(transformation(extent={{118,186},{128,196}})));
  Modelica.Blocks.Routing.Replicator replicator(nout=4)
    annotation (Placement(transformation(extent={{104,184},{110,190}})));
  Modelica.Blocks.Routing.Replicator replicator1(nout=4)
    annotation (Placement(transformation(extent={{138,184},{144,190}})));
  Modelica.Blocks.Routing.Replicator replicator2(nout=4)
    annotation (Placement(transformation(extent={{104,166},{110,172}})));
  Modelica.Blocks.Routing.Replicator replicator3(nout=4)
    annotation (Placement(transformation(extent={{140,166},{146,172}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=if gain6.y == 0 then
        0.001 else gain6.y)
    annotation (Placement(transformation(extent={{82,182},{92,192}})));
  Modelica.Blocks.Sources.RealExpression realExpression7(y=if gain5.y == 0
         then 0.001 else gain5.y)
    annotation (Placement(transformation(extent={{82,164},{92,174}})));


  Modelica.Blocks.Sources.RealExpression realExpression8(y=dotQ_TABS)
    annotation (Placement(transformation(extent={{84,-6},{100,10}})));
  Modelica.Blocks.Math.Gain gain7(each k=1/1000) "W to kW"
    annotation (Placement(transformation(extent={{108,-2},{116,6}})));
  Modelica.Blocks.Continuous.Integrator integrator7(each k=1/3600, y_start=
        0.001)
    annotation (Placement(transformation(extent={{126,-2},{134,6}})));
equation

 dotQ_TABS_circuit = cat(1, cca3.QTot, cca2.QTot, cca1.QTot, cca0.QTot);

   for i in 1:35 loop
     if dotQ_TABS_circuit[i] > 0 then
       dotQ_TABS_circuit_heating[i] = dotQ_TABS_circuit[i];
       dotQ_TABS_circuit_cooling[i] = 0;
     else
       dotQ_TABS_circuit_heating[i] = 0;
       dotQ_TABS_circuit_cooling[i] = dotQ_TABS_circuit[i];
     end if;
   end for;

  dotQ_TABS_floor_heating = {sum(dotQ_TABS_circuit_heating[1:4]), sum(dotQ_TABS_circuit_heating[5:11]),sum(dotQ_TABS_circuit_heating[12:20]),sum(dotQ_TABS_circuit_heating[21:35])};
  dotQ_TABS_floor_cooling = {sum(dotQ_TABS_circuit_cooling[1:4]), sum(dotQ_TABS_circuit_cooling[5:11]),sum(dotQ_TABS_circuit_cooling[12:20]),sum(dotQ_TABS_circuit_cooling[21:35])};

  dotQ_TABS_heating = sum(dotQ_TABS_circuit_heating);
  dotQ_TABS_cooling = sum(dotQ_TABS_circuit_cooling);



  dotQ_TABS = sum(dotQ_TABS_circuit);

     connect(gain.y, integrator.u)
    annotation (Line(points={{94.4,82},{103.2,82}}, color={0,0,127}));
  connect(integrator.y, energyKPIBus.Q_TABS_circuit_heating) annotation (Line(
        points={{112.4,82},{120,82},{120,40},{122.1,40},{122.1,38.1}}, color={0,
          0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain.y, energyKPIBus.dotQ_TABS_circuit_heating) annotation (Line(
        points={{94.4,82},{98,82},{98,66},{120,66},{120,52},{122.1,52},{122.1,38.1}},
        color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression1.y, gain.u)
    annotation (Line(points={{78.8,82},{85.2,82}}, color={0,0,127}));
  connect(realExpression2.y, gain1.u)
    annotation (Line(points={{78.8,96},{85.2,96}}, color={0,0,127}));
  connect(gain1.y, integrator1.u)
    annotation (Line(points={{94.4,96},{103.2,96}}, color={0,0,127}));
  connect(integrator1.y, energyKPIBus.Q_TABS_circuit_cooling) annotation (Line(
        points={{112.4,96},{122.1,96},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain1.y, energyKPIBus.dotQ_TABS_circuit_cooling) annotation (Line(
        points={{94.4,96},{98,96},{98,66},{122.1,66},{122.1,38.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(pump7.P, gain4.u) annotation (Line(points={{-67.2,-35.3},{-67.2,-32},{
          -14.8,-32}}, color={0,0,127}));
  connect(gain4.y, integrator4.u)
    annotation (Line(points={{-5.6,-32},{11.2,-32}}, color={0,0,127}));
  connect(integrator4.y, energyKPIBus.W_P07) annotation (Line(
      points={{20.4,-32},{38,-32},{38,-24},{122.1,-24},{122.1,38.1}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain4.y, energyKPIBus.dotW_P07) annotation (Line(
      points={{-5.6,-32},{2,-32},{2,-24},{122.1,-24},{122.1,38.1}},
      color={0,0,127},
      visible=false), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression3.y, gain3.u)
    annotation (Line(points={{78.8,124},{85.2,124}}, color={0,0,127}));
  connect(realExpression4.y, gain2.u)
    annotation (Line(points={{78.8,110},{85.2,110}}, color={0,0,127}));
  connect(gain2.y, integrator3.u)
    annotation (Line(points={{94.4,110},{103.2,110}}, color={0,0,127}));
  connect(gain3.y, integrator2.u)
    annotation (Line(points={{94.4,124},{103.2,124}}, color={0,0,127}));
  connect(integrator3.y, energyKPIBus.Q_TABS_floor_heating) annotation (Line(
        points={{112.4,110},{122.1,110},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain2.y, energyKPIBus.dotQ_TABS_floor_heating) annotation (Line(
        points={{94.4,110},{98,110},{98,104},{122.1,104},{122.1,38.1}}, color={0,
          0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator2.y, energyKPIBus.Q_TABS_floor_cooling) annotation (Line(
        points={{112.4,124},{122.1,124},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain3.y, energyKPIBus.dotQ_TABS_floor_cooling) annotation (Line(
        points={{94.4,124},{94.4,116},{122.1,116},{122.1,38.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(realExpression5.y, gain5.u)
    annotation (Line(points={{78.8,138},{85.2,138}}, color={0,0,127}));
  connect(gain5.y, integrator5.u)
    annotation (Line(points={{94.4,138},{103.2,138}}, color={0,0,127}));

  connect(realExpression6.y, gain6.u) annotation (Line(points={{78.8,152},{82,152},
          {82,152},{85.2,152}}, color={0,0,127}));
  connect(gain6.y, integrator6.u)
    annotation (Line(points={{94.4,152},{103.2,152}}, color={0,0,127}));
  connect(gain6.y, energyKPIBus.dotQ_TABScomp_cooling) annotation (Line(points={{94.4,
          152},{96,152},{96,144},{122.1,144},{122.1,38.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain3.y, division4.u1) annotation (Line(points={{94.4,124},{96,124},{96,
          194},{117,194}}, color={0,0,127}));
  connect(replicator.y, division4.u2) annotation (Line(points={{110.3,187},{113.15,
          187},{113.15,188},{117,188}}, color={0,0,127}));
  connect(replicator1.y, division3.u2) annotation (Line(points={{144.3,187},{146.15,
          187},{146.15,188},{149,188}}, color={0,0,127}));
  connect(integrator6.y, replicator1.u) annotation (Line(points={{112.4,152},{116,
          152},{116,160},{137.4,160},{137.4,187}}, color={0,0,127}));
  connect(integrator2.y, division3.u1) annotation (Line(points={{112.4,124},{116,
          124},{116,160},{132,160},{132,194},{149,194}}, color={0,0,127}));
  connect(replicator2.y, division1.u2) annotation (Line(points={{110.3,169},{114.15,
          169},{114.15,170},{117,170}}, color={0,0,127}));
  connect(gain2.y, division1.u1) annotation (Line(points={{94.4,110},{98,110},{98,
          176},{117,176}}, color={0,0,127}));
  connect(division1.y, energyKPIBus.dotrFloor_TABS_heating) annotation (Line(
        points={{128.5,173},{128.5,106.5},{122.1,106.5},{122.1,38.1}}, color={0,
          0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(division4.y, energyKPIBus.dotrFloor_TABS_cooling) annotation (Line(
        points={{128.5,191},{128.5,111.5},{122.1,111.5},{122.1,38.1}}, color={0,
          0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(division3.y, energyKPIBus.rFloor_TABS_cooling) annotation (Line(
        points={{160.5,191},{160.5,38.1},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(division2.y, energyKPIBus.rFloor_TABS_heating) annotation (Line(
        points={{160.5,173},{160.5,38.1},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-3,-6},{-3,-6}},
      horizontalAlignment=TextAlignment.Right));
  connect(replicator3.y, division2.u2) annotation (Line(points={{146.3,169},{148.15,
          169},{148.15,170},{149,170}}, color={0,0,127}));
  connect(integrator5.y, replicator3.u) annotation (Line(points={{112.4,138},{126,
          138},{126,136},{139.4,136},{139.4,169}}, color={0,0,127}));
  connect(integrator3.y, division2.u1) annotation (Line(points={{112.4,110},{140,
          110},{140,176},{149,176}}, color={0,0,127}));
  connect(realExpression.y, replicator.u)
    annotation (Line(points={{92.5,187},{103.4,187}}, color={0,0,127}));
  connect(realExpression7.y, replicator2.u) annotation (Line(points={{92.5,169},
          {98.25,169},{98.25,169},{103.4,169}}, color={0,0,127}));


  connect(integrator6.y, energyKPIBus.Q_TABScomp_cooling) annotation (Line(points={{112.4,
          152},{122.1,152},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(integrator5.y, energyKPIBus.Q_TABScomp_heating) annotation (Line(
        points={{112.4,138},{122.1,138},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain5.y, energyKPIBus.dotQ_TABScomp_heating) annotation (Line(points={
          {94.4,138},{98,138},{98,130},{122.1,130},{122.1,38.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(realExpression8.y, gain7.u)
    annotation (Line(points={{100.8,2},{107.2,2}}, color={0,0,127}));
  connect(gain7.y, integrator7.u)
    annotation (Line(points={{116.4,2},{125.2,2}}, color={0,0,127}));
  connect(integrator7.y, energyKPIBus.Q_TABS) annotation (Line(points={{134.4,2},
          {142,2},{142,20},{122.1,20},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(gain7.y, energyKPIBus.dotQ_TABS) annotation (Line(points={{116.4,2},{
          122.1,2},{122.1,38.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
end TABSKPI;
