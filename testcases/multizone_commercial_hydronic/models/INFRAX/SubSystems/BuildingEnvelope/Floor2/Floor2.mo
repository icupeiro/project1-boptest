within INFRAX.SubSystems.BuildingEnvelope.Floor2;
model Floor2
  extends INFRAX.SubSystems.BuildingEnvelope.Floor2.Floor2_noVent(
    meetingRoom1(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    meetingRoom2(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    northZone(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    southZone(
      nPorts=3,
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    bathroomZone(hasCavityD=true,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr));
    //Zones with fixed n50 are independant from each other
  parameter Boolean allowFlowReversal = true
    "= false to simplify equations, assuming, but not enforcing, no flow reversal"
    annotation(Dialog(tab="Assumptions"), Evaluate=true);

  Modelica.Fluid.Interfaces.FluidPort_b[4] airOutlet(
    each m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
  "Air outlet port of the zones"
    annotation (Placement(transformation(extent={{-48,90},{-28,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a[4] airInlet(
    each m_flow(min=if allowFlowReversal then
                                             -Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
  "Air inlet port of the zones"
    annotation (Placement(transformation(extent={{32,90},{52,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b bathExtract(redeclare package Medium =
        Medium)
  "Extraction port of the toilets"
    annotation (Placement(transformation(extent={{-150,58},{-130,78}})));
  replaceable IDEAS.Fluid.Interfaces.PartialTwoPortInterface bath_duct
    "Duct of the bathroom extraction (it does not have VAV)"
     annotation (Placement(
        transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={-103,81})));
equation
  //Air exchange between zones
  connect(bathroomZone.ports[2], bath_duct.port_a) annotation (Line(points={{-90,60},
          {-90,81},{-96,81}},                                                                          color={0,127,255}));
  connect(bath_duct.port_b, bathExtract) annotation (Line(points={{-110,81},{
          -126,81},{-126,68},{-140,68}}, color={0,127,255}));
    connect(southZone.ports[3], bathroomZone.ports[1]) annotation (Line(points={{-4,-32},
          {-4,-4},{-70,-4},{-70,60},{-90,60}},      color={0,127,255}));
  //Air inlet connections
  connect(southZone.ports[1], airInlet[2]) annotation (Line(points={{-4,-32},{0,
          -32},{0,82},{0,86},{42,86},{42,97.5}}, color={0,127,255}));
  connect(airInlet[1], northZone.ports[1]) annotation (Line(points={{42,92.5},{42,
          86},{40,86},{40,80}}, color={0,127,255}));
  connect(meetingRoom1.ports[1], airInlet[3]) annotation (Line(points={{-50,10},
          {-48,10},{-48,42},{-34,42},{-34,92},{42,92},{42,102.5}},color={0,127,
          255}));
  connect(meetingRoom2.ports[1], airInlet[4]) annotation (Line(points={{50,10},{
          50,36},{68,36},{68,107.5},{42,107.5}}, color={0,127,255}));
  //Air outlet connections
  connect(northZone.ports[2], airOutlet[1]) annotation (Line(points={{40,80},{40,
          80},{-38,80},{-38,92.5}}, color={0,127,255}));
  connect(southZone.ports[2], airOutlet[2]) annotation (Line(points={{-4,-32},{-8,
          -32},{-8,56},{-38,56},{-38,97.5}}, color={0,127,255}));
  connect(airOutlet[3], meetingRoom1.ports[2]) annotation (Line(points={{-38,102.5},
          {-38,102.5},{-38,54},{-38,46},{-50,46},{-50,10}},        color={0,127,
          255}));
  connect(meetingRoom2.ports[2], airOutlet[4]) annotation (Line(points={{50,10},
          {50,36},{-38,36},{-38,107.5}},color={0,127,255}));


          //PPM sensors
  connect(northZone.ppm, dataBus.CO2_2ndFlr_NZ) annotation (Line(points={{62,60},
          {-38,60},{-38,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
  connect(southZone.ppm, dataBus.CO2_2ndFlr_SZ) annotation (Line(points={{18,
          -52},{28,-52},{28,24},{-139.9,24},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(meetingRoom1.ppm, dataBus.CO2_2ndFlr_MT1) annotation (Line(points={{
          -39,0},{-36,0},{-36,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(meetingRoom2.ppm, dataBus.CO2_2ndFlr_MT2) annotation (Line(points={{
          61,0},{68,0},{68,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));

end Floor2;
