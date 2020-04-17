within INFRAX.Data.Materials;
record Sandstone =IDEAS.Buildings.Data.Interfaces.Material (
    k=0.97,
    c=840,
    rho=2000,
    epsLw=0.88,
    epsSw=0.67) "sandstone blocks"                        annotation (
    Documentation(info="<html>
<p>
Thermal properties of concrete.
</p>
</html>"));
