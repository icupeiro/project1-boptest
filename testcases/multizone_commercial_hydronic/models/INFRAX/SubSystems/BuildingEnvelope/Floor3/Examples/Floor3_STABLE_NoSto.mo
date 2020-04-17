within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_STABLE_NoSto
  import INFRAX;

  INFRAX.Data.Parameters.Str3rdFlr str3rdFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
  inner IDEAS.BoundaryConditions.SimInfoManager sim "Data reader"
    annotation (Placement(transformation(extent={{-140,80},{-120,100}})));
  IDEAS.Buildings.Components.Window[4] southWindows(
    A=str3rdFlr.AWindows_3rdFlr_SZ,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType,
    frac=str3rdFlr.FrameRatio_3rdFlr_SZ,
    inc=str3rdFlr.inc_3rdFlr_SZ,
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
  IDEAS.Buildings.Components.RectangularZoneTemplate bathroomZone(
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
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
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD)
    annotation (Placement(transformation(extent={{-60,40},{-40,60}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate copyRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    aziA=INFRAX.Data.Orientations.N,
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
    fracA=str3rdFlr.FrameRatio_3rdFlr_CPR)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
  IDEAS.Buildings.Components.Zone southZone(
    redeclare package Medium = IDEAS.Media.Air,
    hZone=str3rdFlr.Height3rdFlr,
    V=str3rdFlr.Vol_3rdFlr_SZ,
    nSurf=13)
    annotation (Placement(transformation(extent={{-20,-60},{20,-20}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate meetingRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    aziA=INFRAX.Data.Orientations.N,
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
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypB)
    annotation (Placement(transformation(extent={{20,40},{40,60}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate smallRoom(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.External,
    hasWinA=true,
    aziA=INFRAX.Data.Orientations.N,
    w=str3rdFlr.w_3rdFlr_SmaR,
    h=str3rdFlr.Height3rdFlr,
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
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    nSurfExt=2,
    A_winA=2*str3rdFlr.AWindows_3rdFlr_SmaR,
    l=str3rdFlr.l_3rdFlr_SmaR + str3rdFlr.l_3rdFlr_StoR + 0.08)
    annotation (Placement(transformation(extent={{60,40},{80,60}})));
  IDEAS.Buildings.Components.InternalWall internalWall(
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall
      constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.W,
    A=5*str3rdFlr.Height3rdFlr)
    annotation (Placement(transformation(extent={{68,94},{56,74}})));
equation
  //Connections to the floor

  //External connections of southZone

  connect(southZone.propsBus[1], southWalls[1].propsBus_a) annotation (Line(
      points={{-20,-28.3077},{-38,-28.3077},{-56,-28.3077},{-56,-7}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[2], southWalls[2].propsBus_a);
  connect(southZone.propsBus[3], southWalls[3].propsBus_a);
  connect(southZone.propsBus[4], southWalls[4].propsBus_a);
  connect(southZone.propsBus[5], southWindows[1].propsBus_a) annotation (Line(
      points={{-20,-30.7692},{-80,-30.7692},{-80,-7}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[6], southWindows[2].propsBus_a);
  connect(southZone.propsBus[7], southWindows[3].propsBus_a);
  connect(southZone.propsBus[8], southWindows[4].propsBus_a);

  connect(southZone.propsBus[9], bathroomZone.proBusC) annotation (Line(
      points={{-20,-33.2308},{-22,-33.2308},{-22,26},{-50,26},{-50,41}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[10], bathroomZone.proBusD) annotation (Line(
      points={{-20,-33.8462},{-22,-33.8462},{-22,26},{-68,26},{-68,50},{-59,50}},
      color={255,204,51},
      thickness=0.5));

  connect(southZone.propsBus[11], copyRoom.proBusC) annotation (Line(
      points={{-20,-34.4615},{-20,-34.4615},{-20,36},{-10,36},{-10,41}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusC, southZone.propsBus[12]) annotation (Line(
      points={{30,41},{30,24},{-20,24},{-20,-35.0769}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusD, copyRoom.proBusB) annotation (Line(
      points={{21,50},{6,50},{6,56},{-1,56}},
      color={255,204,51},
      thickness=0.5));
  connect(smallRoom.proBusC, southZone.propsBus[13]) annotation (Line(
      points={{70,41},{70,2},{-20,2},{-20,-35.6923}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom.proBusB, smallRoom.proBusD) annotation (Line(
      points={{39,56},{46,56},{46,52},{61,52},{61,50}},
      color={255,204,51},
      thickness=0.5));
  connect(smallRoom.proBusExt[1], internalWall.propsBus_a) annotation (Line(
      points={{58,59},{58,82},{57,82}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWall.propsBus_b, smallRoom.proBusExt[2]) annotation (Line(
      points={{67,82},{68,82},{68,68},{68,61},{58,61}},
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
end Floor3_STABLE_NoSto;
