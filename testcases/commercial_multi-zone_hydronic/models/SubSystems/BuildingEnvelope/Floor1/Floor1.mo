within INFRAX.SubSystems.BuildingEnvelope.Floor1;
model Floor1
  extends INFRAX.SubSystems.BuildingEnvelope.Floor1.Floor1_noVent(
    meetingRoom2(redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    meetingRoom1(redeclare replaceable
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    northZone(redeclare replaceable
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    southZone2(redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    hall(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    bathroomZone(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    southZone1(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr));

  parameter Boolean allowFlowReversal = true
    "= false to simplify equations, assuming, but not enforcing, no flow reversal"
    annotation(Dialog(tab="Assumptions"), Evaluate=true);

  Modelica.Fluid.Interfaces.FluidPort_b[4] airOutlet(
    each m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
    "Air outlet port of the zones"
    annotation (Placement(transformation(extent={{-46,88},{-26,108}})));
  Modelica.Fluid.Interfaces.FluidPort_a[5] airInlet(
    each m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
    "Air inlet port of the zones"
    annotation (Placement(transformation(extent={{34,88},{54,108}})));
  Modelica.Fluid.Interfaces.FluidPort_b bathExtract(redeclare package Medium =
        Medium)
    "Extraction port of the toilets"
    annotation (Placement(transformation(extent={{-150,58},{-130,78}})));
  replaceable IDEAS.Fluid.Interfaces.PartialTwoPortInterface bath_duct
    "Duct of the bathroom extraction (it does not have VAV)"
    annotation (Placement(transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={-95,81})));
equation
  //Air inlets
  connect(airInlet[1], northZone.port_a)
    annotation (Line(points={{44,90},{52.8,90},{52.8,82}}, color={0,127,255}));
  connect(southZone2.port_a, airInlet[3]) annotation (Line(points={{54.8,-20},{56,
          -20},{56,52},{56,54},{20,54},{20,98},{44,98}}, color={0,127,255}));
  connect(southZone1.port_a, airInlet[2]) annotation (Line(points={{-35.2,-44},{
          32,-44},{32,-84},{70,-84},{70,94},{44,94}}, color={0,127,255}));
  connect(airInlet[4], meetingRoom1.port_a) annotation (Line(points={{44,102},{30,
          102},{12,102},{12,20}}, color={0,127,255}));
  connect(meetingRoom2.port_a, airInlet[5]) annotation (Line(points={{92,20},{92,
          20},{92,106},{44,106}}, color={0,127,255}));
  //Air outlets
  connect(northZone.port_b, airOutlet[1]) annotation (Line(points={{47.2,82},{
          16,82},{-20,82},{-20,90.5},{-36,90.5}},
                                               color={0,127,255}));
  connect(southZone2.port_b, airOutlet[2]) annotation (Line(points={{47.2,-20},
          {48,-20},{48,44},{48,50},{-32,50},{-32,95.5},{-36,95.5}},  color={0,127,
          255}));
  connect(meetingRoom1.port_b, airOutlet[3]) annotation (Line(points={{8,20},{8,
          20},{8,70},{-22,70},{-22,100.5},{-36,100.5}}, color={0,127,255}));
  connect(meetingRoom2.port_b, airOutlet[4]) annotation (Line(points={{88,20},{88,
          20},{88,122},{-32,122},{-32,105.5},{-36,105.5}}, color={0,127,255}));
  //Air inter-connections between zones
  connect(southZone1.port_b, southZone2.port_a) annotation (Line(points={{-42.8,
          -44},{-42,-44},{-42,-28},{54.8,-28},{54.8,-20}}, color={0,127,255}));
  connect(southZone2.port_b, hall.port_a) annotation (Line(points={{47.2,-20},{
          22,-20},{-8,-20},{-8,44},{-32.4,44}}, color={0,127,255}));
  connect(hall.port_b, bathroomZone.port_a) annotation (Line(points={{-39.6,44},
          {-39.6,68},{-42,68},{-42,92}}, color={0,127,255}));
  connect(bathroomZone.port_b, bath_duct.port_a) annotation (Line(points={{-46,
          92},{-60,92},{-86,92},{-86,81},{-88,81}}, color={0,127,255}));
  connect(bath_duct.port_b, bathExtract) annotation (Line(points={{-102,81},{
          -120,81},{-120,68},{-140,68}}, color={0,127,255}));
  connect(northZone.ppm, dataBus.CO2_1stFlr_NZ) annotation (Line(points={{65.4,
          68},{68,68},{68,52},{-139.9,52},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(southZone1.ppm, dataBus.CO2_1stFlr_SZ1) annotation (Line(points={{
          -18.1,-64},{-10,-64},{-10,40.1},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(southZone2.ppm, dataBus.CO2_1stFlr_SZ2) annotation (Line(points={{
          71.9,-40},{84,-40},{84,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(meetingRoom1.ppm, dataBus.CO2_1stFlr_MT1) annotation (Line(points={{
          21,10},{28,10},{28,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(meetingRoom2.ppm, dataBus.CO2_1stFlr_MT2) annotation (Line(points={{
          101,10},{108,10},{108,40},{-139.9,40},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
end Floor1;
