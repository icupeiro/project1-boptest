within INFRAX.SubSystems.Occupancy;
model Appliances
  "this is a model to estimate the appliances in Infrax (computers, screens, copiers...)"

  // {9,0,8,0,0,7,7,6,6,0,5,5,5,4,4,0,0,0,0,1,2,3,0,0,0,0,0}

  parameter Modelica.SIunits.HeatFlowRate OpePC = 75
  "Heat flow produced by a operating computer";
  parameter Modelica.SIunits.HeatFlowRate StaPC = 30
  "Heat flow produced by a stand-by computer";
  parameter Modelica.SIunits.HeatFlowRate OpeMon = 80
  "Heat flow produced by a operating monitor";
  parameter Modelica.SIunits.HeatFlowRate StaMon = 0
  "Heat flow produced by a stand-by monitor";
  parameter Modelica.SIunits.HeatFlowRate IdlOffCop = 300
  "Heat flow produced by a office copier (idle)";
  parameter Modelica.SIunits.HeatFlowRate IdlDesCop = 20
  "Heat flow produced by a desktop copier (idle)";
  parameter Modelica.SIunits.HeatFlowRate IdlOffPrt = 125
  "Heat flow produced by a office printer (idle)";
  parameter Modelica.SIunits.HeatFlowRate IdlDesPrt = 35
  "Heat flow produced by a desktop printer (idle)";
  parameter Modelica.SIunits.HeatFlowRate prjScr = 150
  "Heat flow produced by a projector screen";

  parameter Modelica.SIunits.HeatFlowRate micWav = 750
  "Heat flow produced by a microwave";
  parameter Modelica.SIunits.HeatFlowRate SouCoo = 120
  "Heat flow produced by a soup cooker";
  parameter Modelica.SIunits.HeatFlowRate CofMch = 450
  "Heat flow produced by a coffee machine";
  parameter Modelica.SIunits.HeatFlowRate WatCoo = 350
  "Heat flow produced by a water cooler";
  parameter Modelica.SIunits.HeatFlowRate dishWash = 350
  "Heat flow produced by a dishwasher";
  parameter Modelica.SIunits.HeatFlowRate srvUnit = 800
  "Heat flow produced by the servers";
  parameter Modelica.SIunits.HeatFlowRate fridge = 400
  "Heat flow produced by a fridge";


  parameter Real fraRad = 0.3
  "radiant heat transfer fraction for computer+monitor and copier";


//3rd Floor

