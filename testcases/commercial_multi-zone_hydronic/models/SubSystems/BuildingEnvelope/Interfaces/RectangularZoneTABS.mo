within INFRAX.SubSystems.BuildingEnvelope.Interfaces;
model RectangularZoneTABS "Rectangular zone with TABS in the ceiling"
  extends IDEAS.Buildings.Components.RectangularZoneTemplate;

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

end RectangularZoneTABS;
