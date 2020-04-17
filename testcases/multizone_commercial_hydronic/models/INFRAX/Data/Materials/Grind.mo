within INFRAX.Data.Materials;
record Grind =  IDEAS.Buildings.Data.Interfaces.Material (
    k=1.21,
    c=920,
    rho=1700,
    epsLw=0.88,
    epsSw=0.68) annotation (Documentation(info="<html>
<p>
Thermal properties of ground/soil.
</p>
</html>"));
