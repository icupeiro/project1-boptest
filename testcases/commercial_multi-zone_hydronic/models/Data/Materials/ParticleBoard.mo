within INFRAX.Data.Materials;
record ParticleBoard =
                 IDEAS.Buildings.Data.Interfaces.Material (
    k=0.12,
    c=1300,
    rho=640,
    epsLw=0.86,
    epsSw=0.44) "Particle Board finishing"
                                     annotation (Documentation(info="<html>
<p>
Thermal properties of plywood.
</p>
</html>"));
