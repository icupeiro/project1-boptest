within INFRAX.Data.Parameters;
record INFRAX_AHU_Fans "record for fans in INFRAX AHU"
  extends IDEAS.Fluid.Movers.Data.Generic(
    speed_rpm_nominal=2000,
    use_powerCharacteristic = false,
    motorEfficiency(V_flow={2},eta={0.95*0.87*0.94}),
    hydraulicEfficiency(V_flow={1.9, 2.1, 2.3, 2.7, 2.85, 3.15, 3.5},
          eta={0.80, 0.81, 0.80, 0.75, 0.70, 0.60, 0.40}),
    pressure(V_flow={1.5, 2.5, 3.1, 3.5},
          dp={1000, 800, 500, 200}));

  annotation (
defaultComponentPrefixes="parameter",
defaultComponentName="per",
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end INFRAX_AHU_Fans;
