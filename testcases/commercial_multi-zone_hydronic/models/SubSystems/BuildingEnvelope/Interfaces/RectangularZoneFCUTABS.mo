within INFRAX.SubSystems.BuildingEnvelope.Interfaces;
model RectangularZoneFCUTABS
  "Rectangular zone with TABS in the ceiling and FCU ports"
  extends
    INFRAX.SubSystems.BuildingEnvelope.Interfaces.RectangularZoneTemplateFCU;

  parameter Boolean hasTABSCei = false
  "Activating TABS on Ceiling"
  annotation(Dialog(tab="Ceiling", group="TABS details"));

public
    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_emb if hasTABSCei
    "embedded port for TABS"
    annotation (Placement(transformation(extent={{90,-100},{110,-80}})));

equation
    if hasTABSCei then
      connect(outCei.port_emb[1], port_emb);
    end if;

end RectangularZoneFCUTABS;
