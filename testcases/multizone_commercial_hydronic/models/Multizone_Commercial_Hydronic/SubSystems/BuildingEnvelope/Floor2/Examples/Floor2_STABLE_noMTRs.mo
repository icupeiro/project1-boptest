within INFRAX.SubSystems.BuildingEnvelope.Floor2.Examples;
model Floor2_STABLE_noMTRs
  import INFRAX;

  inner IDEAS.BoundaryConditions.SimInfoManager sim "Data reader"
    annotation (Placement(transformation(extent={{-140,80},{-120,100}})));
  INFRAX.Data.Parameters.Str2ndFlr str2ndFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
  IDEAS.Buildings.Components.Window northWindows(
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str2ndFlr.AWindows_2ndFlr_NZ,
    frac=str2ndFlr.FrameRatio_2ndFlr_NZ,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2ArGold glazing,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType) annotation (
      Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={112,92})));
  IDEAS.Buildings.Components.OuterWall northWall(
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str2ndFlr.AWall_2ndFlr_NZ,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType)
    annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={88,92})));
  IDEAS.Buildings.Components.Zone northZone(redeclare package Medium =
        IDEAS.Media.Air,
    V=str2ndFlr.Vol_2ndFlr_NZ,
    hZone=str2ndFlr.Height2ndFlr,
    nSurf=5)
    annotation (Placement(transformation(extent={{20,40},{60,80}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate meetingRoom1(
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    l=str2ndFlr.l_2ndFlr_MTR1,
    w=str2ndFlr.w_2ndFlr_MTR1,
    h=str2ndFlr.Height2ndFlr,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    nSurfExt=0,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall18 conTypB,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypC,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypD)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate meetingRoom2(
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    l=str2ndFlr.l_2ndFlr_MTR2,
    w=str2ndFlr.w_2ndFlr_MTR2,
    h=str2ndFlr.Height2ndFlr,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypA,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    nSurfExt=0,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall18 conTypD,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypC,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypB)
    annotation (Placement(transformation(extent={{40,-10},{60,10}})));
  IDEAS.Buildings.Components.Zone southZone(redeclare package Medium =
        IDEAS.Media.Air,
    hZone=str2ndFlr.Height2ndFlr,
    nSurf=21,
    V=str2ndFlr.Vol_2ndFlr_SZ2)
    annotation (Placement(transformation(extent={{-22,-72},{18,-32}})));
  IDEAS.Buildings.Components.OuterWall[4] southWall(
    azi=str2ndFlr.azi_2ndFlr_SZ,
    A=str2ndFlr.AWall_2ndFlr_SZ,
    inc=str2ndFlr.inc_2ndFlr_SZ,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType)
    annotation (Placement(transformation(extent={{-96,-60},{-84,-40}})));
  IDEAS.Buildings.Components.Window[4] southWindows(
    azi=str2ndFlr.azi_2ndFlr_SZ,
    A=str2ndFlr.AWindows_2ndFlr_SZ,
    frac=str2ndFlr.FrameRatio_2ndFlr_SZ,
    inc=str2ndFlr.inc_2ndFlr_SZ,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2ArGold glazing,
    redeclare IDEAS.Buildings.Data.Frames.AluminiumInsulated fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType)
    annotation (Placement(transformation(extent={{-96,-84},{-84,-64}})));
  IDEAS.Buildings.Components.InternalWall[2] internalWalls(
    inc=IDEAS.Types.Tilt.Wall,
    A=str2ndFlr.AinternalWalls,
    azi={INFRAX.Data.Orientations.N,INFRAX.Data.Orientations.W},
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 constructionType)
    "glass wall separating copy rooms from south zone" annotation (Placement(
        transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={-28,20})));
  IDEAS.Buildings.Components.RectangularZoneTemplate bathroomZone(
    redeclare package Medium = IDEAS.Media.Air,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    aziA=INFRAX.Data.Orientations.N,
    l=str2ndFlr.l_2ndFlr_BRZ,
    w=str2ndFlr.w_2ndFlr_BRZ,
    h=str2ndFlr.Height2ndFlr,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.HeavyFloor
      conTypFlo,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Data.Constructions.EpcSolidWall2 conTypC,
    redeclare IDEAS.Buildings.Data.Constructions.EpcSolidWall2 conTypD)
    annotation (Placement(transformation(extent={{-100,40},{-80,60}})));

  IDEAS.Buildings.Components.InternalWall copyWalls(
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str2ndFlr.Awall_NZSZ,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 constructionType)
    "walls of copy rooms separating north/south zones" annotation (Placement(
        transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={0,20})));
equation

  //northZone connections
 connect(northZone.propsBus[1], northWall.propsBus_a) annotation (Line(
      points={{20,71.2},{20,71.2},{20,87},{90,87}},
      color={255,204,51},
      thickness=0.5));
  connect(northZone.propsBus[2], northWindows.propsBus_a) annotation (Line(
      points={{20,69.6},{20,87},{114,87}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusA, northZone.propsBus[3]) annotation (Line(
      points={{-56,9},{-56,9},{-56,68},{20,68}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusA, northZone.propsBus[4]) annotation (Line(
      points={{44,9},{20,9},{20,66.4}},
      color={255,204,51},
      thickness=0.5));
  //southZone connections
  connect(southZone.propsBus[1], southWall[1].propsBus_a) annotation (Line(
      points={{-22,-40.1905},{-48,-40.1905},{-48,-48},{-85,-48}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[2], southWall[2].propsBus_a);
  connect(southZone.propsBus[3], southWall[3].propsBus_a);
  connect(southZone.propsBus[4], southWall[4].propsBus_a);
  connect(southZone.propsBus[5], southWindows[1].propsBus_a) annotation (Line(
      points={{-22,-41.7143},{-22,-41.7143},{-22,-40},{-48,-40},{-48,-72},{-85,
          -72}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[6], southWindows[2].propsBus_a);
  connect(southZone.propsBus[7], southWindows[3].propsBus_a);
  connect(southZone.propsBus[8], southWindows[4].propsBus_a);
  connect(southZone.propsBus[9], meetingRoom1.proBusC) annotation (Line(
      points={{-22,-43.2381},{-22,-43.2381},{-22,-9},{-50,-9}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[10], meetingRoom2.proBusC) annotation (Line(
      points={{-22,-43.619},{-22,-43.619},{-22,-20},{50,-20},{50,-9}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[12], meetingRoom1.proBusD) annotation (Line(
      points={{-22,-44.381},{-22,-44.381},{-22,-20},{-66,-20},{-66,0},{-59,0}},
      color={255,204,51},
      thickness=0.5));

  connect(southZone.propsBus[13], meetingRoom2.proBusB) annotation (Line(
      points={{-22,-44.7619},{-22,-20},{72,-20},{72,6},{59,6}},
      color={255,204,51},
      thickness=0.5));
  //Other connections

  connect(internalWalls[1].propsBus_a, southZone.propsBus[14]) annotation (Line(
      points={{-26,15},{-28,15},{-28,-40},{-28,-45.1429},{-22,-45.1429}},
      color={255,204,51},
      thickness=0.5));
  connect(bathroomZone.proBusC, southZone.propsBus[16]) annotation (Line(
      points={{-90,41},{-90,-34},{-22,-34},{-22,-45.9048}},
      color={255,204,51},
      thickness=0.5));
  connect(bathroomZone.proBusD, southZone.propsBus[17]) annotation (Line(
      points={{-99,50},{-100,50},{-100,-34},{-22,-34},{-22,-46.2857}},
      color={255,204,51},
      thickness=0.5));

  connect(internalWalls[1].propsBus_b, southZone.propsBus[15]) annotation (Line(
      points={{-26,25},{-26,32},{-14,32},{-14,8},{-22,8},{-22,-45.5238}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[11], copyWalls.propsBus_a) annotation (Line(
      points={{-22,-44},{-22,-44},{-22,0},{0,0},{0,15},{2,15}},
      color={255,204,51},
      thickness=0.5));
  connect(copyWalls.propsBus_b, northZone.propsBus[5]) annotation (Line(
      points={{2,25},{2,25},{2,64.8},{20,64.8}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusB, southZone.propsBus[18]) annotation (Line(
      points={{-41,6},{-34,6},{-34,4},{-22,4},{-22,-46.6667}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusD, southZone.propsBus[19]) annotation (Line(
      points={{41,0},{8,0},{8,-2},{-22,-2},{-22,-47.0476}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone.propsBus[20], internalWalls[2].propsBus_a) annotation (Line(
      points={{-22,-47.4286},{-26,-47.4286},{-26,-40},{-26,15}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWalls[2].propsBus_b, southZone.propsBus[21]) annotation (Line(
      points={{-26,25},{-26,36},{-12,36},{-12,4},{-22,4},{-22,-47.8095}},
      color={255,204,51},
      thickness=0.5));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-140,
            -100},{140,100}}), graphics={
          Rectangle(extent={{-140,100},{140,-100}},
                                                lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                                Text(
          extent={{-70,70},{70,-70}},
          lineColor={28,108,200},
          textString="2")}), Diagram(coordinateSystem(preserveAspectRatio=false,
          extent={{-140,-100},{140,100}})));
end Floor2_STABLE_noMTRs;
