within INFRAX.Data.Glazing;
record SGGCLIMAPLUSONE6dash15dash442 =
                IDEAS.Buildings.Data.Interfaces.Glazing (
    final nLay=3,
    final mats={IDEAS.Buildings.Data.Materials.Glass(
                                d=0.004, epsLw_a=0.04),
                IDEAS.Buildings.Data.Materials.Argon(
                                d=0.015),
                IDEAS.Buildings.Data.Materials.Glass(
                                d=0.00876)},
    final SwTrans=[0, 0.388;
                  10, 0.391;
                  20, 0.385;
                  30, 0.378;
                  40, 0.368;
                  50, 0.349;
                  60, 0.308;
                  70, 0.227;
                  80, 0.109;
                  90, 0.000],
    final SwAbs=[0, 0.114, 0.0, 0.083;
                10, 0.114, 0.0, 0.084;
                20, 0.116, 0.0, 0.090;
                30, 0.119, 0.0, 0.094;
                40, 0.124, 0.0, 0.095;
                50, 0.129, 0.0, 0.097;
                60, 0.134, 0.0, 0.105;
                70, 0.137, 0.0, 0.109;
                80, 0.131, 0.0, 0.078;
                90, 0.000, 0.0, 0.000],
    final SwTransDif=0.325,
    final SwAbsDif={0.125,0.0,0.095},
    final U_value=1.0,
    final g_value=0.49) "Saint Gobain SGG CLIMAPLUS ONE 6/15/442"
  annotation (Documentation(revisions="<html>
<ul>
<li>
September 2, 2015, by Filip Jorissen:<br/>
Moved epsLw definition to solid layer to be consistent 
with changed implementation of MultiLayerLucent.
</li>
</ul>
</html>", info="<html>
<p>
Double insulated glazing system with Argon filling.
</p>
</html>"));
