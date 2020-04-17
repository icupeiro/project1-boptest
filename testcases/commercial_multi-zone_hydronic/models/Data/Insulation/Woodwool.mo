within INFRAX.Data.Insulation;
record Woodwool =  IDEAS.Buildings.Data.Interfaces.Insulation (
    k=0.080,
    c=2100,
    rho=450) "Woodwool"  annotation (Documentation(info="<html>
<p>
Glass wool insulation thermal properties.
</p>
</html>", revisions="<html>
<ul>
<li>
November 15, 2016, by Filip Jorissen:<br/>
Revised documentation for IDEAS 1.0.
</li>
</ul>
</html>"));
