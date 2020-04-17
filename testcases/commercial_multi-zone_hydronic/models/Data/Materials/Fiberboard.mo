within INFRAX.Data.Materials;
record Fiberboard =
                 IDEAS.Buildings.Data.Interfaces.Material (
    k=0.048,
    c=2068,
    rho=270,
    epsLw=0.74,
    epsSw=0.85) "Board of treated wood against weather"
                                     annotation (Documentation(info="<html>
<p>
Thermal properties of plywood.
</p>
</html>"));
