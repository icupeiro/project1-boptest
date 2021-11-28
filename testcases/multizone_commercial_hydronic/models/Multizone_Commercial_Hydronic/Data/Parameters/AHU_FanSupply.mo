within Multizone_Commercial_Hydronic.Data.Parameters;
record AHU_FanSupply
  extends IDEAS.Fluid.Movers.Data.Generic(
    speed_rpm_nominal=2500,
    use_powerCharacteristic = false,
    motorEfficiency(V_flow={2},eta={0.95*0.87*0.94}),
    hydraulicEfficiency(V_flow={2.4, 2.65, 3, 3.4, 3.65, 4, 4.35},
          eta={0.80, 0.81, 0.80, 0.75, 0.70, 0.60, 0.40}),
    pressure(V_flow={2, 2.5, 3, 3.5, 4, 4.3, 4.5},
          dp={1600,  1500, 1300, 1000, 700, 400, 200}));
  annotation (
defaultComponentPrefixes="parameter",
defaultComponentName="per",
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end AHU_FanSupply;
