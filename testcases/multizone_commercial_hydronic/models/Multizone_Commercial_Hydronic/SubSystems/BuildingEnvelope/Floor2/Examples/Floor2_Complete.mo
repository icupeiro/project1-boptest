within INFRAX.SubSystems.BuildingEnvelope.Floor2.Examples;
model Floor2_Complete
  import INFRAX;

  IDEAS.Buildings.Components.OuterWall[7] flo(
    inc=IDEAS.Types.Tilt.Floor,
    azi=0,
    redeclare each IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      constructionType,
    A={1,1,1,1,1,1,1})        annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={2,-50})));

  INFRAX.Data.Parameters.Str2ndFlr str2ndFlr
    annotation (Placement(transformation(extent={{80,-100},{100,-80}})));
  inner IDEAS.BoundaryConditions.SimInfoManager sim(
    incAndAziInBus={{IDEAS.Types.Tilt.Floor,0},{IDEAS.Types.Tilt.Ceiling,0},{
        IDEAS.Types.Tilt.Wall,0},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.E},
        {IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.W},{IDEAS.Types.Tilt.Wall,
        INFRAX.Data.Orientations.N}},
    nWindow=5,
    nLayWin=3) "Data reader"
    annotation (Placement(transformation(extent={{-100,80},{-80,100}})));

  IDEAS.Buildings.Components.OuterWall[8] cei(
    azi=0,
    inc=IDEAS.Types.Tilt.Ceiling,
    redeclare each IDEAS.Examples.PPD12.Data.FloorAttic constructionType,
    A={1,1,1,1,1,1,1,1})       annotation (Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=90,
        origin={2,62})));
  IDEAS.Buildings.Components.RectangularZoneTemplate stairsWest(
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightRoof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    l=4.85,
    w=4.5,
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    h=4*str2ndFlr.Height2ndFlr,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External)
    annotation (Placement(transformation(extent={{-66,-2},{-46,18}})));

  IDEAS.Buildings.Components.RectangularZoneTemplate stairsEast(
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightRoof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    l=4.85,
    w=4.5,
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    h=4*str2ndFlr.Height2ndFlr,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External)
    annotation (Placement(transformation(extent={{58,-2},{78,18}})));

  Deprecated.Subsystems.Floors.Floor2 floor2_1
    annotation (Placement(transformation(extent={{-14,0},{14,20}})));
equation
  connect(floor2_1.cei, cei.propsBus_a) annotation (Line(
      points={{0,20},{-4.44089e-016,20},{-4.44089e-016,57}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.flo, flo.propsBus_a) annotation (Line(
      points={{0,0},{0,-45}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.staW[1], stairsWest.proBusB) annotation (Line(
      points={{-14,11.7333},{-30,11.7333},{-30,14},{-47,14}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.staW[2], stairsWest.proBusC) annotation (Line(
      points={{-14,10.4},{-34,10.4},{-34,-10},{-56,-10},{-56,-1}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.staW[3], stairsWest.proBusD) annotation (Line(
      points={{-14,9.06667},{-65,9.06667},{-65,8}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.staE[2], stairsEast.proBusD) annotation (Line(
      points={{13,10},{38,10},{38,8},{59,8}},
      color={255,204,51},
      thickness=0.5));
  connect(floor2_1.staE[1], stairsEast.proBusC) annotation (Line(
      points={{15,10},{42,10},{42,-1},{68,-1}},
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
end Floor2_Complete;
