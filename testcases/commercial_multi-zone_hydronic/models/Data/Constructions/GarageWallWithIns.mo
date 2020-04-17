within INFRAX.Data.Constructions;
record GarageWallWithIns
  "INFRAX garage concrete walls with insulation for outer part"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    mats={Data.Materials.Concrete(            d=0.12),
          Data.Insulation.Xps(            d=0.12),
          Data.Materials.Concrete(            d=0.3)});
annotation (Documentation(info="<html>
<p>
Example implementation of a Thermally Activated Building System.
</p>
<ul>
<li>
November 14, 2016, by Filip Jorissen:<br/>
Revised implementation: removed insulationType.
</li>
</ul>
</html>"));
end GarageWallWithIns;
