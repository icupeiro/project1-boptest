within INFRAX.SubSystems.BuildingEnvelope.Floor3.Interfaces;
model ZoneInterfaceFCU
  extends IDEAS.Buildings.Components.Interfaces.PartialZone;
  parameter Boolean hasFCU;

  Modelica.Fluid.Interfaces.FluidPort_b fcu_b(
    redeclare package Medium = Medium,
    m_flow(nominal=m_flow_nominal),
    h_outflow(nominal=Medium.h_default)) if hasFCU
    annotation (Placement(transformation(extent={{30,-110},{50,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a fcu_a(
    redeclare package Medium = Medium,
    m_flow(nominal=m_flow_nominal),
    h_outflow(nominal=Medium.h_default)) if hasFCU
    annotation (Placement(transformation(extent={{70,-110},{90,-90}})));
equation
  if hasFCU then
  connect(fcu_b, airModel.ports[1]) annotation (Line(points={{40,-100},{40,8},{0,
          8},{0,50},{-30,50},{-30,40}}, color={0,127,255}));
  connect(fcu_a, airModel.ports[2]) annotation (Line(points={{80,-100},{80,10},{
          2,10},{2,54},{-30,54},{-30,40}}, color={0,127,255}));
  end if;
   annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end ZoneInterfaceFCU;
