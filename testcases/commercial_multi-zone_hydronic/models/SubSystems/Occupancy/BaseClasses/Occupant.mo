within INFRAX.SubSystems.Occupancy.BaseClasses;
partial model Occupant
  extends IDEAS.Templates.Interfaces.BaseClasses.Occupant(nLoads=1);
  parameter Modelica.SIunits.Temperature TSet_val[nZones] = fill(273.15 + 17, nZones)
    "Set point temperature";

  //Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow prescribedHeatFlowRad[nZones](each Q_flow=0)
  //Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow prescribedHeatFlowCon[nZones](each Q_flow=0)

equation
  TSet = TSet_val;
  mDHW60C = 0;

  //connect(prescribedHeatFlowCon.port, heatPortCon) annotation (Line(points={{-180,20},{-200,20}}, color={191,0,0}));
 // connect(prescribedHeatFlowRad.port, heatPortRad) annotation (Line(points={{-178,-20},{-200,-20}}, color={191,0,0}));
                                                                                    annotation (Placement(transformation(extent={{-158,-30},{-178,-10}})),
                                                                                                Placement(transformation(extent={{-160,10},{-180,30}})),
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end Occupant;
