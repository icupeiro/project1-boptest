within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_STABLE
  import INFRAX;
  extends LIDEAS.Components.LinearisationInterface(sim(
      incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,INFRAX.Data.Orientations.N},{
          IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,
          INFRAX.Data.Orientations.W},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.S},
          {IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.E}},
      nWindow=8,
      lineariseDymola=true));
  INFRAX.Data.Parameters.Str3rdFlr str3rdFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
  LIDEAS.Components.LinWindow[4] southWindows(
    A=str3rdFlr.AWindows_3rdFlr_SZ,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType,
    frac=str3rdFlr.FrameRatio_3rdFlr_SZ,
    inc=str3rdFlr.inc_3rdFlr_SZ,
    indexWindow={1,2,3,4},
    azi=str3rdFlr.azi_3rdFlr_SZ) annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={-82,-2})));
  IDEAS.Buildings.Components.OuterWall[4] southWalls(
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall18 constructionType,
    A=str3rdFlr.AWall_3rdFlr_SZ,
    inc=str3rdFlr.inc_3rdFlr_SZ,
    azi=str3rdFlr.azi_3rdFlr_SZ) annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={-58,-2})));
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
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate copyRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    l=str3rdFlr.l_3rdFlr_CPR,
    w=str3rdFlr.w_3rdFlr_CPR,
    h=str3rdFlr.Height3rdFlr,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
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
    indexWindowA=5,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  LIDEAS.Components.LinZone southZone(
    redeclare package Medium = IDEAS.Media.Air,
    hZone=str3rdFlr.Height3rdFlr,
    V=str3rdFlr.Vol_3rdFlr_SZ,
    nSurf=14)
    annotation (Placement(transformation(extent={{-20,-60},{20,-20}})));
  LIDEAS.Components.LinRectangularZoneTemplate meetingRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    l=str3rdFlr.l_3rdFlr_MTR,
    w=str3rdFlr.w_3rdFlr_MTR,
    h=str3rdFlr.Height3rdFlr,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
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
    indexWindowA=6,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{20,40},{40,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate smallRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    hasWinA=true,
    l=str3rdFlr.l_3rdFlr_SmaR,
    w=str3rdFlr.w_3rdFlr_SmaR,
    h=str3rdFlr.Height3rdFlr,
    A_winA=str3rdFlr.AWindows_3rdFlr_SmaR,
    fracA=str3rdFlr.FrameRatio_3rdFlr_SmaR,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
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
    indexWindowA=7,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{60,40},{80,60}})));
  LIDEAS.Components.LinRectangularZoneTemplate storageRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
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
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Examples.PPD12.Data.Roof conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2Ar glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    indexWindowA=8,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{100,60},{120,80}})));
equation
  //Connections to the floor

  //External connections of southZone

  connect(southZone.propsBus[1], southWalls[1].propsBus_a) annotation (Line(
      points={{-20,-28.2857},{-38,-28.2857},{-56,-28.2857},{-56,-7}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[2], southWalls[2].propsBus_a);
  connect(southZone.propsBus[3], southWalls[3].propsBus_a);
  connect(southZone.propsBus[4], southWalls[4].propsBus_a);
  connect(southZone.propsBus[5], southWindows[1].propsBus_a) annotation (Line(
      points={{-20,-30.5714},{-80,-30.5714},{-80,-7}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[6], southWindows[2].propsBus_a);
  connect(southZone.propsBus[7], southWindows[3].propsBus_a);
  connect(southZone.propsBus[8], southWindows[4].propsBus_a);

  connect(southZone.propsBus[9], bathroomZone.proBusC) annotation (Line(
      points={{-20,-32.8571},{-22,-32.8571},{-22,26},{-50,26},{-50,41}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[10], bathroomZone.proBusD) annotation (Line(
      points={{-20,-33.4286},{-22,-33.4286},{-22,26},{-68,26},{-68,50},{-59,50}},
      color={255,204,51},
      thickness=0.5));

  connect(southZone.propsBus[11], copyRoom.proBusC) annotation (Line(
      points={{-20,-34},{-20,-34},{-20,36},{-10,36},{-10,41}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusC, southZone.propsBus[12]) annotation (Line(
      points={{30,41},{30,24},{-20,24},{-20,-34.5714}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusD, copyRoom.proBusB) annotation (Line(
      points={{21,50},{6,50},{6,56},{-1,56}},
      color={255,204,51},
      thickness=0.5));
  connect(smallRoom.proBusC, southZone.propsBus[13]) annotation (Line(
      points={{70,41},{70,2},{-20,2},{-20,-35.1429}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusB, smallRoom.proBusD) annotation (Line(
      points={{39,56},{46,56},{46,52},{61,52},{61,50}},
      color={255,204,51},
      thickness=0.5));
  connect(storageRoom.proBusC, southZone.propsBus[14]) annotation (Line(
      points={{110,61},{108,61},{108,-22},{-20,-22},{-20,-35.7143}},
      color={255,204,51},
      thickness=0.5));
  connect(storageRoom.proBusD, smallRoom.proBusB) annotation (Line(
      points={{101,70},{88,70},{88,56},{79,56}},
      color={255,204,51},
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-140,-100},
            {140,100}}), graphics={Rectangle(
          extent={{-140,100},{140,-100}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid), Text(
          extent={{-70,70},{70,-70}},
          lineColor={28,108,200},
          textString="3")}), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-140,-100},{140,100}})));
end Floor3_STABLE;
