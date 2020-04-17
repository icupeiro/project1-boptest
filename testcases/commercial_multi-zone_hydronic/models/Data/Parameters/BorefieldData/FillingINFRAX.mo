within INFRAX.Data.Parameters.BorefieldData;
record FillingINFRAX "Filling data for INFRAX bore field"
    extends
    IBPSA.Fluid.Geothermal.Borefields.Data.Filling.Template(
    kFil=2.35,
    dFil=1225,
    cFil=1550);

    //On 200L grout is the borehole filling composition
    //- 25 kg blast furnace cement
    //- 15 kg bentonite cement stable
    //- 80 kg of quartz sand (30 micr.)
    //- 125 l of water (125kg)
    //density is 245kg/200l = 1225kg/m3
    //k is extracted from EED data
end FillingINFRAX;
