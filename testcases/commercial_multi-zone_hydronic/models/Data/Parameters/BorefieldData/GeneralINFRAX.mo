within INFRAX.Data.Parameters.BorefieldData;
record GeneralINFRAX
  "INFRAX parameters of the geometrical configuration of the borefield"
    extends
    IBPSA.Fluid.Geothermal.Borefields.Data.Configuration.Template(
    borCon = IBPSA.Fluid.Geothermal.Borefields.Types.BoreholeConfiguration.DoubleUTubeParallel,
    nBor=37,
    cooBor={{3, 0},{9, 0},{15, 0},{21, 0},{27, 0},{33, 0},{39, 0},{45, 0},{51, 0},
           {0, sqrt(27)},{6, sqrt(27)},{12, sqrt(27)},{18, sqrt(27)},{24, sqrt(27)},{36, sqrt(27)},{42, sqrt(27)},{48, sqrt(27)},{54, sqrt(27)},
           {3, 2*sqrt(27)},{9, 2*sqrt(27)},{15, 2*sqrt(27)},{21, 2*sqrt(27)},{27, 2*sqrt(27)},{33, 2*sqrt(27)},{39, 2*sqrt(27)},{45, 2*sqrt(27)},{51, 2*sqrt(27)},
           {48, 3*sqrt(27)},{51, 4*sqrt(27)},{48, 5*sqrt(27)},{51, 6*sqrt(27)},{48, 7*sqrt(27)},{51, 8*sqrt(27)},{48, 9*sqrt(27)},{51, 10*sqrt(27)},{48, 11*sqrt(27)},{51, 12*sqrt(27)}},
    mBor_flow_nominal=10.55/37,
    hBor=94.0,
    rBor=0.15/2,
    rTub=0.032/2,
    kTub=0.42,
    eTub=0.003,
    dBor=1.0,
    xC=0.085/2,
    dp_nominal=28500,
    use_Rb=false,
    Rb=0.094);

                //assumed parameter
                 //k for HDPE
                     //Assumming Double U is placed in center of BH
                 //Thermal conductivity of HPDE
                         // data sheet
                 // building plans
                               //building plans                                                                                                    //undeep boreholes
                                                                                                    //deep boreholes
                 // data sheet
               // external sources
                 // data sheet
                  // assuming pipe is symmetrically spaced
end GeneralINFRAX;
