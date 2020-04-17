within INFRAX.Data.Parameters;
record Air "parameters for air system"
  extends Modelica.Icons.Record;
  //VAV and ducts - supply
  //Values are taken from commisioning tests when possible, otherwise nominal values are used
  parameter Modelica.SIunits.MassFlowRate m_nominal_supply_duct[7] = {167, 100, 50, 450, 150, 90, 70}*1.225/3600;
  //1 MTR_3rdFlr, 2 Server Room, 3 EHBO, 4 hall, 5 reception, 6 westStairs, 7 eastStairs
  parameter Modelica.SIunits.MassFlowRate m_nominal_supply_vav[15] = {1664.33333333333, 298, 300, 330, 1321, 377, 365, 531, 392, 913, 386, 347, 3307.5, 970, 1613}*1.225/3600;
  parameter Modelica.SIunits.MassFlowRate m_nominal_supply_vav_min[15] = {650, 0, 0, 330, 550, 0, 0, 0, 0, 650, 0, 0, 200, 0, 0}*1.225/3600; //minimum value for some of the VAVs, NZ with fixed value (PID)
  parameter Real heaDamper[15] = {0, 0.5, 0.3, 1, 0.2, 0.2, 0.2, 1, 1, 0.25, 0.05, 0.05, 0.5, 0.4, 0.25}; //damper position under heating demand
  parameter Modelica.SIunits.TemperatureDifference openHea[21] = {-1, -2, -2, -2, -1.2, -2, -2, -1, -0.5, 0, -2, -2, -0.3, -0.5, -0.5, -1, -1, -1, -1, -1, -1}; //value which activates heating coil demand in ducts with VAV
  parameter Modelica.SIunits.TemperatureDifference closeHea[21] = {-0.5, -1.2, -1.2, -1.2, 1.3, -1.2, -1.2, 0, 0.5, 1.5, -1.2, 0, -0.2, 0.5, 0.5, -0.5, 0.5, 0.5, 0.5, 0.5, 0.5}; //value which deactivates heating coil demand in ducts with VAV
  parameter Modelica.SIunits.Temperature openCoo[15] = {1, 1.5, 1.5, 100, 1.5, 1.5, 1.5, 100, 1.5, 1.5, 1.3, 1.3, 1.5, 2, 1}; //parameter which activates vav cooling flow demand in ducts with VAV
  parameter Modelica.SIunits.Temperature closeCoo[15] = {0.5, 1.3, 1.3, 100, 1.3, 1.3, 1.3, 100, 1.3, 1.3, 1.3, 1.3, 1.3, -0.5, -1}; //parameter which deactivates vav cooling flow demand in ducts with VAV
  //1 SZ_3rdFlr, 2 CPR_3rdFlr, 3 SmaR_3rdFlr, 4 NZ_2ndFlr, 5 SZ_2ndFlr, 6 MT1_2ndFlr, 7 MT2_2ndFlr,
  //8 NZ_1stFlr, 9 SZ1_1stFlr, 10 SZ2_1stFlr, 11 MT1_1stFlr, 12 MT2_1stFlr, 13 KT_GndFlr, 14 MT1_GndFlr, 15 MT2_GndFlr

  //VAV and ducts - extract
  //Values are taken from commisioning tests when possible, otherwise nominal values are used
  parameter Modelica.SIunits.MassFlowRate m_nominal_extract_duct[10] = {150, 200, 200, 100, 50, 250, 150, 100, 90, 70}*1.225/3600;
  //1 MTR_3rdFlr, 2 CPR_3rdFlr, 3 SmaR_3rdFlr, 4 server room, 5 EHBO, 6 storage room, 7 hall, 8 reception,  9 westStairs, 10 eastStairs
  parameter Modelica.SIunits.MassFlowRate m_nominal_extract_vav[14] = {862, 370, 250, 338, 1065, 284, 260, 492, 966.5, 309, 265, 2850, 982, 1600}*1.225/3600;
  parameter Modelica.SIunits.MassFlowRate m_nominal_extract_vav_min[14] = {0, 0, 0, 0, 300, 0, 0, 0, 300, 0, 0, 0, 0, 0}*1.225/3600; //minimum value for some of the VAVs
  //1 SZ_3rdFlr, 2 CPR_3rdFlr, 3 SmaR_3rdFlr, 4 NZ_2ndFlr, 5 SZ_2ndFlr, 6 MT1_2ndFlr, 7 MT2_2ndFlr,
  //8 NZ_1stFlr, 9 SZ2_1stFlr, 10 MT1_1stFlr, 11 MT2_1stFlr, 12 KT_GndFlr, 13 MT1_GndFlr, 14 MT2_GndFlr

  //Air heating coils
  //Code: 1 SZ_3rdFlr, 2 CPR_3rdFlr, 3 MTR_3rdFlr, 4 SmaR_3rdFlr, 5 NZ_2ndFlr, 6 SZ_2ndFlr, 7 MT1_2ndFlr, 8 MT2_2ndFlr,
  // 9 NZ_1stFlr, 10 SZ1_1stFlr, 11 SZ2_1stFlr, 12 MT1_1stFlr, 13 MT2_1stFlr, 14 reception, 15 EHBO, 16 KT, 17 MT1, 18 MT2,
  // 19 hall, 20 westStairs, 21 eastStairs
  parameter Modelica.SIunits.Pressure dp_water[21] = {18000, 2000, 3000, 2000, 5000, 13000, 2000, 2000, 8000, 5000, 5000, 2000, 2000, 3000, 3000, 8000, 6000, 17000, 5000, 1000, 1000}; //heating coils pressure drop on water side
  parameter Modelica.SIunits.MassFlowRate m_nominal_water[21] = {0.32, 0.06, 0.03, 0.06, 0.07, 0.28, 0.06, 0.06, 0.11, 0.08, 0.16, 0.06, 0.06, 0.03, 0.01, 0.61, 0.18, 0.32, 0.09, 0.02, 0.02}; //nominal mass flow on water side
  //parameter Modelica.SIunits.MassFlowRate m_nominal_water2[21] = {0.325, 0.061111, 0.030556, 0.061111, 0.072222, 0.283333, 0.061111, 0.061111, 0.111111, 0.080556, 0.161111, 0.061111, 0.061111, 0.030556, 0.011111, 0.65, 0.183333, 0.325, 0.091667, 0.013889, 0.013389}; //nominal mass flow on water side
  parameter Modelica.SIunits.MassFlowRate m_nominal_air[21] = {1664.33333333333, 298, 167, 300, 330, 1321, 377, 365, 531, 392, 913, 386, 347, 150, 50, 3307.5, 970, 1613, 450, 70, 70}*1.225/3600; //nominal mass flow rate on air side;
  parameter Modelica.SIunits.Power Q_nominal[21] = {5440, 1020, 510, 1020, 1190, 4760, 1020, 1020, 1870, 1360, 2720, 1020, 1020, 510, 170, 10880, 3060, 5440, 1530, 238, 238}; //power of the heating coils
  parameter Real R[21] = {100, 50, 50, 50, 50, 100, 50, 50, 50, 50, 100, 50, 50, 50, 50, 100, 100, 100, 50, 50, 50}; //rangeability
  parameter Modelica.SIunits.Pressure dp_3wayvalves[21] = {31000, 3970, 13000, 3970, 5410, 24000, 3970, 3970, 12380, 7070, 7680, 3970, 3970, 13000, 1480, 13360, 9720, 31000, 8940, 1480, 1480};
  parameter Real Kv[21] = (m_nominal_water.*(3600/1000))./(sqrt(dp_3wayvalves./100000)); //Kv value for 3 way valves
  parameter Real real_m_nominal_water[21] = {0.32, 0.06, 0.03, 0.06, 0.07, 0.28, 0.06, 0.06, 0.11, 0.08, 0.16, 0.06, 0.06, 0.03, 0.03, 0.61, 0.18, 0.32, 0.09, 0.02, 0.02};
  parameter Modelica.SIunits.Pressure dp_fixed_supply[21] = {3300, 6600, 6800, 6400, 6100, 3000, 5700, 5900, 5400, 3500, 3700, 5000, 5200, 2600, 3200, 8800, 3300, 4200, 3600, 8600, 2900};
  parameter Modelica.SIunits.Pressure dp_fixed_return[21] = {3900, 43700, 31400, 43900, 39700, 16200, 44500, 44300, 30500, 40700, 39900, 45300, 45100, 35600, 50500, 26000, 37200, 3000, 38700, 45100, 50800};
  parameter Modelica.SIunits.Temperature TWatSup_nominal = 273.15 + 32;
  parameter Modelica.SIunits.Temperature TWatRet_nominal = 273.15 + 28;
  parameter Modelica.SIunits.Temperature TAirSup_nominal = 273.15 + 15;
  parameter Modelica.SIunits.Temperature TAirRet_nominal = 273.15 + 25;

  parameter Real k[21] = {2, 2, 2, 2, 2, 2, 2, 5, 10, 5, 2, 2, 2, 5, 5, 2, 2, 2, 2, 2, 2};
  parameter Modelica.SIunits.Time[21] Ti = {100, 100, 100, 100, 100, 100, 100, 100, 120, 60, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100};

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Air;
