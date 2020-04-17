within INFRAX.Data.Shading;
model Shading_Test
  extends LIDEAS.Components.LinearisationInterface(sim(
          incAndAziInBus={{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S}}, nWindow=1));

  LIDEAS.Components.LinZone zone(
    redeclare package Medium = IDEAS.Media.Air,
    nSurf=2,
    V=75) annotation (Placement(transformation(extent={{-20,20},{0,40}})));
  IDEAS.Buildings.Components.OuterWall outerWall(
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi=IDEAS.Types.Azimuth.S,
    A=60) annotation (Placement(transformation(extent={{-52,40},{-40,60}})));
  LIDEAS.Components.LinWindow linWindow(
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    inc=IDEAS.Types.Tilt.Wall,
    azi=IDEAS.Types.Azimuth.S,
    A=6,
    redeclare IDEAS.Buildings.Data.Frames.Wood fraType,
    indexWindow=1,
    redeclare HorizontalFins shaType)
    annotation (Placement(transformation(extent={{-52,0},{-40,20}})));
  Modelica.Blocks.Interfaces.RealInput sha
    annotation (Placement(transformation(extent={{-120,-50},{-80,-10}})));
equation
  connect(zone.propsBus[1], outerWall.propsBus_a) annotation (Line(
      points={{-20,35},{-30,35},{-30,52},{-41,52}},
      color={255,204,51},
      thickness=0.5));
  connect(zone.propsBus[2], linWindow.propsBus_a) annotation (Line(
      points={{-20,33},{-30,33},{-30,12},{-41,12}},
      color={255,204,51},
      thickness=0.5));
      connect(linWindow.Ctrl, sha);
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=86400,
      Tolerance=1e+006,
      __Dymola_fixedstepsize=30,
      __Dymola_Algorithm="Euler"));
end Shading_Test;
