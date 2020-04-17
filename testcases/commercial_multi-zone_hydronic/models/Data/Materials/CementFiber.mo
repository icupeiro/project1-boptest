within INFRAX.Data.Materials;
record CementFiber =
                IDEAS.Buildings.Data.Interfaces.Material (
    k=0.9,
    c=1000,
    rho=1800,
    epsLw=0.88,
    epsSw=0.55) "fiber cement facade panels"
                                      annotation (Documentation(info="<html>
<p>
Thermal properties of screed.
</p>
</html>"));
