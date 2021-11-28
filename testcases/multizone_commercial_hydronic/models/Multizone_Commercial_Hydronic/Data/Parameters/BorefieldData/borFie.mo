within Multizone_Commercial_Hydronic.Data.Parameters.BorefieldData;
record borFie
  "INFRAX borefield (38x94m doble U)"
  extends IBPSA.Fluid.Geothermal.Borefields.Data.Borefield.Template(
    conDat = Multizone_Commercial_Hydronic.Data.Parameters.BorefieldData.General(),
    soiDat = Multizone_Commercial_Hydronic.Data.Parameters.BorefieldData.Soil(),
    filDat = Multizone_Commercial_Hydronic.Data.Parameters.BorefieldData.Filling());
end borFie;
