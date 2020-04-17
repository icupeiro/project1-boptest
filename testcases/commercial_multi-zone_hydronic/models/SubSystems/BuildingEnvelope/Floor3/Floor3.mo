within INFRAX.SubSystems.BuildingEnvelope.Floor3;
model Floor3
  extends INFRAX.SubSystems.BuildingEnvelope.Floor3.Floor3_noVent(
                            southZone(redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    bathroomZone(hasCavityC=true,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    copyRoom(hasCavityC=true,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    meetingRoom(redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    smallRoom(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.LED ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr));

  //Meeting Room does not exchange mass with any other zones
  //Bathroom and copy room usually have door open
  parameter Boolean allowFlowReversal = true
    "= false to simplify equations, assuming, but not enforcing, no flow reversal"
    annotation(Dialog(tab="Assumptions"), Evaluate=true);

  Modelica.Fluid.Interfaces.FluidPort_b[4] airOutlet(
    each m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
    "Air outlet port of the zones"
    annotation (Placement(transformation(extent={{-54,90},{-34,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a[4] airInlet(
    each m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
    "Air inlet port of the zones"
    annotation (Placement(transformation(extent={{26,90},{46,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b bathExtract(redeclare package Medium =
        Medium)
    "Extraction port of the toilets"
    annotation (Placement(transformation(extent={{-150,56},{-130,76}})));

  replaceable IDEAS.Fluid.Interfaces.PartialTwoPortInterface bath_duct
    "Duct of the bathroom extraction (it does not have VAV)"
     annotation (Placement(
        transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={-97,79})));
  IDEAS.Fluid.FixedResistances.PressureDrop res(
    redeclare package Medium = Medium,
    allowFlowReversal=allowFlowReversal,
    m_flow_nominal=0.1,
    dp_nominal=0)
   "For breaking algebraic loop using allowFlowReversal=false"
    annotation (Placement(transformation(extent={{76,2},{96,22}})));
  IDEAS.Fluid.FixedResistances.PressureDrop res1(
    redeclare package Medium = Medium,
    allowFlowReversal=allowFlowReversal,
    m_flow_nominal=0.1,
    dp_nominal=0)
   "For breaking algebraic loop using allowFlowReversal=false"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={10,26})));

equation
  //Inlet air connections
  connect(airInlet[1], southZone.port_a) annotation (Line(points={{36,92.5},{32,
          92.5},{32,66},{18,66},{18,-20},{4,-20}}, color={0,127,255}));
  connect(airInlet[2], copyRoom.port_a) annotation (Line(points={{36,97.5},{32,
          97.5},{32,66},{-8,66},{-8,60}},         color={0,127,255}));
  connect(airInlet[4], meetingRoom.port_a) annotation (Line(points={{36,107.5},{36,60},{32,60}}, color={0,127,255}));
  connect(airInlet[3], smallRoom.port_a) annotation (Line(points={{36,102.5},{
          54,102.5},{72,102.5},{72,60}}, color={0,127,255}));
  //Outlet air connections
  connect(southZone.port_b, airOutlet[1]) annotation (Line(points={{-4,-20},{-4,
          36},{-24,36},{-24,88},{-44,88},{-44,92.5}}, color={0,127,255}));
  connect(copyRoom.port_b, airOutlet[2]) annotation (Line(points={{-12,60},{-12,
          88},{-44,88},{-44,97.5}}, color={0,127,255}));
  connect(meetingRoom.port_b, airOutlet[4]) annotation (Line(points={{28,60},{
          28,60},{28,88},{-44,88},{-44,107.5}},             color={0,127,255}));
  connect(smallRoom.port_b, airOutlet[3]) annotation (Line(points={{68,60},{68,
          60},{68,88},{68,88},{-44,88},{-44,102.5}}, color={0,127,255}));
  //Air exchange between zones
  connect(southZone.port_b, bathroomZone.port_a) annotation (Line(points={{-4,
          -20},{-4,-4},{-32,-4},{-32,60},{-48,60}}, color={0,127,255}));
  connect(bathroomZone.port_b, bath_duct.port_a) annotation (Line(points={{-52,60},
          {-70,60},{-70,79},{-90,79}},     color={0,127,255}));
  connect(bath_duct.port_b, bathExtract) annotation (Line(points={{-104,79},{
          -120,79},{-120,66},{-140,66}}, color={0,127,255}));
  connect(southZone.port_b, res.port_a) annotation (Line(points={{-4,-20},{-4,12},{76,12}}, color={0,127,255}));
  connect(res.port_b, smallRoom.port_a) annotation (Line(points={{96,12},{108,
          12},{108,60},{72,60}}, color={0,127,255}));
  connect(res1.port_a, southZone.port_b) annotation (Line(points={{10,16},{10,
          10},{-4,10},{-4,-20}}, color={0,127,255}));
  connect(res1.port_b, copyRoom.port_a) annotation (Line(points={{10,36},{10,60},{-8,60}}, color={0,127,255}));

  connect(southZone.ppm, dataBus.CO2_3rdFlr_SZ) annotation (Line(points={{22,
          -40},{38,-40},{38,20},{-82,20},{-82,40},{-139.9,40},{-139.9,40.1}},
        color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(copyRoom.ppm, dataBus.CO2_3rdFlr_CPR) annotation (Line(points={{1,50},
          {6,50},{6,70},{-92,70},{-92,40.1},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(meetingRoom.ppm, dataBus.CO2_3rdFlr_MTR) annotation (Line(points={{41,
          50},{48,50},{48,70},{-92,70},{-92,40.1},{-139.9,40.1}}, color={0,0,
          127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(smallRoom.ppm, dataBus.CO2_3rdFlr_SmaR) annotation (Line(points={{81,
          50},{88,50},{88,70},{-92,70},{-92,40.1},{-139.9,40.1}}, color={0,0,
          127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
end Floor3;
