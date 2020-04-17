within INFRAX.Data.Parameters;
record Hydronic "Hydronic System Data"
  extends Modelica.Icons.Record;
  //Media

  //Time constants
  parameter Modelica.SIunits.Time sensorTau = 60;

  //Flow rates
  parameter Modelica.SIunits.MassFlowRate sink_m_flow = p06_m_flow + p07_m_flow + p08_m_flow + p10_m_flow;
  parameter Modelica.SIunits.MassFlowRate source_m_flow = 38000/3600;
  //TABS flow rates and pressure drops
  // 3rdFlr

  parameter Modelica.SIunits.MassFlowRate m_flow_3rdFlr[4] = {5140, 740/3, 740/3, 740/3}/3600;
  parameter Modelica.SIunits.PressureDifference dp_nominal_3rdFlr[4] = 20000*ones(4);
  // 2ndFlr

  // collector 1 and 4: south zone (2nd index)
  // collector 3: meetingrooms 980l/h (3rd and 4th index) and part of north zone
  parameter Modelica.SIunits.MassFlowRate m_flow_2ndFlr[7] = {980/4, 1520+890, 980*3/8, 980*3/8, 730/3, 730/3, 730/3}/3600;
  parameter Modelica.SIunits.PressureDifference dp_nominal_2ndFlr[7]= 40000*ones(7);
  // 1stFlr

  parameter Modelica.SIunits.MassFlowRate m_flow_1stFlr[9] = {785, 1085/3, 1560, 945/2, 945/2, 830*3/5, 830/5, 830/5, 1085*2/3}/3600;
  parameter Modelica.SIunits.PressureDifference dp_nominal_1stFlr[9]= 40000*ones(9);
  // GndFlr
  // collector 3: server room and storage room: 50/50 of 740 l/h
  // 5+6+7 = kitchen
  parameter Modelica.SIunits.MassFlowRate m_flow_GndFlr[15] = {1570*2/9, 515, 1030, 1030, 1570/3, 1030/6, 1030/6, 1030/6, 740/2, 1030/6, 740/2, 705, 1570*4/9, 1030/6, 1030/6}/3600;
  parameter Modelica.SIunits.PressureDifference dp_nominal_GndFlr[15] = 40000*ones(15);

  //Ratio massflow
  parameter Real ratio_mflow_TABS[35] = (cat(1, m_flow_3rdFlr, m_flow_2ndFlr, m_flow_1stFlr, m_flow_GndFlr))/p07_m_flow;

  //Hydraulic pumps nominal mass flow rates
  parameter Modelica.SIunits.MassFlowRate p01_m_flow = 38000/3600 "mass flow rate of hydraulic pump p01";
  parameter Modelica.SIunits.MassFlowRate p02_m_flow = 38000/3600 "mass flow rate of hydraulic pump p02";
  parameter Modelica.SIunits.MassFlowRate p03_m_flow = 24000/3600 "mass flow rate of hydraulic pump p03";
  parameter Modelica.SIunits.MassFlowRate p04_m_flow = 28300/3600 "mass flow rate of hydraulic pump p04";
  parameter Modelica.SIunits.MassFlowRate p05_m_flow = 21000/3600 "mass flow rate of hydraulic pump p05";
  parameter Modelica.SIunits.MassFlowRate p06_m_flow = 9800/3600 "mass flow rate of hydraulic pump p06";
  parameter Modelica.SIunits.MassFlowRate[21] p06_m_flow_dist = {0.32, 0.03, 0.06, 0.06, 0.07, 0.28, 0.06, 0.06, 0.11, 0.08, 0.16, 0.06, 0.06, 0.01, 0.02, 0.61, 0.18, 0.32, (0.03+0.09), 0.02, 0.02};
  parameter Modelica.SIunits.MassFlowRate p07_m_flow = 19400/3600 "mass flow rate of hydraulic pump p07";
  parameter Modelica.SIunits.MassFlowRate p08_m_flow = 7300/3600 "mass flow rate of hydraulic pump p08";
  parameter Modelica.SIunits.MassFlowRate p09_m_flow = 7950/3600 "mass flow rate of hydraulic pump p09";
  parameter Modelica.SIunits.MassFlowRate p10_m_flow = 24000/3600 "mass flow rate of hydraulic pump p10";
  parameter Modelica.SIunits.MassFlowRate p11_m_flow = 30000/3600 "mass flow rate of hydraulic pump p11";
  parameter Modelica.SIunits.MassFlowRate p12_m_flow = 5730/3600 "mass flow rate of hydraulic pump p12";
  parameter Modelica.SIunits.MassFlowRate p13_m_flow = 17000/3600 "mass flow rate of hydraulic pump p13";
  parameter Modelica.SIunits.MassFlowRate p14_m_flow = 5730/3600 "mass flow rate of hydraulic pump p14";

  //Buffer tank data
  parameter Modelica.SIunits.Volume VolTank = 2500/1000 "buffer tank volume";
  parameter Modelica.SIunits.Height HeightTank = 2275/1000 "buffer tank height";
  parameter Modelica.SIunits.CoefficientOfHeatTransfer UTank = 0.026/0.04 "U coefficient, U=k/d";

  //106kW Cooling H-ex
  parameter Modelica.SIunits.CoefficientOfHeatTransfer U_Cool_Hex = 5302 "OHTC service";
  parameter Modelica.SIunits.Area A_Cool_Hex = 27.8 "heat transfer area";
  parameter Modelica.SIunits.PressureDifference dp_water_Cool_Hex = 48.7*1000 "pressure drop on water side";
  parameter Modelica.SIunits.PressureDifference dp_glycol_Cool_Hex = 49.3*1000 "pressure drop on glycol side";

  //90kW Passive Cooling H-ex
  parameter Modelica.SIunits.CoefficientOfHeatTransfer U_PassiveCool_Hex = 5724 "OHTC service";
  parameter Modelica.SIunits.Area A_PassiveCool_Hex = 31.4 "heat transfer area";
  parameter Modelica.SIunits.PressureDifference dp_water_PassiveCool_Hex = 40.1*1000 "pressure drop on water side";
  parameter Modelica.SIunits.PressureDifference dp_glycol_PassiveCool_Hex = 53.2*1000 "pressure drop on glycol side";

  INFRAXTABS iNFRAXTABS
    annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
  Structure structure
    annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Hydronic;
