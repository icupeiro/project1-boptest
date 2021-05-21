within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_noStairs
  import INFRAX;
  import INFRAX;

  inner IDEAS.BoundaryConditions.SimInfoManager sim(
    incAndAziInBus={{IDEAS.Types.Tilt.Floor,0},{IDEAS.Types.Tilt.Ceiling,0},{
        IDEAS.Types.Tilt.Wall,0},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.E},
        {IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.W},{IDEAS.Types.Tilt.Wall,
        INFRAX.Data.Orientations.N}},
    nWindow=5,
    nLayWin=3) "Data reader"
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));

  INFRAX.Data.Parameters.Str3rdFlr str3rdFlr
    annotation (Placement(transformation(extent={{80,-100},{100,-80}})));

  Deprecated.Subsystems.Floors.Floor3 floor3_1
    annotation (Placement(transformation(extent={{-14,10},{14,30}})));
  INFRAX.Data.Parameters.Structure structure
    annotation (Placement(transformation(extent={{80,-60},{100,-40}})));
  IDEAS.Buildings.Components.OuterWall[7] outerWall(
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      constructionType,
    each inc=IDEAS.Types.Tilt.Floor,
    each azi=0,
    A=structure.A_2Flr_3Flr)                        annotation (Placement(
        transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={2,-28})));
equation



  connect(floor3_1.flo, outerWall.propsBus_a) annotation (Line(
      points={{0,10},{0,-23}},
      color={255,204,51},
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Ellipse(lineColor = {75,138,73},
                fillColor={255,255,255},
                fillPattern = FillPattern.Solid,
                extent = {{-100,-100},{100,100}}),
        Polygon(lineColor = {0,0,255},
                fillColor = {75,138,73},
                pattern = LinePattern.None,
                fillPattern = FillPattern.Solid,
                points = {{-36,60},{64,0},{-36,-60},{-36,60}})}),Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Floor3_noStairs;
