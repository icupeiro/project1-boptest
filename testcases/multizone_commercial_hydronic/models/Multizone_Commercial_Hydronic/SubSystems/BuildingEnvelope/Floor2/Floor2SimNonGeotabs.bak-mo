within INFRAX.SubSystems.BuildingEnvelope.Floor2;
model Floor2SimNonGeotabs
  extends Floor2Sim(redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.ZoneFCU southZone,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneTemplateFCU meetingRoom1,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneTemplateFCU meetingRoom2,
                    redeclare INFRAX.SubSystems.BuildingEnvelope.Interfaces.ZoneFCU northZone);
  Modelica.Fluid.Interfaces.FluidPort_a fcu_return[4](redeclare package Medium =
        Medium) "air return"
    annotation (Placement(transformation(extent={{38,-110},{58,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_b fcu_supply[4](redeclare package Medium =
        Medium) "air supply"
    annotation (Placement(transformation(extent={{78,-110},{98,-90}})));

equation

  //Air inlet connections
  connect(southZone.fcu_a, fcu_supply[2]) annotation (Line(points={{12,-72},{12,
          -72},{12,82},{0,82},{88,82},{88,-102.5}},
                                                 color={0,127,255}));
  connect(fcu_supply[1], northZone.fcu_a) annotation (Line(points={{88,-107.5},{
          88,86},{56,86},{56,40}},
                                color={0,127,255}));
  connect(meetingRoom1.fcu_a, fcu_supply[3]) annotation (Line(points={{-42,-10},
          {-42,-10},{-42,42},{-34,42},{-34,92},{88,92},{88,-97.5}},
                                                                  color={0,127,
          255}));
  connect(meetingRoom2.fcu_a, fcu_supply[4]) annotation (Line(points={{58,-10},{
          58,36},{68,36},{68,-92.5},{88,-92.5}}, color={0,127,255}));

  connect(southZone.fcu_b, fcu_return[2]) annotation (Line(points={{4,-72},{4,-72},
          {4,82},{0,82},{48,82},{48,-102.5}},    color={0,127,255}));
  connect(fcu_return[1], northZone.fcu_b) annotation (Line(points={{48,-107.5},{
          48,86},{48,86},{48,40}},
                                color={0,127,255}));
  connect(meetingRoom1.fcu_b, fcu_return[3]) annotation (Line(points={{-46,-10},
          {-46,-10},{-46,42},{-34,42},{-34,92},{48,92},{48,-97.5}},
                                                                  color={0,127,
          255}));
  connect(meetingRoom2.fcu_b, fcu_return[4]) annotation (Line(points={{54,-10},{
          54,36},{68,36},{68,-92.5},{48,-92.5}}, color={0,127,255}));

end Floor2SimNonGeotabs;
