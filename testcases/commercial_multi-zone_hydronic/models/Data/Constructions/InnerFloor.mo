within INFRAX.Data.Constructions;
record InnerFloor "INFRAX Inner Floors"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    nLay(min=1)=size(mats,1),
    incLastLay = IDEAS.Types.Tilt.Floor,
    locGain(each min=1) = {2},
    mats={Data.Materials.Gypsum(d=0.00),
    Data.Materials.Concrete(d=0.06),
    Data.Materials.Concrete(d=0.31),
    Data.Materials.Air(d=0.45),
    Data.Materials.ParticleBoard(d=0.03)});
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
end InnerFloor;
