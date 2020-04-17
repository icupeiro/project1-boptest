within INFRAX.Data.Parameters;
record INFRAXTABS "INFRAX: CCA data"
  extends IDEAS.Fluid.HeatExchangers.RadiantSlab.BaseClasses.RadiantSlabChar(
      tabs = true,
      T = 0.15,
      d_a = 0.02,
      s_r = 0.0023,
      lambda_r = 0.35,
      S_1 = 0.31,
      S_2 = 0.06,
      lambda_b = 1.4,
      c_b = 840,
      rho_b = 2100);
   parameter Real m_flow_nominal_spe(unit="kg/(s.m2)") = 9.8 / 3600
    "Nominal mass flow rate per square meter floor heating, taken from hollandsch huys"; // * 3 is added to avoid having to split the TABS.

end INFRAXTABS;
