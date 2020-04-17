within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_Complete
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

  IDEAS.Buildings.Components.RectangularZoneTemplate staE(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    hasWinA=true,
    aziA=INFRAX.Data.Orientations.N,
    l=2.55,
    w=4.1,
    h=4*str3rdFlr.Height3rdFlr,
    A_winA=str3rdFlr.WindowA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyWall conTypFlo,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    fracA=1 - str3rdFlr.GlazingA/str3rdFlr.WindowA,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External)
    annotation (Placement(transformation(extent={{64,4},{84,24}})));

  IDEAS.Buildings.Components.RectangularZoneTemplate staW(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    hasWinA=true,
    aziA=INFRAX.Data.Orientations.N,
    w=4.1,
    h=4*str3rdFlr.Height3rdFlr,
    A_winA=str3rdFlr.WindowA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyWall conTypFlo,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    fracA=1 - str3rdFlr.GlazingA/str3rdFlr.WindowA,
    l=3.55,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypB,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External)
    annotation (Placement(transformation(extent={{-80,6},{-60,26}})));

  Deprecated.Subsystems.Floors.Floor3 floor3_1
    annotation (Placement(transformation(extent={{-12,6},{16,26}})));
  IDEAS.Buildings.Components.OuterWall[8] outerWall(
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      constructionType,
    each inc=IDEAS.Types.Tilt.Floor,
    each azi=0,
    A=structure.A_2Flr_3Flr)                        annotation (Placement(
        transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={2,-28})));
  INFRAX.Data.Parameters.Structure structure
    annotation (Placement(transformation(extent={{80,-60},{100,-40}})));
equation
  connect(floor3_1.flo, outerWall.propsBus_a) annotation (Line(
      points={{2,6},{2,6},{2,-23},{0,-23}},
      color={255,204,51},
      thickness=0.5));
  connect(floor3_1.staW[1], staW.proBusB) annotation (Line(
      points={{-12,17.7333},{-36,17.7333},{-36,22},{-61,22}},
      color={255,204,51},
      thickness=0.5));
  connect(floor3_1.staW[2], staW.proBusC) annotation (Line(
      points={{-12,16.4},{-16,16.4},{-16,-2},{-70,-2},{-70,7}},
      color={255,204,51},
      thickness=0.5));
  connect(floor3_1.staW[3], staW.proBusD) annotation (Line(
      points={{-12,15.0667},{-38,15.0667},{-38,30},{-79,30},{-79,16}},
      color={255,204,51},
      thickness=0.5));
  connect(floor3_1.staE[1], staE.proBusC) annotation (Line(
      points={{17,16},{28,16},{28,12},{28,2},{74,2},{74,5}},
      color={255,204,51},
      thickness=0.5));
  connect(floor3_1.staE[2], staE.proBusD) annotation (Line(
      points={{15,16},{15,14},{65,14}},
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
end Floor3_Complete;
