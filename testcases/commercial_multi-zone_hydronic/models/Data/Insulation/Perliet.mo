within INFRAX.Data.Insulation;
record Perliet =
             IDEAS.Buildings.Data.Interfaces.Insulation (
    k=0.065,
    c=387,
    rho=2300) "Perliet insulation" annotation (Documentation(info="<html>
<p>
Polyisocyanurate (PIR) insulation thermal properties.
</p>
</html>", revisions="<html>
<ul>
<li>
November 15, 2016, by Filip Jorissen:<br/>
Revised documentation for IDEAS 1.0.
</li>
</ul>
</html>"));
