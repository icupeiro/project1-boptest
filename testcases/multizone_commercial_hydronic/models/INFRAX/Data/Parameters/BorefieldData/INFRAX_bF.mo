within INFRAX.Data.Parameters.BorefieldData;
record INFRAX_bF
  "INFRAX borefield (38x94m doble U)"
  extends IBPSA.Fluid.Geothermal.Borefields.Data.Borefield.Template(
    conDat = INFRAX.Data.Parameters.BorefieldData.GeneralINFRAX(),
    soiDat = INFRAX.Data.Parameters.BorefieldData.SoilINFRAX(),
    filDat = INFRAX.Data.Parameters.BorefieldData.FillingINFRAX());

end INFRAX_bF;
