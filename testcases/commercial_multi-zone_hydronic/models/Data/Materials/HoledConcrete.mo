within INFRAX.Data.Materials;
record HoledConcrete =
                  IDEAS.Buildings.Data.Interfaces.Material (
    k=0.9,
    c=840,
    rho=1357.5,
    epsLw=0.88,
    epsSw=0.55) "Dense cast concrete, also for finishing" annotation (
    Documentation(info="<html>
<p>
Thermal properties of concrete.
</p>
</html>"));
