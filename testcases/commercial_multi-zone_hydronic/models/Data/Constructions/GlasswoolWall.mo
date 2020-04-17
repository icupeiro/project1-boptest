within INFRAX.Data.Constructions;
record GlasswoolWall "INFRAX glasswool walls"
  extends IDEAS.Buildings.Data.Interfaces.Construction(
    incLastLay = IDEAS.Types.Tilt.Wall,
    mats={Data.Materials.Glass(            d=0.01),
    Data.Insulation.Glasswool(            d=0.2),
    Data.Materials.Fiberboard(           d=0.01)});
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
end GlasswoolWall;
