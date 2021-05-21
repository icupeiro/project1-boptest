within Multizone_Commercial_Hydronic.SubSystems.VentilationSystem.Components.Dependencies;
partial model PartialAHU "air handling unit of INFRAX"

  replaceable package MediumAir = IDEAS.Media.Air;
  replaceable package MediumHeaCoi = IDEAS.Media.Water;
  replaceable package MediumCooCoi = IDEAS.Media.Water;

    extends IDEAS.Fluid.Interfaces.PartialFourPortInterface(redeclare final
      package Medium1 =                                                                     MediumAir,redeclare
      final package Medium2 =                                                                                                     MediumAir,
    final m1_flow_nominal = mFlowAirRet_nominal, final m2_flow_nominal = mFlowAirSup_nominal);

  parameter Modelica.SIunits.Time tau = 200 "Time constant of components";
  parameter Modelica.SIunits.Time tauWater = 200;
  parameter Modelica.SIunits.Time tauAir = 200;
  parameter Modelica.SIunits.Time tauSensor = 200;
  parameter Modelica.SIunits.Time tauLoss = 3600*8
    "Time constant of heat losses to environment";

  parameter Modelica.SIunits.MassFlowRate mFlowAirSup_nominal
    "Nominal mass flow rate for supply air"
    annotation(Dialog(tab="General", group="Nominal mass flow rates"));
  parameter Modelica.SIunits.MassFlowRate mFlowAirRet_nominal
    "Nominal mass flow rate for return air"
    annotation(Dialog(tab="General", group="Nominal mass flow rates"));
  parameter Modelica.SIunits.MassFlowRate mFlowWatHeaCoi_nominal
    "Nominal water mass flow rate for heating coil"
    annotation(Dialog(tab="General", group="Nominal mass flow rates"));
  parameter Modelica.SIunits.MassFlowRate mFlowWatCooCoi_nominal
    "Nominal water mass flow rate for cooling coil"
    annotation(Dialog(tab="General", group="Nominal mass flow rates"));

  parameter Modelica.SIunits.Power QHeaCoi_nominal = min(mFlowWatHeaCoi_nominal*4180*(THeaCoiWatSup_nominal-THeaCoiWatRet_nominal),mFlowAirSup_nominal*1005*(THeaCoiAirRet_nominal - THeaCoiAirSup_nominal))
    "Nominal heating power"
    annotation(Dialog(tab="General", group="Nominal power"));
  parameter Modelica.SIunits.Power QCooCoi_nominal = max(mFlowWatCooCoi_nominal*4180*(TCooCoiWatSup_nominal-TCooCoiWatRet_nominal),mFlowAirSup_nominal*1005*(TCooCoiAirRet_nominal - TCooCoiAirSup_nominal))
    "Nominal cooling power"
    annotation(Dialog(tab="General", group="Nominal power"));

  parameter Modelica.SIunits.Temperature TCooCoiWatSup_nominal = 15+273.15
    annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature TCooCoiWatRet_nominal = 20+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature TCooCoiAirSup_nominal = 32+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature TCooCoiAirRet_nominal = 24+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));

  parameter Modelica.SIunits.Temperature THeaCoiWatSup_nominal = 70+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature THeaCoiWatRet_nominal = 50+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature THeaCoiAirSup_nominal = -10+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));
  parameter Modelica.SIunits.Temperature THeaCoiAirRet_nominal = 23+273.15
  annotation(Dialog(tab="General", group="Nominal temperatures"));

  Modelica.Fluid.Interfaces.FluidPort_a portCooCoi_a1(redeclare package Medium =
        MediumCooCoi)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-90,-110},{-70,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_b portCooCoi_b1(redeclare package Medium =
        MediumCooCoi)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{-50,-110},{-30,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a portHeaCoi_a1(redeclare package Medium =
        MediumHeaCoi)
    "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{30,-110},{50,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_b portHeaCoi_b1(redeclare package Medium =
        MediumHeaCoi)
    "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
    annotation (Placement(transformation(extent={{70,-110},{90,-90}})));
  parameter Real epsRecovery=0.7
    "Heat exchanger effectiveness of the recovery unit";
  parameter Modelica.SIunits.TemperatureDifference dTRecovery_nominal=30
    "Nominal/maximum temperature difference between inlet ports of recovery, used for regularization";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort
    annotation (Placement(transformation(extent={{-50,90},{-30,110}})));
  Modelica.Blocks.Interfaces.RealInput TSupply
    "Mixed outlet temperature setpoint" annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={40,108}), iconTransformation(
        extent={{-20,-20},{20,20}},
        rotation=270,
        origin={56,90})));
  parameter Modelica.SIunits.PressureDifference dpWatCooCoi_nominal
    "Pressure difference" annotation (Dialog(group="Nominal pressure drops"));
  parameter Modelica.SIunits.PressureDifference dpAirCooCoi_nominal
    "Pressure difference" annotation (Dialog(group="Nominal pressure drops"));
  parameter Modelica.SIunits.PressureDifference dpWatHeaCoi_nominal
    "Pressure difference" annotation (Dialog(group="Nominal pressure drops"));
  parameter Modelica.SIunits.PressureDifference dpAirHeaCoi_nominal
    "Pressure difference" annotation (Dialog(group="Nominal pressure drops"));
  parameter Modelica.SIunits.PressureDifference dpAirRetTW_nominal
    "Pressure difference of air supply in thermal wheel"
    annotation (Dialog(group="Nominal pressure drops"));
  parameter Modelica.SIunits.PressureDifference dpAirSupTW_nominal
    "Pressure difference of exhaust air in thermal wheel"
    annotation (Dialog(group="Nominal pressure drops"));
  Controllers.SignalBus signalBus annotation (Placement(transformation(extent={{-94,86},
            {-66,114}}),           iconTransformation(extent={{-210,-30},{-190,-10}})));
equation

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})),           Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
        Rectangle(
          heaSys.e005.port_a2.extent),
        Polygon(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Rectangle(
          heaSys.e005.port_a2.extent),
        Rectangle(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent),
        Text(
          heaSys.e005.port_a2.extent)}),
              Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end PartialAHU;
