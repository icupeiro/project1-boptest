within Multizone_Commercial_Hydronic.SubSystems.HeatingSystem.Components;
model IdealCircuitSwitch
  replaceable package Medium = Modelica.Media.Interfaces.PartialMedium;
  parameter Modelica.SIunits.MassFlowRate m_flow_nominal = 1
    "Nominal mass flow rate for checking validity";
  parameter Boolean simplify = true;
  parameter Real fra = 0.5
    "Flow fraction that exits through port b when both valves are opened"
    annotation(Dialog(enable=allowBCOpen));
  parameter Boolean colorRed= true
    "Set to true if lines should be drawn in red instead of black"
    annotation(Dialog(tab="Icon"));
  parameter Boolean setEqualPressureAB = false "True, to equate pressure at A and B, otherwise flow rate is prescribed"
    annotation(Evaluate=true);
  parameter Boolean setEqualPressureBC = true "= true, to equate pressure at B and C, else pressure at A and C are equated"
    annotation(Evaluate=true);
  parameter Boolean allowBCOpen = true "= false, to assert that both valves are not opened simultaneously";
  parameter Modelica.SIunits.Pressure dpValve_nominal=1000
    "Nominal pressure drop of fully open valve, used if CvData=Solarwind.Fluid.Types.CvTypes.OpPoint"
    annotation(Dialog(enable=not simplify));
  Modelica.Fluid.Interfaces.FluidPort_a port_a(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-112,-10},{-92,10}}),
        iconTransformation(extent={{-112,-10},{-92,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_b(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{88,-10},{108,10}}),
        iconTransformation(extent={{88,-10},{108,10}})));
  Modelica.Fluid.Interfaces.FluidPort_b port_c(redeclare package Medium =
        Medium)
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
  Modelica.Blocks.Interfaces.BooleanInput u_val1 "Control signal for valve 1"
    annotation (Placement(transformation(
        extent={{-20,-20},{20,20}},
        rotation=90,
        origin={-60,-106})));
  Modelica.Blocks.Interfaces.BooleanInput u_val2 "Control signal for valve 2"
    annotation (Placement(transformation(
        extent={{20,-20},{-20,20}},
        rotation=270,
        origin={60,-106})));
  IDEAS.Fluid.Actuators.Valves.TwoWayLinear val(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    dpValve_nominal=dpValve_nominal,
    use_inputFilter=false) if not simplify
    annotation (Placement(transformation(extent={{-60,10},{-40,-10}})));
  IDEAS.Fluid.Actuators.Valves.TwoWayLinear val1(
    redeclare package Medium = Medium,
    m_flow_nominal=m_flow_nominal,
    dpValve_nominal=dpValve_nominal,
    use_inputFilter=false) if not simplify
    annotation (Placement(transformation(extent={{40,10},{60,-10}})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal if not simplify  annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-50,-50})));
  Modelica.Blocks.Math.BooleanToReal booleanToReal1 if not simplify  annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={50,-50})));
equation
  assert(u_val1 or u_val2 or abs(port_c.m_flow)< m_flow_nominal/1e4, "IdealCircuitSwitch invalid since mass flow when valves are closed: port_c.m_flow = "+ String(port_c.m_flow));
    if simplify then
      if setEqualPressureAB then
        assert(abs(port_a.m_flow+port_c.m_flow+port_b.m_flow)<m_flow_nominal/1e4, "IdealCircuitSwitch invalid since mass is not conserved: sum = " + String(port_a.m_flow+port_c.m_flow+port_b.m_flow));
        port_a.p= port_b.p;
        port_b.m_flow=  -port_c.m_flow*(if u_val1 and not u_val2 then 0 elseif u_val1 and u_val2 then fra else 1);
      else
        //assert(abs(port_b.p-port_a.p)<0.001, "IdealCircuitSwitch invalid since pressure difference across port_a and port_b");
        port_a.m_flow+port_b.m_flow+port_c.m_flow=0;
        // weird construction since normal else/if causes singularity
        port_a.m_flow= -port_c.m_flow*(if u_val1 and not u_val2 then 1 elseif u_val1 and u_val2 then 1-fra else 0);
      end if;
      if setEqualPressureBC then
        port_b.p=port_c.p;
      else
        port_a.p=port_c.p;
      end if;
      if not allowBCOpen then
          assert(not u_val1 or not u_val2 or port_c.m_flow >  -m_flow_nominal/1e4, "IdealCircuitSwitch invalid since both valves are opened and mass flow rate is flowing out of port c");
      end if;
    inStream(port_c.h_outflow) = port_a.h_outflow;
    inStream(port_c.h_outflow) = port_b.h_outflow;
    inStream(port_c.Xi_outflow) = port_a.Xi_outflow;
    inStream(port_c.Xi_outflow) = port_b.Xi_outflow;
    inStream(port_c.C_outflow) = port_a.C_outflow;
    inStream(port_c.C_outflow) = port_b.C_outflow;
    if u_val1 then
      port_c.h_outflow=inStream(port_a.h_outflow);
      port_c.Xi_outflow=inStream(port_a.Xi_outflow);
      port_c.C_outflow=inStream(port_a.C_outflow);
    else
      port_c.h_outflow=inStream(port_b.h_outflow);
      port_c.Xi_outflow=inStream(port_b.Xi_outflow);
      port_c.C_outflow=inStream(port_b.C_outflow);
    end if;
  end if;
  connect(val1.port_b, port_b)
    annotation (Line(points={{60,0},{98,0}}, color={0,127,255}));
  connect(val.port_a, port_a)
    annotation (Line(points={{-60,0},{-102,0}}, color={0,127,255}));
  connect(val.port_b, val1.port_a)
    annotation (Line(points={{-40,0},{40,0}}, color={0,127,255}));
  connect(val.port_b, port_c) annotation (Line(points={{-40,0},{-22,0},{0,0},{0,
          100}}, color={0,127,255}));
  connect(u_val1, booleanToReal.u) annotation (Line(points={{-60,-106},{-50,-106},
          {-50,-62}}, color={255,0,255}));
  connect(booleanToReal.y, val.y) annotation (Line(points={{-50,-39},{-50,-25.5},
          {-50,-12}}, color={0,0,127}));
  connect(booleanToReal1.y, val1.y)
    annotation (Line(points={{50,-39},{50,-12}},          color={0,0,127}));
  connect(booleanToReal1.u, u_val2) annotation (Line(points={{50,-62},{50,-106},
          {60,-106}}, color={255,0,255}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}})), Icon(coordinateSystem(preserveAspectRatio=false,
          extent={{-100,-100},{100,100}}), graphics));
end IdealCircuitSwitch;
