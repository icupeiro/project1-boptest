within INFRAX.Data.Constructions;
record Roof "INFRAX flat Roof"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    nLay(min=1)=size(mats,1),
    incLastLay = IDEAS.Types.Tilt.Ceiling,
    locGain(each min=1) = {4},
    mats={Data.Materials.Grind(            d=0.06),
    Data.Insulation.Pir26(            d=0.08),
    Data.Insulation.Pir23(            d=0.08),
    Data.Materials.Concrete(            d=0.21),
    Data.Materials.Concrete(          d=0.06),
    Data.Materials.Gypsum(            d=0.00)});
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
end Roof;
