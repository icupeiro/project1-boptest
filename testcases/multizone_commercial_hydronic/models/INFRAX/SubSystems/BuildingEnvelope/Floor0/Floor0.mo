within INFRAX.SubSystems.BuildingEnvelope.Floor0;
model Floor0
  extends Floor0_noVent(
    MT2(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
redeclare IDEAS.Buildings.Components.Occupants.Input
        occNum,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    MT1(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
redeclare IDEAS.Buildings.Components.Occupants.Input
        occNum,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    FirstAid(
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.Fixed ligCtr),
    servers(
      nPorts=2,
      redeclare IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.Fixed ligCtr),
    hall(
      nPorts=3,
         redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.Fixed ligCtr),
    kitchen(
      nPorts=3,
            redeclare
        IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure
        interzonalAirFlow, redeclare IDEAS.Buildings.Components.Occupants.Input
        occNum,
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    storage(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr),
    bathroomZone(
      redeclare IDEAS.Buildings.Components.RoomType.Office rooTyp,
      redeclare IDEAS.Buildings.Components.LightingType.Fluorescent ligTyp,
      redeclare IDEAS.Buildings.Components.LightingControl.OccupancyBased
        ligCtr));
  parameter Boolean allowFlowReversal = true
    "= false to simplify equations, assuming, but not enforcing, no flow reversal"
    annotation(Dialog(tab="Assumptions"), Evaluate=true);

  Modelica.Fluid.Interfaces.FluidPort_b[7] airOutlet(
    each m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
   "Air outlet port of the zones"
    annotation (Placement(transformation(extent={{22,90},{42,110}})));
  Modelica.Fluid.Interfaces.FluidPort_a[6] airInlet(
    each m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0),
    redeclare each package Medium = Medium)
   "Air outlet port of the zones"
    annotation (Placement(transformation(extent={{102,90},{122,110}})));
  Modelica.Fluid.Interfaces.FluidPort_b bathExtract(redeclare package Medium =
        Medium)
   "Extraction port of the toilets"
    annotation (Placement(transformation(extent={{-150,58},{-130,78}})));
  replaceable IDEAS.Fluid.Interfaces.PartialTwoPortInterface bath_duct
    "Duct of the bathroom extraction (it does not have VAV)"
 annotation (Placement(transformation(
        extent={{-7,-7},{7,7}},
        rotation=180,
        origin={-111,75})));
equation

  //Air inlet connections
  connect(airInlet[1], servers.ports[1]) annotation (Line(points={{112,91.6667},
          {59,91.6667},{59,68}},
                      color={0,127,255}));
  connect(airInlet[2], FirstAid.ports[1]) annotation (Line(points={{112,95},{114,
          95},{114,92},{114,76},{16,76},{16,60},{10,60}},
                                                      color={0,127,255}));
  connect(airInlet[3], kitchen.ports[1]) annotation (Line(points={{112,98.3333},
          {112,98.3333},{112,20},{100,20}},
                              color={0,127,255}));
  connect(airInlet[4],MT2.ports[1])  annotation (Line(points={{112,101.667},{
          140,101.667},{140,-100},{-72,-100},{-72,-58},{-90,-58}},
                                                                 color={0,127,255}));
  connect(airInlet[5],MT1.ports[1])  annotation (Line(points={{112,105},{140,105},
          {140,-100},{28,-100},{28,-18},{10,-18}},                 color={0,127,
          255}));
  connect(airInlet[6], hall.ports[1]) annotation (Line(points={{112,108.333},{
          130,108.333},{150,108.333},{150,-100},{-28,-100},{-28,0},{-55,0}},
        color={0,127,255}));
  //Air outlet connections
  connect(airOutlet[1], servers.ports[2]) annotation (Line(points={{32,91.4286},
          {59,91.4286},{59,68}},
                            color={0,127,255}));
  connect(airOutlet[2], FirstAid.ports[2]) annotation (Line(points={{32,94.2857},
          {20,94.2857},{8,94.2857},{8,60},{10,60}},
                                                color={0,127,255}));
  connect(airOutlet[3], kitchen.ports[2]) annotation (Line(points={{32,97.1429},
          {32,97.1429},{32,20},{100,20}},
                                   color={0,127,255}));
  connect(airOutlet[4],MT2.ports[2])  annotation (Line(points={{32,100},{84,100},
          {140,100},{140,-100},{-68,-100},{-68,-58},{-90,-58}},
        color={0,127,255}));
  connect(airOutlet[5],MT1.ports[2])  annotation (Line(points={{32,102.857},{88,
          102.857},{142,102.857},{142,-100},{32,-100},{32,-12},{10,-12},{10,-18}},
                 color={0,127,255}));
  connect(airOutlet[6], hall.ports[2]) annotation (Line(points={{32,105.714},{
          94,105.714},{94,102},{158,102},{158,-100},{-18,-100},{-18,10},{-55,10},
          {-55,0}},   color={0,127,255}));
 //Air exchange between zones
  connect(storage.ports[2], airOutlet[7]) annotation (Line(points={{118,68},{
          118,78},{32,78},{32,108.571}},               color={0,127,255}));
  connect(bathroomZone.ports[2], bath_duct.port_a) annotation (Line(points={{-90,80},
          {-100,80},{-100,75},{-104,75}},     color={0,127,255}));
  connect(bath_duct.port_b, bathExtract) annotation (Line(points={{-118,75},{
          -130,75},{-130,68},{-140,68}}, color={0,127,255}));
  connect(bathroomZone.ports[1], hall.ports[3])
    annotation (Line(points={{-90,80},{-55,80},{-55,0}}, color={0,127,255}));
  connect(storage.ports[1], kitchen.ports[3]) annotation (Line(points={{118,68},
          {134,68},{134,26},{100,26},{100,20}},color={0,127,255}));

 //PPM connections
  connect(MT1.ppm, dataBus.CO2_GndFlr_MT1) annotation (Line(points={{23.2,-30},
          {30,-30},{30,-26},{36,-26},{36,40.1},{-139.9,40.1}}, color={0,0,127}),
      Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(MT2.ppm, dataBus.CO2_GndFlr_MT2) annotation (Line(points={{-76.8,-70},
          {-54,-70},{-54,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(kitchen.ppm, dataBus.CO2_GndFlr_KTR) annotation (Line(points={{122,0},
          {-78,0},{-78,40.1},{-139.9,40.1}}, color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{-6,3},{-6,3}},
      horizontalAlignment=TextAlignment.Right));
end Floor0;
