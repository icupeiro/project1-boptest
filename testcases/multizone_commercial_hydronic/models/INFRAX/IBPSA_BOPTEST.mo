within INFRAX;
model IBPSA_BOPTEST
  extends Main(redeclare SubSystems.VentilationSystem.VentilationSystemSim
      venSys, redeclare SubSystems.HeatingSystem.HeatingSystem    heaSys,
    redeclare SubSystems.BuildingEnvelope.EnvelopeSim buiEnv(T_start=296.65),
    buiOcc(startYear=2010, startDay=5));
  annotation (
    experiment(
      StopTime=31536000,
      Interval=3600,
      Tolerance=1e-06,
      __Dymola_fixedstepsize=15,
      __Dymola_Algorithm="Euler"),
    __Dymola_experimentSetupOutput(events=false),
    __Dymola_experimentFlags(Advanced(
        InlineMethod=0,
        InlineOrder=2,
        InlineFixedStep=0.001)));
end IBPSA_BOPTEST;
