within INFRAX.SubSystems.BuildingEnvelope;
model EnvelopeSim
  extends Envelope(
    redeclare Floor3.Floor3Sim floor3,
    redeclare Floor2.Floor2Sim floor2,
    redeclare Floor1.Floor1Sim floor1,
    redeclare Floor0.Floor0Sim floor0,
    westStairs(nPorts=2),
    eastStairs(nPorts=2));
end EnvelopeSim;
