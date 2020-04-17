within INFRAX.Data.Constructions;
record OuterWalls "INFRAX outer walls with override for U"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    nLay(min=1)=size(mats,1),
    incLastLay = IDEAS.Types.Tilt.Wall,
    mats={Data.Materials.Fiberboard(            d=0.022),
    Data.Insulation.Glasswool(            d=0.18),
    Data.Materials.Sandstone(            d=0.2),
    Data.Materials.Gypsum(            d=0.015)});
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
end OuterWalls;
