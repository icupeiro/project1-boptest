within INFRAX.Data.Constructions;
record MidRoof "INFRAX mid-floor Roof"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    incLastLay = IDEAS.Types.Tilt.Ceiling,
    locGain(each min=1) = {5},
    mats={Data.Materials.Ground(      d=0.06),
    Data.Insulation.Perliet(            d=0.02),
    Data.Insulation.Pir23(            d=0.06),
    Data.Insulation.Pir23(            d=0.08),
    Data.Materials.Concrete(            d=0.31),
    Data.Materials.Concrete(            d=0.06),
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
end MidRoof;
