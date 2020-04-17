within INFRAX.Data.Constructions;
record Floor "INFRAX groundfloor Floor"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    nLay(min=1)=size(mats,1),
    incLastLay = IDEAS.Types.Tilt.Floor,
    mats={Data.Insulation.Woodwool(            d=0.02),
    Data.Insulation.Pir23(            d=0.08),
    Data.Materials.HoledConcrete(            d=0.32),
    Data.Materials.Screed(            d=0.05),
    Data.Materials.Air(            d=0.55),
    Data.Materials.Silicate(            d=0.038),
    Data.Materials.Tile(            d=0.012)});
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
end Floor;
