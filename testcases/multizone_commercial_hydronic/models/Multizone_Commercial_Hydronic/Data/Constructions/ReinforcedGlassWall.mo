within Multizone_Commercial_Hydronic.Data.Constructions;
record ReinforcedGlassWall "INFRAX glass walls reinforced with wood"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    incLastLay = IDEAS.Types.Tilt.Wall,
    mats={Data.Materials.Timber(            d=0.02),
    Data.Materials.Glass(            d=0.00)});
  //  nLay(min=1)=size(mats,1),
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
end ReinforcedGlassWall;
