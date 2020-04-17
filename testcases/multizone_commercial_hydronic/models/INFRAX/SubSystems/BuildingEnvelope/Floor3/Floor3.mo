within INFRAX.SubSystems.BuildingEnvelope.Floor3;
model Floor3
  extends INFRAX.SubSystems.BuildingEnvelope.Floor3.Floor3_noVent(
                            southZone(
      nPorts=5,                       redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
              redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    bathroomZone(nPorts=3,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr,  hasCavityC=true),
    copyRoom(nPorts=3,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr,
             hasCavityC=true),
    smallRoom(nPorts=3,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    meetingRoom(
      nPorts=2,
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
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
        origin={-95,79})));

equation
  //Inlet air connections
  //Outlet air connections
  connect(southZone.ports[4], airOutlet[1]) annotation (Line(points={{0,-20},{0,
          34},{-24,34},{-24,86},{-44,86},{-44,92.5}}, color={0,127,255}));
  //Air exchange between zones

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

  connect(bath_duct.port_b, bathExtract) annotation (Line(points={{-102,79},{
          -120,79},{-120,66},{-140,66}}, color={0,127,255}));
  connect(bath_duct.port_a, bathroomZone.ports[1]) annotation (Line(points={{-88,
          79},{-72,79},{-72,78},{-50,78},{-50,60}}, color={0,127,255}));
  connect(southZone.ports[1], bathroomZone.ports[2]) annotation (Line(points={{0,
          -20},{0,30},{-34,30},{-34,72},{-50,72},{-50,60}}, color={0,127,255}));
  connect(copyRoom.ports[1], airOutlet[2]) annotation (Line(points={{-10,60},{-10,
          80},{-44,80},{-44,97.5}}, color={0,127,255}));
  connect(copyRoom.ports[2], airInlet[2]) annotation (Line(points={{-10,60},{-10,
          80},{36,80},{36,97.5}}, color={0,127,255}));
  connect(copyRoom.ports[3], southZone.ports[2]) annotation (Line(points={{-10,60},
          {-10,70},{6,70},{6,-4},{0,-4},{0,-20}}, color={0,127,255}));
  connect(meetingRoom.ports[1], airOutlet[4]) annotation (Line(points={{30,60},{
          30,74},{-44,74},{-44,107.5}}, color={0,127,255}));
  connect(meetingRoom.ports[2], airInlet[4]) annotation (Line(points={{30,60},{30,
          74},{36,74},{36,107.5}}, color={0,127,255}));
  connect(airInlet[1], southZone.ports[3]) annotation (Line(points={{36,92.5},{
          36,74},{16,74},{16,-20},{0,-20}},
                                         color={0,127,255}));
  connect(smallRoom.ports[1], airOutlet[3]) annotation (Line(points={{70,60},{72,
          60},{72,84},{-44,84},{-44,102.5}}, color={0,127,255}));
  connect(smallRoom.ports[2], airInlet[3]) annotation (Line(points={{70,60},{72,
          60},{72,102.5},{36,102.5}}, color={0,127,255}));
  connect(smallRoom.ports[3], southZone.ports[5]) annotation (Line(points={{70,60},
          {46,60},{46,6},{0,6},{0,-20}}, color={0,127,255}));
end Floor3;
