within INFRAX.Data.Constructions;
record Slab "INFRAX Slab"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    incLastLay = IDEAS.Types.Tilt.Floor,
    mats={Data.Materials.Concrete(            d=0.05),
    Data.Materials.Concrete(            d=0.3),
    Data.Materials.Screed(            d=0.1)});
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
end Slab;
