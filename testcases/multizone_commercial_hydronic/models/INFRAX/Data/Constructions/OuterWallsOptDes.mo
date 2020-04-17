within INFRAX.Data.Constructions;
record OuterWallsOptDes
  "INFRAX with prescribed U value"
  extends INFRAX.Data.Constructions.OuterWalls(mats={Data.Materials.Fiberboard(            d=0.022),
    Data.Insulation.Glasswool(            d=0.04/OptimalDesign.Constants.U),
    Data.Materials.Sandstone(            d=0.2),
    Data.Materials.Gypsum(            d=0.015)});
end OuterWallsOptDes;