//Bathroom and small room -- no internal gains



  Real AppGains[27];

  Modelica.Blocks.Interfaces.RealInput[27] nOcc
  "Occupant number input for different zones"
    annotation (Placement(
        transformation(
        extent={{20,-20},{-20,20}},
        rotation=90,
        origin={30,100})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a[27] conv
  "Heat port for convective heat transfer"
    annotation (Placement(transformation(extent={{90,10},{110,30}})));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a[27] rad
  "Heat port for radiative heat transfer"
    annotation (Placement(transformation(extent={{90,-30},{110,-10}})));
  Modelica.Blocks.Sources.RealExpression appliances[27](y=AppGains)
    annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
  Modelica.Blocks.Math.Gain gainCon[27](k=1 - fraRad)
    annotation (Placement(transformation(extent={{-4,10},{16,30}})));
  Modelica.Blocks.Math.Gain gainRad[27](k=fraRad)
    annotation (Placement(transformation(extent={{-2,-30},{18,-10}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heaCon[27]
    annotation (Placement(transformation(extent={{40,10},{60,30}})));
  Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow heaRad[27]
    annotation (Placement(transformation(extent={{42,-30},{62,-10}})));
equation
  AppGains[1] = nOcc[1]*(OpePC + 2*OpeMon) + (17-nOcc[1])*(StaPC + 2*StaMon)+(CofMch+dishWash+WatCoo)*min(1,nOcc[1]);
  AppGains[2] = (IdlOffPrt+IdlOffCop)*min(1,nOcc[1]);
  AppGains[3] = nOcc[3]*(OpePC)+ (OpePC+OpeMon)*min(1,nOcc[3])+(StaPC+StaMon)*(1-min(1,nOcc[3]));
  AppGains[4] = StaPC+StaMon;
  AppGains[5] = 0;
  AppGains[6] = nOcc[6]*2/3*(OpePC + OpeMon) + 2/3*(17-nOcc[6])*(StaPC + StaMon);
  AppGains[7] = nOcc[7]*1/3*(OpePC+OpeMon) + 1/3*(17-nOcc[7])*(StaPC + StaMon)+IdlOffCop+(CofMch+dishWash+WatCoo)*min(1,nOcc[7]);
  AppGains[8] = nOcc[8]*(OpePC);
  AppGains[9] = nOcc[9]*(OpePC)+(OpePC+OpeMon)*min(1,nOcc[9])+(StaPC+StaMon)*(1-min(1,nOcc[9]));
  AppGains[10] = 0;
  AppGains[11] = nOcc[11]/3*(OpePC + OpeMon) + 1/3*(17-nOcc[11])*(StaPC + StaMon);
  AppGains[12] = nOcc[12]/3*(OpePC + OpeMon) + 1/3*(17-nOcc[12])*(StaPC + StaMon);
  AppGains[13] = nOcc[13]/3*(OpePC + OpeMon) + 1/3*(17-nOcc[13])*(StaPC + StaMon);
  AppGains[14] = nOcc[14]*(OpePC);
  AppGains[15] = nOcc[15]*(OpePC)+(OpePC+OpeMon)*min(1,nOcc[15])+(StaPC+StaMon)*(1-min(1,nOcc[15]));
  AppGains[16] = (CofMch+dishWash+WatCoo)*min(1,nOcc[11]);
  AppGains[17] = 0;
  AppGains[18] = srvUnit;
  AppGains[19] = 0;
  AppGains[20] = (micWav + 2*SouCoo + CofMch + dishWash)*min(1,nOcc[20])+fridge;
  AppGains[21] = nOcc[21]*(OpePC)+(prjScr)*min(1,nOcc[21]);
  AppGains[22] = nOcc[22]*(OpePC)+(prjScr)*min(1,nOcc[22]);
  AppGains[23] = 0;
  AppGains[24] = 0;
  AppGains[25] = 0;
  AppGains[26] = 0;
  AppGains[27] = 0;

  connect(heaCon.port, conv)
    annotation (Line(points={{60,20},{100,20}}, color={191,0,0}));
  connect(heaRad.port, rad)
    annotation (Line(points={{62,-20},{100,-20}}, color={191,0,0}));
  connect(heaRad.Q_flow, gainRad.y)
    annotation (Line(points={{42,-20},{19,-20}}, color={0,0,127}));
  connect(heaCon.Q_flow, gainCon.y)
    annotation (Line(points={{40,20},{17,20}}, color={0,0,127}));
  connect(appliances.y, gainCon.u) annotation (Line(points={{-39,0},{-22,0},{-22,
          20},{-6,20}}, color={0,0,127}));
  connect(appliances.y, gainRad.u) annotation (Line(points={{-39,0},{-22,0},{-22,
          -20},{-4,-20}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
        Rectangle(
          extent={{-100,100},{100,-100}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-56,66},{62,-26}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.None),
        Rectangle(
          extent={{-46,58},{52,-18}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.None),
        Rectangle(
          extent={{-74,-26},{86,-76}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.None),
        Rectangle(
          extent={{-70,-30},{82,-72}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.None),
        Text(
          extent={{-28,42},{36,2}},
          lineColor={28,108,200},
          fillColor={255,255,255},
          fillPattern=FillPattern.None,
          textString="PC")}),                                    Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Appliances;
