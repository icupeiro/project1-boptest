within INFRAX.SubSystems.BuildingEnvelope.Floor1.Examples;
model Floor1_STABLE
  import INFRAX;

  IDEAS.Buildings.Components.RectangularZoneTemplate meetingRoom1(
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypFlo,
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    l=str1stFlr.l_1stFlr_MTR1,
    w=str1stFlr.w_1stFlr_CPR,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypA,
    h=str1stFlr.Height1stFlr,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypC,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypB,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD)
    annotation (Placement(transformation(extent={{0,0},{20,20}})));
  IDEAS.Buildings.Components.RectangularZoneTemplate meetingRoom2(
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypFlo,
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    l=str1stFlr.l_1stFlr_MTR2,
    w=str1stFlr.w_1stFlr_MTR2,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypA,
    h=str1stFlr.Height1stFlr,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypC,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 conTypB)
    annotation (Placement(transformation(extent={{80,0},{100,20}})));
  INFRAX.Data.Parameters.Str1stFlr str1stFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
  IDEAS.Buildings.Components.Zone northZone(
    redeclare package Medium = IDEAS.Media.Air,
    V=str1stFlr.Vol_1stFlr_NZ,
    hZone=str1stFlr.Height1stFlr,
    nSurf=9)
    annotation (Placement(transformation(extent={{36,54},{64,82}})));
  IDEAS.Buildings.Components.InternalWall[2] internalWallNZ(
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall
      constructionType,
    each inc=IDEAS.Types.Tilt.Wall,
    azi={INFRAX.Data.Orientations.N,INFRAX.Data.Orientations.W},
    A=str1stFlr.AinternalWallsNZ)
    annotation (Placement(transformation(extent={{84,60},{96,80}})));
  IDEAS.Buildings.Components.OuterWall northWall(
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str1stFlr.AWall_1stFlr_NZ - str1stFlr.AWindows_1stFlr_NZ) annotation (
      Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={80,94})));
  IDEAS.Buildings.Components.Window northWindows(
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str1stFlr.AWindows_1stFlr_NZ,
    frac=str1stFlr.FrameRatio_1stFlr_NZ,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType) annotation (
      Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=-90,
        origin={100,94})));
  IDEAS.Buildings.Components.Zone southZone2(
    redeclare package Medium = IDEAS.Media.Air,
    hZone=str1stFlr.Height1stFlr,
    V=str1stFlr.Vol_1stFlr_SZ2,
    nSurf=14)
    annotation (Placement(transformation(extent={{32,-60},{70,-20}})));
  IDEAS.Buildings.Components.OuterWall[2] SZ2Wall(
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    A=str1stFlr.AWall_1stFlr_SZ2 - str1stFlr.AWindows_1stFlr_SZ2,
    azi={INFRAX.Data.Orientations.E,INFRAX.Data.Orientations.S}) annotation (
      Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=-90,
        origin={40,-74})));
  IDEAS.Buildings.Components.Window[2] SZ2Windows(
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    inc=IDEAS.Types.Tilt.Wall,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType,
    A=str1stFlr.AWindows_1stFlr_SZ2,
    frac=str1stFlr.FrameRatio_1stFlr_SZ2,
    azi={INFRAX.Data.Orientations.E,INFRAX.Data.Orientations.S}) annotation (
      Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=-90,
        origin={60,-74})));
  IDEAS.Buildings.Components.InternalWall[2] internalWallSZ2(
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall
      constructionType,
    each inc=IDEAS.Types.Tilt.Wall,
    azi={INFRAX.Data.Orientations.N,INFRAX.Data.Orientations.W},
    A=str1stFlr.AinternalWallsSZ2) annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={50,-4})));
  IDEAS.Buildings.Components.InternalWall internalWall(
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str1stFlr.AinternalWall_NZSZ2) annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={34,30})));
  IDEAS.Buildings.Components.Zone southZone1(
    redeclare package Medium = IDEAS.Media.Air,
    hZone=str1stFlr.Height1stFlr,
    V=str1stFlr.Vol_1stFlr_SZ1,
    nSurf=6)
    annotation (Placement(transformation(extent={{-58,-84},{-20,-44}})));
  IDEAS.Buildings.Components.OuterWall[3] SZ1Wall(
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi={INFRAX.Data.Orientations.E,INFRAX.Data.Orientations.S,str1stFlr.orientation},
    A={str1stFlr.AWall_1stFlr_SZ1[1] - str1stFlr.AWindows_1stFlr_SZ1[1],
        str1stFlr.AWall_1stFlr_SZ1[2],str1stFlr.AWall_1stFlr_SZ1[3] - str1stFlr.AWindows_1stFlr_SZ1
        [2]}) annotation (Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=-90,
        origin={-90,-86})));

  IDEAS.Buildings.Components.Window[2] SZ1Windows(
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    inc=IDEAS.Types.Tilt.Wall,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType,
    azi={INFRAX.Data.Orientations.E,str1stFlr.orientation},
    A=str1stFlr.AWindows_1stFlr_SZ1,
    frac=0.15) annotation (Placement(transformation(
        extent={{6,-10},{-6,10}},
        rotation=-90,
        origin={-70,-86})));
  IDEAS.Buildings.Components.Zone hall(
    redeclare package Medium = IDEAS.Media.Air,
    hZone=str1stFlr.Height1stFlr,
    V=str1stFlr.Vol_1stFlr_hall,
    nSurf=8)
    annotation (Placement(transformation(extent={{-54,8},{-18,44}})));
  IDEAS.Buildings.Components.OuterWall[2] hallWalls(
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi={INFRAX.Data.Orientations.N,str1stFlr.orientation},
    A=str1stFlr.AWall_1stFlr_hall - str1stFlr.AWindows_1stFlr_hall) annotation (
     Placement(transformation(
        extent={{6,10},{-6,-10}},
        rotation=180,
        origin={-106,18})));
  IDEAS.Buildings.Components.Window[2] hallWindows(
    redeclare IDEAS.Buildings.Data.Glazing.Ins2 glazing,
    inc=IDEAS.Types.Tilt.Wall,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraType,
    redeclare IDEAS.Buildings.Components.Shading.None shaType,
    azi={INFRAX.Data.Orientations.N,str1stFlr.orientation},
    A=str1stFlr.AWindows_1stFlr_hall,
    frac=str1stFlr.FrameRatio_1stFlr_hall) annotation (Placement(transformation(
        extent={{6,10},{-6,-10}},
        rotation=180,
        origin={-106,42})));
  IDEAS.Buildings.Components.InternalWall internalWall1(
    redeclare IDEAS.Examples.PPD12.Data.InteriorWall10 constructionType,
    inc=IDEAS.Types.Tilt.Wall,
    azi=INFRAX.Data.Orientations.N,
    A=str1stFlr.AinternalWall_hallSZ1) annotation (Placement(transformation(
        extent={{-6,-10},{6,10}},
        rotation=90,
        origin={-78,-12})));
  IDEAS.Buildings.Components.RectangularZoneTemplate bathroomZone(
    redeclare package Medium = IDEAS.Media.Air,
    aziA=INFRAX.Data.Orientations.N,
    h=str1stFlr.Height1stFlr,
    l=str1stFlr.l_1stFlr_BRZ,
    w=str1stFlr.w_1stFlr_BRZ,
    bouTypA=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypD=IDEAS.Buildings.Components.Interfaces.BoundaryType.InternalWall,
    bouTypFlo=IDEAS.Buildings.Components.Interfaces.BoundaryType.SlabOnGround,
    bouTypCei=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypA,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypB,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypC,
    redeclare IDEAS.Buildings.Validation.Data.Constructions.LightWall conTypD,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypCei,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypFlo)
    annotation (Placement(transformation(extent={{-54,72},{-34,92}})));
