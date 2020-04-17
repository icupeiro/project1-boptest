within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_STABLE4
  import INFRAX;
  extends LIDEAS.Components.LinearisationInterface(sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S
           + INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.W
           + INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N
           + INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E
           + INFRAX.Data.Orientations.N}}, nWindow=4));
  INFRAX.Data.Parameters.Str3rdFlr str3rdFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
  LIDEAS.Components.LinRectangularZoneTemplate bathroomZone(
    redeclare package Medium = IDEAS.Media.Air,
    l=str3rdFlr.l_3rdFlr_BRZ,
    w=str3rdFlr.w_3rdFlr_BRZ,
    h=str3rdFlr.Height3rdFlr,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    aziA=INFRAX.Data.Orientations.N,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypD)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate copyRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    l=str3rdFlr.l_3rdFlr_CPR,
    w=str3rdFlr.w_3rdFlr_CPR,
    h=str3rdFlr.Height3rdFlr,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypD,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    hasWinA=true,
    A_winA=str3rdFlr.AWindows_3rdFlr_CPR,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2Ar glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    fracA=str3rdFlr.FrameRatio_3rdFlr_CPR,
    aziA=INFRAX.Data.Orientations.N,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    indexWindowA=1)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate meetingRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    l=str3rdFlr.l_3rdFlr_MTR,
    w=str3rdFlr.w_3rdFlr_MTR,
    h=str3rdFlr.Height3rdFlr,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    hasWinA=true,
    A_winA=str3rdFlr.AWindows_3rdFlr_MTR,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    fracA=str3rdFlr.FrameRatio_3rdFlr_MTR,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypB,
    aziA=INFRAX.Data.Orientations.N,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    indexWindowA=2)
    annotation (Placement(transformation(extent={{20,40},{40,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate smallRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    hasWinA=true,
    l=str3rdFlr.l_3rdFlr_SmaR,
    w=str3rdFlr.w_3rdFlr_SmaR,
    h=str3rdFlr.Height3rdFlr,
    A_winA=str3rdFlr.AWindows_3rdFlr_SmaR,
    fracA=str3rdFlr.FrameRatio_3rdFlr_SmaR,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    aziA=INFRAX.Data.Orientations.N,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    indexWindowA=3)
    annotation (Placement(transformation(extent={{60,40},{80,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate storageRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    hasWinA=true,
    l=str3rdFlr.l_3rdFlr_StoR,
    w=str3rdFlr.w_3rdFlr_StoR,
    h=str3rdFlr.Height3rdFlr,
    A_winA=str3rdFlr.AWindows_3rdFlr_StoR,
    fracA=str3rdFlr.FrameRatio_3rdFlr_StoR,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2Ar glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    aziA=INFRAX.Data.Orientations.N,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    indexWindowA=4)
    annotation (Placement(transformation(extent={{100,60},{120,80}})));
equation
  //Connections to the floor

  //External connections of southZone

  connect(meetingRoom.proBusD, copyRoom.proBusB) annotation (Line(
      points={{21,50},{6,50},{6,56},{-1,56}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusB, smallRoom.proBusD) annotation (Line(
      points={{39,56},{46,56},{46,52},{61,52},{61,50}},
      color={255,204,51},
      thickness=0.5));
  connect(storageRoom.proBusD, smallRoom.proBusB) annotation (Line(
      points={{101,70},{88,70},{88,56},{79,56}},
      color={255,204,51},
      thickness=0.5));
annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-140,-100},
            {140,100}}), graphics={
          Rectangle(extent={{-140,100},{140,-100}},
                                                lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                                Text(
          extent={{-70,70},{70,-70}},
          lineColor={28,108,200},
          textString="3")}),                                   Diagram(
      coordinateSystem(preserveAspectRatio=false, extent={{-140,-100},{140,100}})));
end Floor3_STABLE4;
