within INFRAX.SubSystems.BuildingEnvelope.Floor3;
model Floor3SimNonGeotabs
  extends Floor3Sim(redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.ZoneFCU southZone,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneFCUTABS copyRoom,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneFCUTABS meetingRoom,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneFCUTABS smallRoom);
  Modelica.Fluid.Interfaces.FluidPort_a fcu_return[4](redeclare package Medium =
        Medium) "air return"
    annotation (Placement(transformation(extent={{52,-110},{72,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_b fcu_supply[4](redeclare package Medium =
        Medium) "air supply"
    annotation (Placement(transformation(extent={{92,-110},{112,-90}})));

equation

  connect(fcu_supply[1], southZone.fcu_a) annotation (Line(points={{102,-107.5},
          {32,-107.5},{32,66},{18,66},{18,-60},{16,-60}},
                                                   color={0,127,255}));
  connect(fcu_supply[2], copyRoom.fcu_a) annotation (Line(points={{102,-102.5},{
          32,-102.5},{32,66},{-2,66},{-2,40}},    color={0,127,255}));
  connect(fcu_supply[4], meetingRoom.fcu_a) annotation (Line(points={{102,-92.5},
          {102,40},{38,40}},                                                                      color={0,127,255}));
  connect(fcu_supply[3], smallRoom.fcu_a);
  connect(fcu_return[1], southZone.fcu_b) annotation (Line(points={{62,-107.5},{
          32,-107.5},{32,66},{18,66},{18,-60},{8,-60}},
                                                   color={0,127,255}));
  connect(fcu_return[2], copyRoom.fcu_b) annotation (Line(points={{62,-102.5},{32,
          -102.5},{32,66},{-6,66},{-6,40}},       color={0,127,255}));
  connect(fcu_return[4], meetingRoom.fcu_b) annotation (Line(points={{62,-92.5},
          {62,40},{34,40}},                                                                       color={0,127,255}));
  connect(fcu_return[3], smallRoom.fcu_b);
end Floor3SimNonGeotabs;