equation
  connect(northZone.propsBus[1], northWall.propsBus_a) annotation (Line(
      points={{36,76.0889},{22,76.0889},{22,89},{82,89}},
      color={255,204,51},
      thickness=0.5));
  connect(northZone.propsBus[2], northWindows.propsBus_a) annotation (Line(
      points={{36,75.4667},{22,75.4667},{22,89},{102,89}},
      color={255,204,51},
      thickness=0.5));
  connect(northZone.propsBus[3], internalWallNZ[1].propsBus_b) annotation (Line(
      points={{36,74.8444},{36,74.8444},{36,84},{80,84},{80,72},{85,72}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWallNZ[1].propsBus_a, northZone.propsBus[4]) annotation (Line(
      points={{95,72},{100,72},{100,48},{36,48},{36,74.2222}},
      color={255,204,51},
      thickness=0.5));
  connect(northZone.propsBus[5], internalWallNZ[2].propsBus_b) annotation (Line(
      points={{36,73.6},{36,84},{80,84},{80,72},{85,72}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWallNZ[2].propsBus_a, northZone.propsBus[6]) annotation (Line(
      points={{95,72},{100,72},{100,48},{36,48},{36,72.9778}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusA, northZone.propsBus[7]) annotation (Line(
      points={{4,19},{4,72.3556},{36,72.3556}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusA, northZone.propsBus[8]) annotation (Line(
      points={{84,19},{84,40},{36,40},{36,71.7333}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone2.propsBus[1], SZ2Wall[1].propsBus_a) annotation (Line(
      points={{32,-28.2857},{26,-28.2857},{20,-28.2857},{20,-64},{42,-64},{42,
          -69}},
      color={255,204,51},
      thickness=0.5));

  connect(southZone2.propsBus[2], SZ2Wall[2].propsBus_a) annotation (Line(
      points={{32,-28.8571},{30,-28.8571},{30,-28},{20,-28},{20,-64},{42,-64},{
          42,-69}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone2.propsBus[3], SZ2Windows[1].propsBus_a) annotation (Line(
      points={{32,-29.4286},{26,-29.4286},{20,-29.4286},{20,-62},{62,-62},{62,
          -69}},
      color={255,204,51},
      thickness=0.5));

  connect(southZone2.propsBus[4], SZ2Windows[2].propsBus_a) annotation (Line(
      points={{32,-30},{26,-30},{20,-30},{20,-62},{62,-62},{62,-69}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone2.propsBus[5], internalWallSZ2[1].propsBus_b) annotation (
      Line(
      points={{32,-30.5714},{32,-30.5714},{32,-12},{32,-14},{48,-14},{48,-9}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWallSZ2[1].propsBus_a, southZone2.propsBus[6]) annotation (
      Line(
      points={{48,1},{48,8},{32,8},{32,-31.1429}},
      color={255,204,51},
      thickness=0.5));
  connect(southZone2.propsBus[7], internalWallSZ2[2].propsBus_b) annotation (
      Line(
      points={{32,-31.7143},{32,-14},{48,-14},{48,-9}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWallSZ2[2].propsBus_a, southZone2.propsBus[8]) annotation (
      Line(
      points={{48,1},{48,8},{32,8},{32,-32.2857}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusC, southZone2.propsBus[9]) annotation (Line(
      points={{10,1},{10,-32.8571},{32,-32.8571}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusB, southZone2.propsBus[10]) annotation (Line(
      points={{19,16},{32,16},{32,-33.4286}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusC, southZone2.propsBus[11]) annotation (Line(
      points={{90,1},{90,-14},{32,-14},{32,-34}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusD, southZone2.propsBus[12]) annotation (Line(
      points={{81,10},{32,10},{32,-34.5714}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWall.propsBus_a, northZone.propsBus[9]) annotation (Line(
      points={{32,35},{32,71.1111},{36,71.1111}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom2.proBusB, southZone2.propsBus[13]) annotation (Line(
      points={{99,16},{106,16},{106,-18},{32,-18},{32,-35.1429}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWall.propsBus_b, southZone2.propsBus[14]) annotation (Line(
      points={{32,25},{32,-35.7143}},
      color={255,204,51},
      thickness=0.5));
  connect(SZ1Wall[1].propsBus_a, southZone1.propsBus[1]) annotation (Line(
      points={{-88,-81},{-88,-81},{-88,-52.6667},{-58,-52.6667}},
      color={255,204,51},
      thickness=0.5));
  connect(SZ1Wall[2].propsBus_a, southZone1.propsBus[2]) annotation (Line(
      points={{-88,-81},{-88,-54},{-58,-54}},
      color={255,204,51},
      thickness=0.5));
  connect(SZ1Wall[3].propsBus_a, southZone1.propsBus[3]) annotation (Line(
      points={{-88,-81},{-88,-55.3333},{-58,-55.3333}},
      color={255,204,51},
      thickness=0.5));
  connect(SZ1Windows[1].propsBus_a, southZone1.propsBus[4]) annotation (Line(
      points={{-68,-81},{-68,-56.6667},{-58,-56.6667}},
      color={255,204,51},
      thickness=0.5));
  connect(SZ1Windows[2].propsBus_a, southZone1.propsBus[5]) annotation (Line(
      points={{-68,-81},{-68,-81},{-68,-58},{-58,-58}},
      color={255,204,51},
      thickness=0.5));
  connect(hallWalls[1].propsBus_a, hall.propsBus[1]) annotation (Line(
      points={{-101,20},{-54,20},{-54,36.35}},
      color={255,204,51},
      thickness=0.5));
  connect(hallWalls[2].propsBus_a, hall.propsBus[2]) annotation (Line(
      points={{-101,20},{-54,20},{-54,35.45}},
      color={255,204,51},
      thickness=0.5));
  connect(hallWindows[1].propsBus_a, hall.propsBus[3]) annotation (Line(
      points={{-101,44},{-54,44},{-54,34.55}},
      color={255,204,51},
      thickness=0.5));
  connect(hallWindows[2].propsBus_a, hall.propsBus[4]) annotation (Line(
      points={{-101,44},{-54,44},{-54,33.65}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWall1.propsBus_a, hall.propsBus[5]) annotation (Line(
      points={{-80,-7},{-80,-7},{-80,32.75},{-54,32.75}},
      color={255,204,51},
      thickness=0.5));
  connect(internalWall1.propsBus_b, southZone1.propsBus[6]) annotation (Line(
      points={{-80,-17},{-82,-17},{-82,-40},{-82,-59.3333},{-58,-59.3333}},
      color={255,204,51},
      thickness=0.5));
  connect(meetingRoom1.proBusD, hall.propsBus[6]) annotation (Line(
      points={{1,10},{-2,10},{-2,12},{-4,12},{-4,62},{-54,62},{-54,31.85}},
      color={255,204,51},
      thickness=0.5));
  connect(bathroomZone.proBusC, hall.propsBus[7]) annotation (Line(
      points={{-44,73},{-46,73},{-46,68},{-54,68},{-54,30.95}},
      color={255,204,51},
      thickness=0.5));
  connect(bathroomZone.proBusD, hall.propsBus[8]) annotation (Line(
      points={{-53,82},{-54,82},{-54,30.05}},
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
          textString="1")}),                                   Diagram(
      coordinateSystem(preserveAspectRatio=false, extent={{-140,-100},{140,100}})));
end Floor1_STABLE;
