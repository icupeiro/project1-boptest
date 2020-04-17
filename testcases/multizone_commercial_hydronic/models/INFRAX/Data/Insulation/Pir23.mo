within INFRAX.Data.Insulation;
record Pir23=IDEAS.Buildings.Data.Interfaces.Insulation (
    k=0.023,
    c=1400,
    rho=30) "Polyisocyanuraat foam, PIR" annotation (Documentation(info="<html>
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
