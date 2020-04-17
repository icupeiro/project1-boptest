within INFRAX.Data.Constructions;
record GlassWall "INFRAX glass walls"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    incLastLay = IDEAS.Types.Tilt.Wall,
    mats={IDEAS.Buildings.Data.Materials.Glass(d=0.006,epsLw_a=0.04),
    IDEAS.Buildings.Data.Materials.Air(d=0.016),
    IDEAS.Buildings.Data.Materials.Glass(d=0.006,epsLw_b=0.04)});
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
end GlassWall;
