within INFRAX.Data.Parameters.BorefieldData;
record SoilINFRAX "Soil properties for INFRAX borefield"
    extends
    IBPSA.Fluid.Geothermal.Borefields.Data.Soil.Template(
    kSoi=1.3,
    dSoi=1358.4,
    cSoi=980);
    // k and c extracted from EED data
    // calculation of d based on soil profile from smartgeotherm project tool
    // density data extracted from structx.com/Soil_Properties_002.html [kg/m3]
    // 4.5m of loam (4.5) d=1430
    // 15m of clay sand (19.5) = 1470
    // 1.2m of loam (20.7) d=1430
    // 73.3m of clay (94) d= 1330 (note: goes down to 98m)
    // d = 1358.4
end SoilINFRAX;
