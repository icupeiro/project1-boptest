within INFRAX.SubSystems.BuildingEnvelope.Floor3.Examples;
model Floor3_STABLE5
  import INFRAX;
  extends LIDEAS.Components.LinearisationInterface(sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
          INFRAX.Data.Orientations.N},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.N},
          {IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.E},{IDEAS.Types.Tilt.Wall,
          INFRAX.Data.Orientations.S},{IDEAS.Types.Tilt.Wall,INFRAX.Data.Orientations.W}},
        nWindow=1));
  INFRAX.Data.Parameters.Str3rdFlr str3rdFlr
    annotation (Placement(transformation(extent={{120,-100},{140,-80}})));
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
    hasWinA=true,
    A_winA=str3rdFlr.AWindows_3rdFlr_CPR,
    redeclare IDEAS.Buildings.Data.Glazing.Ins2Ar glazingA,
    redeclare IDEAS.Buildings.Components.Shading.Interfaces.ShadingProperties
      shaTypA,
    redeclare IDEAS.Buildings.Data.Frames.Aluminium fraTypA,
    fracA=str3rdFlr.FrameRatio_3rdFlr_CPR,
    bouTypC=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    redeclare IDEAS.Buildings.Data.Constructions.CavityWall conTypC,
    indexWindowA=1,
    bouTypB=IDEAS.Buildings.Components.Interfaces.BoundaryType.OuterWall,
    aziA=INFRAX.Data.Orientations.N)
    annotation (Placement(transformation(extent={{-20,40},{0,60}})));
equation
  //Connections to the floor

  //External connections of southZone

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
end Floor3_STABLE5;
