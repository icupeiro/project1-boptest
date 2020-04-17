within INFRAX.Air;
package FCU

  package OptimalDesign "Optimal design models"

    model FCU
      replaceable package MediumAir = IDEAS.Media.Air;
      replaceable package MediumHeating = IDEAS.Media.Water;
      replaceable package MediumCooling = IDEAS.Media.Water;
       Modelica.SIunits.Temperature TMax "Maximum temperature";
       Modelica.SIunits.Temperature TMin "Minimum temperature";
      parameter Modelica.SIunits.TemperatureDifference dT=1 "Actuation range";
      parameter Boolean allowFlowReversal = false "";
      parameter Boolean useExternalTsensor = false;

      parameter Modelica.SIunits.MassFlowRate mWatHea_flow_nominal = heaCoi.Q_flow_nominal/4180/deltaTHea_nominal
      "Nominal mass flow of the heating coil";

      parameter Modelica.SIunits.MassFlowRate mWatCoo_flow_nominal = cooCoi.Q_flow_nominal/4180/deltaTCoo_nominal
      "Nominal mass flow of the cooling coil";

      parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal
      "Nominal mass flow of the cooling coil";

      parameter Modelica.SIunits.PressureDifference dpAir_nominal = 40*0.49/(485/3600) "Nominal air pressure difference";

      parameter Modelica.SIunits.TemperatureDifference deltaTCoo_nominal = 5
      "Nominal temperature difference in water side in the cooling coil"
      annotation (Dialog(group="Cooling coil parameters"));

      parameter Modelica.SIunits.TemperatureDifference deltaTHea_nominal = 10
      "Nominal temperature difference in water side in the heating coil"
      annotation (Dialog(group="Heating coil parameters"));

      parameter Modelica.SIunits.HeatFlowRate QHea_flow_nominal "Nominal heat transfer of the heating coil"
        annotation (Dialog(group="Heating coil parameters"));

      parameter Modelica.SIunits.HeatFlowRate QCoo_flow_nominal "Nominal heat transfer of the cooling coil"
        annotation (Dialog(group="Cooling coil parameters"));

      parameter Modelica.SIunits.Temperature THea_a1_nominal
      "Nominal temperature of inlet air in the heating coil"
        annotation (Dialog(group="Heating coil parameters"));
      parameter Modelica.SIunits.Temperature THea_a2_nominal
      "Nominal temperature of water inlet in the heating coil"
        annotation (Dialog(group="Heating coil parameters"));

      parameter Modelica.SIunits.Temperature TCoo_a1_nominal
      "Nominal temperature of inlet air in the cooling coil"
        annotation (Dialog(group="Cooling coil parameters"));
      parameter Modelica.SIunits.Temperature TCoo_a2_nominal
      "Nominal temperature of water inlet in the cooling coil"
        annotation (Dialog(group="Cooling coil parameters"));

      IDEAS.Fluid.Movers.FlowControlled_m_flow fan(
        redeclare package Medium = MediumAir,
        addPowerToMedium=false,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        use_inputFilter=false,
        energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyState,
        allowFlowReversal=allowFlowReversal,
        m_flow_nominal=mAir_flow_nominal,
        tau=0,
        inputType=IDEAS.Fluid.Types.InputType.Continuous,
        dp_nominal=dpAir_nominal)                         "Fan recirculating the air in the zone through the fan coil unit"
                                                                           annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
     IBPSA.Fluid.HeatExchangers.WetCoilEffectivesnessNTU cooCoi(
        redeclare package Medium1 = MediumAir,
        configuration=IDEAS.Fluid.Types.HeatExchangerConfiguration.CrossFlowUnmixed,
        m1_flow_nominal=mAir_flow_nominal,
        m2_flow_nominal=mWatCoo_flow_nominal,
        Q_flow_nominal=QCoo_flow_nominal,
        T_a1_nominal=TCoo_a1_nominal,
        T_a2_nominal=TCoo_a2_nominal,
        show_T=true,
        allowFlowReversal1=false,
        allowFlowReversal2=false,
        redeclare package Medium2 = MediumCooling,
        use_Q_flow_nominal=true,
        X_w1_nominal=0,
        from_dp1=false,
        dp1_nominal=dpAir_nominal/2,
        dp2_nominal=0)
        annotation (Placement(transformation(extent={{-20,-16},{0,4}})));

     IBPSA.Fluid.HeatExchangers.DryCoilEffectivenessNTU heaCoi(
        redeclare package Medium1 = MediumAir,
        configuration=IDEAS.Fluid.Types.HeatExchangerConfiguration.CrossFlowUnmixed,
        m1_flow_nominal=mAir_flow_nominal,
        m2_flow_nominal=mWatHea_flow_nominal,
        Q_flow_nominal=QHea_flow_nominal,
        T_a1_nominal=THea_a1_nominal,
        T_a2_nominal=THea_a2_nominal,
        show_T=true,
        allowFlowReversal1=false,
        allowFlowReversal2=false,
        dp1_nominal=dpAir_nominal/2,
        redeclare package Medium2 = MediumHeating,
        dp2_nominal=0,
        use_Q_flow_nominal=true,
        X_w1_nominal=0)
        annotation (Placement(transformation(extent={{50,-16},{70,4}})));

       Modelica.Fluid.Interfaces.FluidPort_a port_coo_a(
         redeclare final package Medium = MediumCooling,
         m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0)) "Cooling coil inlet"
        annotation (Placement(transformation(extent={{0,-110},{20,-90}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_coo_b(
        redeclare final package Medium = MediumCooling,
         m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0)) "Cooling coil outlet"
        annotation (Placement(transformation(extent={{-40,-110},{-20,-90}})));
     Modelica.Fluid.Interfaces.FluidPort_a port_hea_a(
       redeclare final package Medium = MediumHeating,
       m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0)) "Heating coil outlet"
        annotation (Placement(transformation(extent={{70,-110},{90,-90}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_hea_b(
        redeclare final package Medium = MediumHeating,
         m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0)) "Heating coil outlet"
        annotation (Placement(transformation(extent={{30,-110},{50,-90}})));
      Modelica.Fluid.Interfaces.FluidPort_b port_air_b(
        redeclare final package Medium = MediumAir,
         m_flow(max=if allowFlowReversal then Modelica.Constants.inf else 0)) "Air outlet"
        annotation (Placement(transformation(extent={{60,90},{80,110}})));
       Modelica.Fluid.Interfaces.FluidPort_a port_air_a(
         redeclare final package Medium = MediumAir,
         m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0)) "Air inlet"
        annotation (Placement(transformation(extent={{-70,90},{-50,110}})));
      IDEAS.Fluid.Sensors.TemperatureTwoPort senTem(
        redeclare package Medium = MediumAir,
        m_flow_nominal=1,
        allowFlowReversal=allowFlowReversal,
        tau=0) annotation (Placement(transformation(
            extent={{10,-10},{-10,10}},
            rotation=90,
            origin={-60,50})));
      Modelica.Blocks.Sources.RealExpression yCoo(y=if QCoo_flow_nominal < 1
             then 0 else min(1, max(0, (temp.y - TMax)/dT)))
        annotation (Placement(transformation(extent={{-100,-40},{-80,-20}})));
      Modelica.Blocks.Sources.RealExpression yHea(y=if QHea_flow_nominal < 1
             then 0 else min(1, max(0, (TMin - temp.y)/dT)))
        annotation (Placement(transformation(extent={{-100,-60},{-80,-40}})));
      Modelica.Blocks.Math.Add3 add3_1(
                                   k1=mAir_flow_nominal, k2=mAir_flow_nominal)
        annotation (Placement(transformation(extent={{-56,24},{-46,34}})));
      IDEAS.Fluid.Actuators.Valves.TwoWayLinear valCoo(
        redeclare package Medium = MediumCooling,
        m_flow_nominal=mWatCoo_flow_nominal,
        allowFlowReversal=allowFlowReversal,
        from_dp=true,
        use_inputFilter=false,
        dpFixed_nominal=0,
        dpValve_nominal=dpValveCoo_nominal) "Two way valve for cooling"
                                                           annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={10,-30})));
      IDEAS.Fluid.Actuators.Valves.TwoWayLinear valHea(
        allowFlowReversal=allowFlowReversal,
        from_dp=true,
        use_inputFilter=false,
        redeclare package Medium = MediumHeating,
        m_flow_nominal=mWatHea_flow_nominal,
        dpFixed_nominal=0,
        dpValve_nominal=dpValveHea_nominal)          "Two way valve for heating"
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={80,-30})));
      parameter Modelica.SIunits.PressureDifference dpValveCoo_nominal
        "Nominal pressure drop of fully open valve, used if CvData=IDEAS.Fluid.Types.CvTypes.OpPoint";
      parameter Modelica.SIunits.PressureDifference dpValveHea_nominal
        "Nominal pressure drop of fully open valve, used if CvData=IDEAS.Fluid.Types.CvTypes.OpPoint";
        Modelica.Blocks.Sources.RealExpression temp(y=if useExternalTsensor then
            TSensor else senTem.T)
        annotation (Placement(transformation(extent={{-28,60},{-8,80}})));

      Modelica.Blocks.Interfaces.RealOutput yHeaOut "Heating valve position"
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-80,-110})));
      Modelica.Blocks.Interfaces.RealOutput yCooOut "Cooling valve position"
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-60,-110})));
      Modelica.Blocks.Interfaces.RealOutput P "Electrical power use" annotation (
          Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={-100,-110})));
      Modelica.Blocks.Sources.RealExpression yExtra(y=0)
        annotation (Placement(transformation(extent={{-100,16},{-80,36}})));
      Modelica.Blocks.Interfaces.RealInput TSensor
        annotation (Placement(transformation(extent={{-124,50},{-84,90}})));
      Modelica.Blocks.Sources.RealExpression QCoo(y=cooCoi.Q2_flow)
        annotation (Placement(transformation(extent={{40,40},{60,60}})));
      Modelica.Blocks.Sources.RealExpression QHea(y=heaCoi.Q1_flow)
        annotation (Placement(transformation(extent={{40,70},{60,90}})));
      Modelica.Blocks.Interfaces.RealOutput QCooOut "cooling power by FCU"
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={110,50})));
      Modelica.Blocks.Interfaces.RealOutput QHeaOut "heating power by FCU"
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={110,80})));
      Modelica.Blocks.Sources.RealExpression    fcuHeaDemand(y=if ((clock.hour
             >= 4 and clock.hour <= 19) and (clock.weekDay) < 6) or (clock.weekDay
             < 2 and clock.hour <= 19) then add3_1.y else 0)
                     "FCU heating demand"
        annotation (Placement(transformation(extent={{2,20},{-20,40}})));
      SubSystems.Controllers.Components.Clock
                                 clock
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
    equation
      connect(cooCoi.port_b2, port_coo_b) annotation (Line(points={{-20,-12},{-30,-12},
              {-30,-100}},      color={0,127,255}));
      connect(fan.port_b,cooCoi. port_a1)
        annotation (Line(points={{-30,0},{-20,0}}, color={0,127,255}));
      connect(heaCoi.port_b2, port_hea_b)
        annotation (Line(points={{50,-12},{40,-12},{40,-100}}, color={0,127,255}));
      connect(heaCoi.port_b1, port_air_b)
        annotation (Line(points={{70,0},{70,100}},          color={0,127,255}));
      connect(fan.port_a, senTem.port_b)
        annotation (Line(points={{-50,0},{-60,0},{-60,40}}, color={0,127,255}));
      connect(senTem.port_a, port_air_a)
        annotation (Line(points={{-60,60},{-60,100}}, color={0,127,255}));
      connect(add3_1.u1, yCoo.y) annotation (Line(points={{-57,33},{-74,33},{-74,-30},{-79,-30}}, color={0,0,127}));
      connect(yHea.y, add3_1.u2) annotation (Line(points={{-79,-50},{-70,-50},{
              -70,29},{-57,29}},                                                                  color={0,0,127}));
      connect(port_coo_a, valCoo.port_a)
        annotation (Line(points={{10,-100},{10,-40}}, color={0,127,255}));
      connect(valCoo.port_b, cooCoi.port_a2)
        annotation (Line(points={{10,-20},{10,-12},{0,-12}},  color={0,127,255}));
      connect(port_hea_a, valHea.port_a)
        annotation (Line(points={{80,-100},{80,-40}}, color={0,127,255}));
      connect(valHea.port_b, heaCoi.port_a2)
        annotation (Line(points={{80,-20},{80,-12},{70,-12}}, color={0,127,255}));
      connect(yHea.y, valHea.y) annotation (Line(points={{-79,-50},{60,-50},{60,
              -30},{68,-30}},
                         color={0,0,127}));
      connect(valCoo.y, yCoo.y) annotation (Line(points={{-2,-30},{-79,-30}},
                          color={0,0,127}));
      connect(yCoo.y, yCooOut) annotation (Line(points={{-79,-30},{-60,-30},{-60,-110}},
            color={0,0,127}));
      connect(yHea.y, yHeaOut) annotation (Line(points={{-79,-50},{-79,-110},{
              -80,-110}},
            color={0,0,127}));
      connect(fan.P, P) annotation (Line(points={{-29,9},{-29,-86},{-100,-86},{-100,
              -110}}, color={0,0,127}));
      connect(yExtra.y, add3_1.u3) annotation (Line(points={{-79,26},{-70,26},{-70,24},
              {-57,24},{-57,25}}, color={0,0,127}));
      connect(cooCoi.port_b1, heaCoi.port_a1) annotation (Line(points={{0,0},{26,0},{26,0},{50,0}}, color={0,127,255}));
      connect(QHea.y, QHeaOut)
        annotation (Line(points={{61,80},{110,80}}, color={0,0,127}));
      connect(QCoo.y, QCooOut)
        annotation (Line(points={{61,50},{110,50}}, color={0,0,127}));
      connect(fcuHeaDemand.y, fan.m_flow_in) annotation (Line(points={{-21.1,30},
              {-40,30},{-40,12}}, color={0,0,127}));
      annotation (Documentation(revisions="<html>
<ul>
<li>
February 25, 2019 by Iago Cupeiro:<br/>
First implementation
</li>
</ul>
</html>",     info="<html>
<p>
Model of a four-pipe fan-coil unit for heating
and cooling detached from the zone model. The
FCU has a heat port to be connected into the 
zone convective port.
</p>
</html>"));
    end FCU;
  annotation ();
  end OptimalDesign;

  model OptimalDesign_FCU
    extends Air.FCU.OptimalDesign.FCU(cooCoi(configuration=Air.FCU.IBPSA.Fluid.Types.HeatExchangerConfiguration.CrossFlowStream1MixedStream2Unmixed),
        heaCoi(configuration=Air.FCU.IBPSA.Fluid.Types.HeatExchangerConfiguration.CrossFlowStream1MixedStream2Unmixed));
    annotation(experiment(
      StopTime=7.875e+08,
      __Dymola_NumberOfIntervals=5000,
      Tolerance=0.0001,
      __Dymola_fixedstepsize=120,
      __Dymola_Algorithm="euler"));
  end OptimalDesign_FCU;

  package IBPSA "Library with models for building energy and control systems"
    extends Modelica.Icons.Package;

    package Fluid "Package with models for fluid flow systems"
      extends Modelica.Icons.Package;

      package FixedResistances "Package with models for fixed flow resistances"
        extends Modelica.Icons.VariantsPackage;

        model PressureDrop
          "Fixed flow resistance with dp and m_flow as parameter"
          extends IBPSA.Fluid.BaseClasses.PartialResistance(final m_flow_turbulent=if computeFlowResistance then deltaM*m_flow_nominal_pos else 0);

          parameter Real deltaM(min=1E-6) = 0.3
            "Fraction of nominal mass flow rate where transition to turbulent occurs"
               annotation(Evaluate=true,
                          Dialog(group = "Transition to laminar",
                                 enable = not linearized));

          final parameter Real k = if computeFlowResistance then
                m_flow_nominal_pos / sqrt(dp_nominal_pos) else 0
            "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
        protected
          final parameter Boolean computeFlowResistance=(dp_nominal_pos > Modelica.Constants.eps)
            "Flag to enable/disable computation of flow resistance"
           annotation(Evaluate=true);
          final parameter Real coeff=
            if linearized and computeFlowResistance
            then if from_dp then k^2/m_flow_nominal_pos else m_flow_nominal_pos/k^2
            else 0
            "Precomputed coefficient to avoid division by parameter";
        initial equation
         if computeFlowResistance then
           assert(m_flow_turbulent > 0, "m_flow_turbulent must be bigger than zero.");
         end if;

         assert(m_flow_nominal_pos > 0, "m_flow_nominal_pos must be non-zero. Check parameters.");
        equation
          // Pressure drop calculation
          if computeFlowResistance then
            if linearized then
              if from_dp then
                m_flow = dp*coeff;
              else
                dp = m_flow*coeff;
              end if;
            else
              if homotopyInitialization then
                if from_dp then
                  m_flow = homotopy(actual=IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(
                            dp=dp,
                            k=k,
                            m_flow_turbulent=m_flow_turbulent), simplified=m_flow_nominal_pos*dp/dp_nominal_pos);
                else
                  dp = homotopy(actual=IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
                            m_flow=m_flow,
                            k=k,
                            m_flow_turbulent=m_flow_turbulent), simplified=dp_nominal_pos*m_flow/m_flow_nominal_pos);
                 end if;  // from_dp
              else // do not use homotopy
                if from_dp then
                  m_flow = IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(
                            dp=dp,
                            k=k,
                            m_flow_turbulent=m_flow_turbulent);
                else
                  dp = IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
                            m_flow=m_flow,
                            k=k,
                            m_flow_turbulent=m_flow_turbulent);
                end if;  // from_dp
              end if; // homotopyInitialization
            end if; // linearized
          else // do not compute flow resistance
            dp = 0;
          end if;  // computeFlowResistance

          annotation (defaultComponentName="res",
        Documentation(info="<html>
<p>
Model of a flow resistance with a fixed flow coefficient.
The mass flow rate is
</p>
<p align=\"center\" style=\"font-style:italic;\">
m&#775; = k
&radic;<span style=\"text-decoration:overline;\">&Delta;P</span>,
</p>
<p>
where
<i>k</i> is a constant and
<i>&Delta;P</i> is the pressure drop.
The constant <i>k</i> is equal to
<code>k=m_flow_nominal/sqrt(dp_nominal)</code>,
where <code>m_flow_nominal</code> and <code>dp_nominal</code>
are parameters.
</p>
<h4>Assumptions</h4>
<p>
In the region
<code>abs(m_flow) &lt; m_flow_turbulent</code>,
the square root is replaced by a differentiable function
with finite slope.
The value of <code>m_flow_turbulent</code> is
computed as
<code>m_flow_turbulent = deltaM * abs(m_flow_nominal)</code>,
where <code>deltaM=0.3</code> and
<code>m_flow_nominal</code> are parameters that can be set by the user.
</p>
<p>
The figure below shows the pressure drop for the parameters
<code>m_flow_nominal=5</code> kg/s,
<code>dp_nominal=10</code> Pa and
<code>deltaM=0.3</code>.
</p>
<p align=\"center\">
<img alt=\"image\" src=\"modelica://IBPSA/Resources/Images/Fluid/FixedResistances/PressureDrop.png\"/>
</p>
<h4>Important parameters</h4>
<p>
The parameter <code>from_dp</code> is used to determine
whether the mass flow rate is computed as a function of the
pressure drop (if <code>from_dp=true</code>), or vice versa.
This setting can affect the size of the nonlinear system of equations.
</p>
<p>
If the parameter <code>linearized</code> is set to <code>true</code>,
then the pressure drop is computed as a linear function of the
mass flow rate.
</p>
<p>
Setting <code>allowFlowReversal=false</code> can lead to simpler
equations. However, this should only be set to <code>false</code>
if one can guarantee that the flow never reverses its direction.
This can be difficult to guarantee, as pressure imbalance after
the initialization, or due to medium expansion and contraction,
can lead to reverse flow.
</p>
<p>
If the parameter
<code>show_T</code> is set to <code>true</code>,
then the model will compute the
temperature at its ports. Note that this can lead to state events
when the mass flow rate approaches zero,
which can increase computing time.
</p>
<h4>Notes</h4>
<p>
For more detailed models that compute the actual flow friction,
models from the package
<a href=\"modelica://Modelica.Fluid\">
Modelica.Fluid</a>
can be used and combined with models from the
<code>IBPSA</code> library.
</p>
<p>
For a model that uses the hydraulic parameter and flow velocity at nominal conditions
as a parameter, use
<a href=\"modelica://IBPSA.Fluid.FixedResistances.HydraulicDiameter\">
IBPSA.Fluid.FixedResistances.HydraulicDiameter</a>.
</p>
<h4>Implementation</h4>
<p>
The pressure drop is computed by calling a function in the package
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels\">
IBPSA.Fluid.BaseClasses.FlowModels</a>,
This package contains regularized implementations of the equation
</p>
<p align=\"center\" style=\"font-style:italic;\">
  m = sign(&Delta;p) k  &radic;<span style=\"text-decoration:overline;\">&nbsp;&Delta;p &nbsp;</span>
</p>
<p>
and its inverse function.
</p>
<p>
To decouple the energy equation from the mass equations,
the pressure drop is a function of the mass flow rate,
and not the volume flow rate.
This leads to simpler equations.
</p>
</html>",         revisions="<html>
<ul>
<li>
September 21, 2018, by Michael Wetter:<br/>
Decrease value of <code>deltaM(min=...)</code> attribute.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1026\">#1026</a>.
</li>
<li>
February 3, 2018, by Filip Jorissen:<br/>
Revised implementation of pressure drop equation
such that it depends on <code>from_dp</code>
when <code>linearized=true</code>.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/884\">#884</a>.
</li>
<li>
December 1, 2016, by Michael Wetter:<br/>
Simplified model by removing the geometry dependent parameters into the new
model
<a href=\"modelica://IBPSA.Fluid.FixedResistances.HydraulicDiameter\">
IBPSA.Fluid.FixedResistances.HydraulicDiameter</a>.
</li>
<li>
November 23, 2016, by Filip Jorissen:<br/>
Removed <code>dp_nominal</code> and
<code>m_flow_nominal</code> labels from icon.
</li>
<li>
October 14, 2016, by Michael Wetter:<br/>
Updated comment for parameter <code>use_dh</code>.
</li>
<li>
November 26, 2014, by Michael Wetter:<br/>
Added the required <code>annotation(Evaluate=true)</code> so
that the system of nonlinear equations in
<a href=\"modelica://IBPSA.Fluid.FixedResistances.Validation.PressureDropsExplicit\">
IBPSA.Fluid.FixedResistances.Validation.PressureDropsExplicit</a>
remains the same.
</li>
<li>
November 20, 2014, by Michael Wetter:<br/>
Rewrote the warning message using an <code>assert</code> with
<code>AssertionLevel.warning</code>
as this is the proper way to write warnings in Modelica.
</li>
<li>
August 5, 2014, by Michael Wetter:<br/>
Corrected error in documentation of computation of <code>k</code>.
</li>
<li>
May 29, 2014, by Michael Wetter:<br/>
Removed undesirable annotation <code>Evaluate=true</code>.
</li>
<li>
October 8, 2013, by Michael Wetter:<br/>
Removed parameter <code>show_V_flow</code>.
</li>
<li>
December 14, 2012 by Michael Wetter:<br/>
Renamed protected parameters for consistency with the naming conventions.
</li>
<li>
January 16, 2012 by Michael Wetter:<br/>
To simplify object inheritance tree, revised base classes
<code>IBPSA.Fluid.BaseClasses.PartialResistance</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialTwoWayValve</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialDamperExponential</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialActuator</code>
and model
<code>IBPSA.Fluid.FixedResistances.PressureDrop</code>.
</li>
<li>
May 30, 2008 by Michael Wetter:<br/>
Added parameters <code>use_dh</code> and <code>deltaM</code> for easier parameterization.
</li>
<li>
July 20, 2007 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end PressureDrop;
        annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains component models for fixed flow resistances.
By fixed flow resistance, we mean resistances that do not change the
flow coefficient
</p>
<p align=\"center\" style=\"font-style:italic;\">
k = m &frasl;
&radic;<span style=\"text-decoration:overline;\">&Delta;P</span>.
</p>
<p>
For models of valves and air dampers, see
<a href=\"modelica://IBPSA.Fluid.Actuators\">
IBPSA.Fluid.Actuators</a>.
For models of flow resistances as part of the building constructions, see
<a href=\"modelica://IBPSA.Airflow.Multizone\">
IBPSA.Airflow.Multizone</a>.
</p>
<p>
The model
<a href=\"modelica://IBPSA.Fluid.FixedResistances.PressureDrop\">
IBPSA.Fluid.FixedResistances.PressureDrop</a>
is a fixed flow resistance that takes as parameter a nominal flow rate and a nominal pressure drop. The actual resistance is scaled using the above equation.
</p>
<p>
The model
<a href=\"modelica://IBPSA.Fluid.FixedResistances.HydraulicDiameter\">
IBPSA.Fluid.FixedResistances.HydraulicDiameter</a>
is a fixed flow resistance that takes as parameter a nominal flow rate and
a hydraulic diameter. The actual resistance is scaled using the above equation.
</p>
<p>
The model
<a href=\"modelica://IBPSA.Fluid.FixedResistances.LosslessPipe\">
IBPSA.Fluid.FixedResistances.LosslessPipe</a>
is an ideal pipe segment with no pressure drop. It is primarily used
in models in which the above pressure drop model need to be replaced by a model with no pressure drop.
</p>
<p>
The model
<a href=\"modelica://IBPSA.Fluid.FixedResistances.Junction\">
IBPSA.Fluid.FixedResistances.Junction</a>
can be used to model flow splitters or flow merges.
</p>
</html>"));
      end FixedResistances;

      package HeatExchangers "Package with heat exchanger models"
        extends Modelica.Icons.VariantsPackage;

        model DryCoilEffectivenessNTU
          "Heat exchanger with effectiveness - NTU relation and no moisture condensation"
          extends
            IBPSA.Fluid.HeatExchangers.BaseClasses.PartialEffectivenessNTU(      UA=1/(1/hA.hA_1 + 1/hA.hA_2));

          parameter Real r_nominal(
            min=0,
            max=1) = 2/3
            "Ratio between air-side and water-side convective heat transfer (hA-value) at nominal condition";

          IBPSA.Fluid.HeatExchangers.BaseClasses.HADryCoil hA(
            final r_nominal=r_nominal,
            final UA_nominal=UA_nominal,
            final m_flow_nominal_w=m1_flow_nominal,
            final m_flow_nominal_a=m2_flow_nominal,
            waterSideTemperatureDependent=false,
            airSideTemperatureDependent=false) "Model for convective heat transfer coefficient";

        equation
          // Convective heat transfer coefficient
          hA.m1_flow = m1_flow;
          hA.m2_flow = m2_flow;
          hA.T_1 = T_in1;
          hA.T_2 = T_in2;

          annotation (
            Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                    100}}), graphics={Rectangle(
                  extent={{-70,78},{70,-82}},
                  lineColor={0,0,255},
                  pattern=LinePattern.None,
                  fillColor={95,95,95},
                  fillPattern=FillPattern.Solid)}),
            preferredView="info",
        defaultComponentName="hex",
            Documentation(info="<html>
<p>
Model of a coil without humidity condensation.
This model transfers heat in the amount of
</p>
<p align=\"center\" style=\"font-style:italic;\">
  Q&#775; = Q&#775;<sub>max</sub>  &epsilon;<br/>
  &epsilon; = f(NTU, Z, flowRegime),
</p>
<p>
where
<i>Q&#775;<sub>max</sub></i> is the maximum heat that can be transferred,
<i>&epsilon;</i> is the heat transfer effectiveness,
<i>NTU</i> is the Number of Transfer Units,
<i>Z</i> is the ratio of minimum to maximum capacity flow rate and
<i>flowRegime</i> is the heat exchanger flow regime.
such as
parallel flow, cross flow or counter flow.
</p>
<p>
The flow regimes depend on the heat exchanger configuration. All configurations
defined in
<a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerConfiguration\">
IBPSA.Fluid.Types.HeatExchangerConfiguration</a>
are supported.
</p>
<p>
The convective heat transfer coefficients scale proportional to
<i>(m&#775;/m&#775;<sub>0</sub>)<sup>n</sup></i>, where
<i>m&#775;</i> is the mass flow rate,
<i>m&#775;<sub>0</sub></i> is the nominal mass flow rate, and
<i>n=0.8</i> on the air-side and <i>n=0.85</i> on the water side.
</p>
<p>
For a heat and moisture exchanger, use
<a href=\"modelica://IBPSA.Fluid.MassExchangers.ConstantEffectiveness\">
IBPSA.Fluid.MassExchangers.ConstantEffectiveness</a>.
</p>
</html>",         revisions="<html>
<ul>
<li>
September 25, 2018, by Michael Wetter:<br/>
Refactored model to use a common base class with
<a href=\"modelica://Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU\">
Buildings.Fluid.HeatExchangers.PlateHeatExchangerEffectivenessNTU</a>.
</li>
</ul>
</html>"));
        end DryCoilEffectivenessNTU;

        model WetCoilEffectivesnessNTU
          "Heat exchanger with effectiveness - NTU relation and simple model for moisture condensation"
          extends IBPSA.Fluid.HeatExchangers.DryCoilEffectivenessNTU(sensibleOnly1=false);

        equation
          // todo: check using substance names
          assert(sensibleOnly1 or Medium1.nXi > 0,
            "In "+getInstanceName() + ": model that computes condensation in air, but model contains no water fraction.");
          annotation (Documentation(revisions="<html>
<ul>
<li>
April 7, 2019, by Filip Jorissen:<br/>
First implementation for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1109\">#1109</a>.
</li>
</ul>
</html>"));
        end WetCoilEffectivesnessNTU;

        package BaseClasses "Package with base classes for IBPSA.Fluid.HeatExchangers"
          extends Modelica.Icons.BasesPackage;

          model HADryCoil
            "Sensible convective heat transfer model for air to water coil"
            extends Modelica.Blocks.Icons.Block;

            parameter Modelica.SIunits.ThermalConductance UA_nominal(min=0)
              "Thermal conductance at nominal flow"
                    annotation(Dialog(tab="General", group="Nominal condition"));

            parameter Modelica.SIunits.MassFlowRate m_flow_nominal_w
              "Water mass flow rate"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Modelica.SIunits.MassFlowRate m_flow_nominal_a "Air mass flow rate"
                    annotation(Dialog(tab="General", group="Nominal condition"));

            Modelica.Blocks.Interfaces.RealInput m1_flow(final unit="kg/s") "Mass flow rate medium 1"
              annotation (Placement(transformation(extent={{-120,60},{-100,80}})));
            Modelica.Blocks.Interfaces.RealInput m2_flow(final unit="kg/s") "Mass flow rate medium 2"
              annotation (Placement(transformation(extent={{-120,-80},{-100,-60}})));
            Modelica.Blocks.Interfaces.RealInput T_1(final unit="K") "Temperature medium 1"
              annotation (Placement(transformation(extent={{-120,20},{-100,40}})));
            Modelica.Blocks.Interfaces.RealInput T_2(final unit="K") "Temperature medium 2"
              annotation (Placement(transformation(extent={{-120,-40},{-100,-20}})));

            Modelica.Blocks.Interfaces.RealOutput hA_1(final unit="W/K")
              "Convective heat transfer medium 1" annotation (Placement(transformation(
                    extent={{100,60},{120,80}})));
            Modelica.Blocks.Interfaces.RealOutput hA_2(final unit="W/K")
              "Convective heat transfer medium 2" annotation (Placement(transformation(
                    extent={{100,-80},{120,-60}})));

            parameter Real r_nominal(min=0)=0.5
              "Ratio between air-side and water-side convective heat transfer coefficient"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Modelica.SIunits.ThermalConductance hA_nominal_w(min=0)=UA_nominal * (r_nominal+1)/r_nominal
              "Water side convective heat transfer coefficient"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Modelica.SIunits.ThermalConductance hA_nominal_a(min=0)=r_nominal * hA_nominal_w
              "Air side convective heat transfer coefficient, including fin resistance"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Real n_w(min=0, max=1)=0.85
              "Water-side exponent for convective heat transfer coefficient, h~m_flow^n";
            parameter Real n_a(min=0, max=1)=0.8
              "Air-side exponent for convective heat transfer coefficient, h~m_flow^n";
            parameter Modelica.SIunits.Temperature T0_w=
                    Modelica.SIunits.Conversions.from_degC(20) "Water temperature"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Modelica.SIunits.Temperature T0_a=
                    Modelica.SIunits.Conversions.from_degC(20) "Air temperature"
                    annotation(Dialog(tab="General", group="Nominal condition"));
            parameter Boolean waterSideFlowDependent=true
              "Set to false to make water-side hA independent of mass flow rate"
              annotation(Dialog(tab="Advanced", group="Modeling detail"), Evaluate=true);
            parameter Boolean airSideFlowDependent = true
              "Set to false to make air-side hA independent of mass flow rate"
              annotation(Dialog(tab="Advanced", group="Modeling detail"), Evaluate=true);
            parameter Boolean waterSideTemperatureDependent = true
              "Set to false to make water-side hA independent of temperature"
              annotation(Dialog(tab="Advanced", group="Modeling detail"), Evaluate=true);
            parameter Boolean airSideTemperatureDependent = true
              "Set to false to make air-side hA independent of temperature"
              annotation(Dialog(tab="Advanced", group="Modeling detail"), Evaluate=true);
          protected
            Real x_a(min=0)
              "Factor for air side temperature dependent variation of heat transfer coefficient";
            Real x_w(min=0)
              "Factor for water side temperature dependent variation of heat transfer coefficient";
            parameter Real s_w(min=0, fixed=false)
              "Coefficient for temperature dependence of water side heat transfer coefficient";
            Real fm_w "Fraction of actual to nominal mass flow rate";
            Real fm_a "Fraction of actual to nominal mass flow rate";
          initial equation
            s_w =  if waterSideTemperatureDependent then
                      0.014/(1+0.014*Modelica.SIunits.Conversions.to_degC(T0_w)) else
                        1;
          equation
            fm_w = if waterSideFlowDependent then
                        m1_flow / m_flow_nominal_w else 1;
            fm_a = if airSideFlowDependent then
                        m2_flow / m_flow_nominal_a else 1;
            x_w = if waterSideTemperatureDependent then
                   1 + s_w * (T_1-T0_w) else
                        1;
            x_a = if airSideTemperatureDependent then
                   1 + 7.8532E-4 * (T_2-T0_a) else
                        1;
            if waterSideFlowDependent then
              hA_1 = x_w*hA_nominal_w*IBPSA.Utilities.Math.Functions.regNonZeroPower(
                          fm_w,
                          n_w,
                          0.1);
            else
              hA_1 = x_w * hA_nominal_w;
            end if;

            if airSideFlowDependent then
              hA_2 = x_a*hA_nominal_a*IBPSA.Utilities.Math.Functions.regNonZeroPower(
                          fm_a,
                          n_a,
                          0.1);
            else
              hA_2 = x_a * hA_nominal_a;
            end if;
          annotation (Documentation(info="<html>
<p>
Model for sensible convective heat transfer coefficients for an air to water coil.
</p>
<p>
This model computes the convective heat transfer coefficient
for an air to water coil.
The parameters allow a user to enable or disable, individually
for each medium, the mass flow and/or the temperature dependence
of the convective heat transfer coefficients.
For a detailed explanation of the equation, see
the references below.
</p>
<h4>References</h4>
<ul>
<li>
Wetter Michael,
<a href=\"http://www.osti.gov/energycitations/product.biblio.jsp?osti_id=7353\">
Simulation model finned water-air-coil without condensation</a>,
LBNL-42355,
Lawrence Berkeley National Laboratory,
Berkeley, CA, 1999.
</li>
<li>
Wetter Michael,
<a href=\"http://www.osti.gov/energycitations/product.biblio.jsp?osti_id=7352\">
Simulation model air-to-air plate heat exchanger</a>,
LBNL-42354,
Lawrence Berkeley National Laboratory,
Berkeley, CA, 1999.
</li>
</ul>
</html>", revisions="<html>
<ul>
<li>
April 9, 2017, by Michael Wetter:<br/>
Corrected coefficient in Taylor expansion of <code>x_a</code>.<br/>
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/698\">#698</a>.
</li>
<li>
June 8, 2010, by Michael Wetter:<br/>
Fixed bug in computation of <code>s_w</code>.
The old implementation used the current inlet water temperature instead
of the design condition that corresponds to <code>UA_nominal</code>.
</li>
<li>
April 16, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                      100}}), graphics={            Text(
                    extent={{-60,90},{66,0}},
                    lineColor={0,0,0},
                    fillColor={255,255,255},
                    fillPattern=FillPattern.Solid,
                    textString="hA"),
                  Ellipse(
                    extent={{-32,-10},{-12,-32}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{34,-10},{54,-32}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{0,-10},{20,-32}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-64,-10},{-44,-32}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-48,-40},{-28,-62}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-16,-40},{4,-62}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{16,-40},{36,-62}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{50,-40},{70,-62}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-68,-66},{-48,-88}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-36,-66},{-16,-88}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{-4,-66},{16,-88}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid),
                  Ellipse(
                    extent={{30,-66},{50,-88}},
                    lineColor={0,0,0},
                    fillColor={0,0,0},
                    fillPattern=FillPattern.Solid)}),
                        Icon(
                Rectangle(extent=[-36,-36; -24,-72],   style(
                    color=0,
                    fillColor=8,
                    fillPattern=8)),
                Line(points=[-12,-52; 26,-52],    style(color=42, fillColor=45)),
                Line(points=[-4,-40; -4,-68],    style(color=69, fillColor=47)),
                Line(points=[-4,-68; -10,-58],    style(color=69, fillColor=47)),
                Line(points=[-4,-68; 2,-58],      style(color=69, fillColor=47)),
                Line(points=[14,-58; 26,-52],    style(color=42, fillColor=45)),
                Line(points=[14,-46; 26,-52],    style(color=42, fillColor=45)),
                Line(points=[16,-40; 16,-68],    style(color=69, fillColor=47)),
                Line(points=[16,-68; 10,-58],     style(color=69, fillColor=47)),
                Line(points=[16,-68; 22,-58],     style(color=69, fillColor=47)),
                Rectangle(extent=[-36,66; -24,30],     style(
                    color=0,
                    fillColor=8,
                    fillPattern=8)),
                Line(points=[-12,50; 26,50],      style(color=42, fillColor=45)),
                Line(points=[-4,62; -4,34],      style(color=69, fillColor=47)),
                Line(points=[-4,34; -10,44],      style(color=69, fillColor=47)),
                Line(points=[-4,34; 2,44],        style(color=69, fillColor=47)),
                Line(points=[14,44; 26,50],      style(color=42, fillColor=45)),
                Line(points=[14,56; 26,50],      style(color=42, fillColor=45)),
                Line(points=[16,62; 16,34],      style(color=69, fillColor=47)),
                Line(points=[16,34; 10,44],       style(color=69, fillColor=47)),
                Line(points=[16,34; 22,44],       style(color=69, fillColor=47))));
          end HADryCoil;

          package Internal "Solve f(x, data) for x with given f"
            extends Modelica.Media.Common.OneNonLinearEquation;

            redeclare function extends f_nonlinear
            algorithm
            assert(x>0, "NTU needs to be strictly positive.
Received NTU = "           + String(x) + "
         Z   = "           + String(p));
              y := IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ(
                            NTU=x,
                            Z=p,
                            flowRegime=Integer(IBPSA.Fluid.Types.HeatExchangerFlowRegime.CrossFlowUnmixed));
            end f_nonlinear;

          annotation (
          Documentation(
          info="<html>
<p>
Function that internally solves a scalar equation.
</p>
</html>", revisions="<html>
<ul>
<li>
July 7, 2014, by Michael Wetter:<br/>
Changed the type of the input <code>flowRegime</code> from
<code>IBPSA.Fluid.Types.HeatExchangerFlowRegime</code>
to <code>Integer</code>.
</li>
<li>
August 10, 2011, by Michael Wetter:
<ul>
<li>
Changed implementation to use
<code>Modelica.Media.Common.OneNonLinearEquation</code> instead of
<code>Buildings.Utilities.Math.BaseClasses.OneNonLinearEquation</code>.
</li>
<li>
Added assert statement as <code>epsilon_ntuZ</code> computes <code>NTU^(-0.22)</code>.
</li>
</ul>
</li>
<li>
February 16, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end Internal;

          partial model PartialEffectiveness
            "Partial model to implement heat exchangers based on effectiveness model"
            extends Fluid.Interfaces.StaticFourPortHeatMassExchanger(
              prescribedHeatFlowRate1=true,
              prescribedHeatFlowRate2=true,
              show_T=false);

            Medium1.Temperature T_in1 = if allowFlowReversal1 then
              fra_a1 * Medium1.temperature(state_a1_inflow) + fra_b1 * Medium1.temperature(state_b1_inflow) else
              Medium1.temperature(state_a1_inflow)
              "Inlet temperature medium 1";
            Medium2.Temperature T_in2 = if allowFlowReversal2 then
              fra_a2 * Medium2.temperature(state_a2_inflow) + fra_b2 * Medium2.temperature(state_b2_inflow) else
              Medium2.temperature(state_a2_inflow)
              "Inlet temperature medium 2";
            Modelica.SIunits.ThermalConductance C1_flow = abs(m1_flow)*
              ( if allowFlowReversal1 then
                     fra_a1 * Medium1.specificHeatCapacityCp(state_a1_inflow) +
                     fra_b1 * Medium1.specificHeatCapacityCp(state_b1_inflow) else
                  Medium1.specificHeatCapacityCp(state_a1_inflow))
              "Heat capacity flow rate medium 1";
            Modelica.SIunits.ThermalConductance C2_flow = abs(m2_flow)*
              ( if allowFlowReversal2 then
                     fra_a2 * Medium2.specificHeatCapacityCp(state_a2_inflow) +
                     fra_b2 * Medium2.specificHeatCapacityCp(state_b2_inflow) else
                  Medium2.specificHeatCapacityCp(state_a2_inflow))
              "Heat capacity flow rate medium 2";
            Modelica.SIunits.ThermalConductance CMin_flow(min=0) = min(C1_flow, C2_flow)
              "Minimum heat capacity flow rate";
            Modelica.SIunits.HeatFlowRate QMax_flow = CMin_flow*(T_in2 - T_in1)
              "Maximum heat flow rate into medium 1";
          protected
            parameter Real delta=1E-3 "Parameter used for smoothing";

            parameter Modelica.SIunits.SpecificHeatCapacity cp1_default(fixed=false)
              "Specific heat capacity of medium 1 at default medium state";
            parameter Modelica.SIunits.SpecificHeatCapacity cp2_default(fixed=false)
              "Specific heat capacity of medium 2 at default medium state";
            parameter Modelica.SIunits.ThermalConductance CMin_flow_small(fixed=false)
              "Small value for smoothing of minimum heat capacity flow rate";
            Real fra_a1(min=0, max=1) = if allowFlowReversal1
              then Modelica.Fluid.Utilities.regStep(
                m1_flow,
                1,
                0,
                m1_flow_small)
              else 1
              "Fraction of incoming state taken from port a2 (used to avoid excessive calls to regStep)";
            Real fra_b1(min=0, max=1) = if allowFlowReversal1
              then 1-fra_a1
              else 0
              "Fraction of incoming state taken from port b2 (used to avoid excessive calls to regStep)";
            Real fra_a2(min=0, max=1) = if allowFlowReversal2
              then Modelica.Fluid.Utilities.regStep(
                m2_flow,
                1,
                0,
                m2_flow_small)
              else 1
              "Fraction of incoming state taken from port a2 (used to avoid excessive calls to regStep)";
            Real fra_b2(min=0, max=1) = if allowFlowReversal2
              then 1-fra_a2
              else 0
              "Fraction of incoming state taken from port b2 (used to avoid excessive calls to regStep)";
          initial equation
            cp1_default = Medium1.specificHeatCapacityCp(Medium1.setState_pTX(
              Medium1.p_default,
              Medium1.T_default,
              Medium1.X_default));
            cp2_default = Medium2.specificHeatCapacityCp(Medium2.setState_pTX(
              Medium2.p_default,
              Medium2.T_default,
              Medium2.X_default));
            CMin_flow_small = min(m1_flow_small*cp1_default, m2_flow_small*cp2_default);

            annotation (
              Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                      100}}), graphics={Rectangle(
                    extent={{-70,78},{70,-80}},
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillColor={95,95,95},
                    fillPattern=FillPattern.Solid)}),
              Documentation(info="<html>
<p>
Partial model to implement heat exchanger models.
</p>
<p>
Classes that extend this model need to implement heat and
mass balance equations in a form like
</p>
<pre>
  // transferred heat
  Q1_flow = eps * QMax_flow;
  // no heat loss to ambient
  0 = Q1_flow + Q2_flow;
  // no mass exchange
  mXi1_flow = zeros(Medium1.nXi);
  mXi2_flow = zeros(Medium2.nXi);
</pre>
<p>
Thus, if medium 1 is heated in this device, then <code>Q1_flow &gt; 0</code>
and <code>QMax_flow &gt; 0</code>.
</p>
</html>",           revisions="<html>
<ul>
<li>
February 21, 2019, by Filip Jorissen:<br/>
Revised implementation of all equations
such that a binding equation is used. 
I.e. we set the variable value at the variable definition
instead of using the equation section.
This allows overwriting the equation
when extending the model.<br/>
See
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1102\">#1102</a>.
</li>
<li>
April 30, 2018, by Filip Jorissen:<br/>
Set <code>prescribedHeatFlowRate1=true</code> and 
<code>prescribedHeatFlowRate2=true</code>.<br/>
See
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/907\">#907</a>.
</li>
<li>
June 9, 2015 by Michael Wetter:<br/>
Changed type of <code>T_in1</code> and <code>T_in2</code>
to <code>Medium1.Temperature</code> and <code>Medium2.Temperature</code>
to avoid an error because of conflicting start values if
<a href=\"modelica://IBPSA.Examples.ChillerPlant.BaseClasses.Controls.Examples.ChillerSetPointControl\">
Buildings.Examples.ChillerPlant.BaseClasses.Controls.Examples.ChillerSetPointControl</a>
is translated using pedantic mode in Dymola 2016.
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/426\">#426</a>.
</li>
<li>
October 8, 2011, by Michael Wetter:<br/>
Set <code>show_T=false</code> to avoid state events near zero flow.
</li>
<li>
August 31, 2011, by Michael Wetter:<br/>
Removed unused variables <code>gai1</code> and <code>gai2</code>.
</li>
<li>
February 12, 2010, by Michael Wetter:<br/>
Changed model structure to implement effectiveness-NTU model.
</li>
<li>
January 28, 2010, by Michael Wetter:<br/>
Added regularization near zero flow.
</li>
<li>
October 2, 2009, by Michael Wetter:<br/>
Changed computation of inlet temperatures to use
<code>state_*_inflow</code> which is already known in base class.
</li>
<li>
April 28, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end PartialEffectiveness;

          model PartialEffectivenessNTU
            "Partial model for heat exchanger with effectiveness - NTU relation and no moisture condensation"
            extends IBPSA.Fluid.HeatExchangers.BaseClasses.PartialEffectiveness(
              sensibleOnly1=true,
              sensibleOnly2=true,
              Q1_flow=eps*QMax_flow,
              Q2_flow=-Q1_flow,
              mWat1_flow=if sensibleOnly1 then 0 else Q1_flow*(cp1Wet - Medium1.specificHeatCapacityCp(state_a1_inflow))/cp1Wet/lambda,
              mWat2_flow=0,
              C1_flow=abs(m1_flow)*cp1Wet);
            import con = Air.FCU.IBPSA.Fluid.Types.HeatExchangerConfiguration;
            import flo = Air.FCU.IBPSA.Fluid.Types.HeatExchangerFlowRegime;

            parameter con configuration "Heat exchanger configuration"
              annotation (Evaluate=true);

            parameter Boolean use_Q_flow_nominal = true
              "Set to true to specify Q_flow_nominal and temperatures, or to false to specify effectiveness"
              annotation (Evaluate=true,
                          Dialog(group="Nominal thermal performance"));

            parameter Modelica.SIunits.HeatFlowRate Q_flow_nominal(fixed=use_Q_flow_nominal)
              "Nominal heat transfer"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=use_Q_flow_nominal));
            parameter Modelica.SIunits.MassFraction X_w1_nominal
              "Absolute humidity of inlet at nominal condition"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=not sensibleOnly1));
            parameter Modelica.SIunits.Temperature T_a1_nominal(fixed=use_Q_flow_nominal)
              "Nominal temperature at port a1"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=use_Q_flow_nominal));
            parameter Modelica.SIunits.Temperature T_a2_nominal(fixed=use_Q_flow_nominal)
              "Nominal temperature at port a2"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=use_Q_flow_nominal));

            parameter Real eps_nominal(fixed=not use_Q_flow_nominal)
              "Nominal heat transfer effectiveness"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=not use_Q_flow_nominal));

            input Modelica.SIunits.ThermalConductance UA "UA value";

            Real eps(min=0, max=1) "Heat exchanger effectiveness";

            // NTU has been removed as NTU goes to infinity as CMin goes to zero.
            // This quantity is not good for modeling.
            //  Real NTU(min=0) "Number of transfer units";
            final parameter Modelica.SIunits.ThermalConductance UA_nominal(fixed=false)
              "Nominal UA value";
            final parameter Real NTU_nominal(min=0, fixed=false)
              "Nominal number of transfer units";

          protected
            constant Modelica.SIunits.SpecificEnthalpy lambda = 2453500
              "Heat of evaporation of water at 20 degrees Celsius, source: Engineering Toolbox";
            final parameter Medium1.ThermodynamicState sta1_default = Medium1.setState_pTX(
               T=Medium1.T_default,
               p=Medium1.p_default,
               X=Medium1.X_default[1:Medium1.nXi]) "Default state for medium 1";
            final parameter Medium2.ThermodynamicState sta2_default = Medium2.setState_pTX(
               T=Medium1.T_default,
               p=Medium2.p_default,
               X=Medium2.X_default[1:Medium2.nXi]) "Default state for medium 2";

            parameter Modelica.SIunits.SpecificHeatCapacity cp1_nominal(fixed=false)
              "Specific heat capacity of medium 1 at nominal condition";
            parameter Modelica.SIunits.SpecificHeatCapacity cp2_nominal(fixed=false)
              "Specific heat capacity of medium 2 at nominal condition";
            parameter Modelica.SIunits.ThermalConductance C1_flow_nominal(fixed=false)
              "Nominal capacity flow rate of Medium 1";
            parameter Modelica.SIunits.ThermalConductance C2_flow_nominal(fixed=false)
              "Nominal capacity flow rate of Medium 2";
            parameter Modelica.SIunits.ThermalConductance CMin_flow_nominal(fixed=false)
              "Minimal capacity flow rate at nominal condition";
            parameter Modelica.SIunits.ThermalConductance CMax_flow_nominal(fixed=false)
              "Maximum capacity flow rate at nominal condition";
            parameter Real Z_nominal(
              min=0,
              max=1,
              fixed=false) "Ratio of capacity flow rate at nominal condition";
            parameter Modelica.SIunits.Temperature T_b1_nominal(fixed=false)
              "Nominal temperature at port b1";
            parameter Modelica.SIunits.Temperature T_b2_nominal(fixed=false)
              "Nominal temperature at port b2";
            parameter Modelica.SIunits.MassFraction xSat1_nominal=
              IBPSA.Utilities.Psychrometrics.Functions.X_pTphi(p=Medium1.p_default, T=T_a2_nominal, phi = 1)
              "Absolute humidity of outlet at saturation condition"
              annotation (Dialog(group="Nominal thermal performance",
                                 enable=not sensibleOnly1));
            parameter flo flowRegime_nominal(fixed=false)
              "Heat exchanger flow regime at nominal flow rates";
            flo flowRegime(fixed=false, start=flowRegime_nominal)
              "Heat exchanger flow regime";

            // todo: bidirectional flow
            Modelica.SIunits.SpecificHeatCapacity cp1Wet=
              if sensibleOnly1
              then cp1_nominal
              else max((inStream(port_a1.h_outflow) - hCoi_outMax) *IBPSA.Utilities.Math.Functions.inverseXRegularized(T_in1 - T_in2, delta=1e-2), Medium1.specificHeatCapacityCp(state_a1_inflow))
                "Heat capacity used in the ficticious fluid when condensation occurs in Medium1, according to Braun-Lebrun model";
            Modelica.SIunits.MassFraction xSat1=
              if sensibleOnly1
              then 0
              else IBPSA.Utilities.Psychrometrics.Functions.X_pTphi(p=port_b1.p, T=T_in2, phi = 1);

            Modelica.SIunits.SpecificEnthalpy hCoi_outMax=
              if sensibleOnly1
              then 0
              else
                IBPSA.Media.Air.specificEnthalpy_pTX(
                T= T_in2,
                p=port_b1.p,
                X={min(xSat1,inStream(port_a1.Xi_outflow[1]))})
                "Outlet air enthalpy of Medium1";
            Real QLat1 = mWat1_flow*lambda "Latent heat load";
          initial equation
            assert(m1_flow_nominal > 0,
              "m1_flow_nominal must be positive, m1_flow_nominal = " + String(
              m1_flow_nominal));
            assert(m2_flow_nominal > 0,
              "m2_flow_nominal must be positive, m2_flow_nominal = " + String(
              m2_flow_nominal));

            cp1_nominal = Medium1.specificHeatCapacityCp(sta1_default)*(1+max(0, (X_w1_nominal -xSat1_nominal)*m1_flow_nominal*lambda)/Q_flow_nominal);
            cp2_nominal = Medium2.specificHeatCapacityCp(sta2_default);

            // Heat transferred from fluid 1 to 2 at nominal condition
            C1_flow_nominal = m1_flow_nominal*cp1_nominal;
            C2_flow_nominal = m2_flow_nominal*cp2_nominal;
            CMin_flow_nominal = min(C1_flow_nominal, C2_flow_nominal);
            CMax_flow_nominal = max(C1_flow_nominal, C2_flow_nominal);
            Z_nominal = CMin_flow_nominal/CMax_flow_nominal;
            Q_flow_nominal = m1_flow_nominal*cp1_nominal*(T_a1_nominal - T_b1_nominal);
            if use_Q_flow_nominal then
              Q_flow_nominal = -m2_flow_nominal*cp2_nominal*(T_a2_nominal - T_b2_nominal);
              eps_nominal = abs(Q_flow_nominal/((T_a1_nominal - T_a2_nominal)*
                CMin_flow_nominal));
            else
              T_a1_nominal = Medium1.T_default;
              T_a2_nominal = Medium2.T_default;
              T_b1_nominal = Medium1.T_default;
              T_b2_nominal = Medium2.T_default;
            end if;
            assert(eps_nominal > 0 and eps_nominal < 1,
              "eps_nominal out of bounds, eps_nominal = " + String(eps_nominal) +
              "\n  To achieve the required heat transfer rate at epsilon=0.8, set |T_a1_nominal-T_a2_nominal| = "
               + String(abs(Q_flow_nominal/0.8*CMin_flow_nominal)) +
              "\n  or increase flow rates. The current parameters result in " +
              "\n  CMin_flow_nominal = " + String(CMin_flow_nominal) +
              "\n  CMax_flow_nominal = " + String(CMax_flow_nominal));
            // Assign the flow regime for the given heat exchanger configuration and capacity flow rates
            if (configuration == con.CrossFlowStream1MixedStream2Unmixed) then
              flowRegime_nominal = if (C1_flow_nominal < C2_flow_nominal) then flo.CrossFlowCMinMixedCMaxUnmixed
                 else flo.CrossFlowCMinUnmixedCMaxMixed;
            elseif (configuration == con.CrossFlowStream1UnmixedStream2Mixed) then
              flowRegime_nominal = if (C1_flow_nominal < C2_flow_nominal) then flo.CrossFlowCMinUnmixedCMaxMixed
                 else flo.CrossFlowCMinMixedCMaxUnmixed;
            elseif (configuration == con.ParallelFlow) then
              flowRegime_nominal = flo.ParallelFlow;
            elseif (configuration == con.CounterFlow) then
              flowRegime_nominal = flo.CounterFlow;
            elseif (configuration == con.CrossFlowUnmixed) then
              flowRegime_nominal = flo.CrossFlowUnmixed;
            else
              // Invalid flow regime. Assign a value to flowRegime_nominal, and stop with an assert
              flowRegime_nominal = flo.CrossFlowUnmixed;
              assert(configuration >= con.ParallelFlow and configuration <= con.CrossFlowStream1UnmixedStream2Mixed,
                "Invalid heat exchanger configuration.");
            end if;
            // The equation sorter of Dymola 7.3 does not guarantee that the above assert is tested prior to the
            // function call on the next line. Thus, we add the test on eps_nominal to avoid an error in ntu_epsilonZ
            // for invalid input arguments
            NTU_nominal = if (eps_nominal > 0 and eps_nominal < 1) then IBPSA.Fluid.HeatExchangers.BaseClasses.ntu_epsilonZ(
                        eps=eps_nominal,
                        Z=Z_nominal,
                        flowRegime=Integer(flowRegime_nominal)) else 0;
            UA_nominal = NTU_nominal*CMin_flow_nominal;
          equation
            // Assign the flow regime for the given heat exchanger configuration and capacity flow rates
            if (configuration == con.ParallelFlow) then
              flowRegime = if (C1_flow*C2_flow >= 0) then flo.ParallelFlow else flo.CounterFlow;
            elseif (configuration == con.CounterFlow) then
              flowRegime = if (C1_flow*C2_flow >= 0) then flo.CounterFlow else flo.ParallelFlow;
            elseif (configuration == con.CrossFlowUnmixed) then
              flowRegime = flo.CrossFlowUnmixed;
            elseif (configuration == con.CrossFlowStream1MixedStream2Unmixed) then
              flowRegime = if (C1_flow < C2_flow) then flo.CrossFlowCMinMixedCMaxUnmixed
                 else flo.CrossFlowCMinUnmixedCMaxMixed;
            else
              // have ( configuration == con.CrossFlowStream1UnmixedStream2Mixed)
              flowRegime = if (C1_flow < C2_flow) then flo.CrossFlowCMinUnmixedCMaxMixed
                 else flo.CrossFlowCMinMixedCMaxUnmixed;
            end if;

            // Effectiveness
            eps = IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_C(
                        UA=UA,
                        C1_flow=C1_flow,
                        C2_flow=C2_flow,
                        flowRegime=Integer(flowRegime),
                        CMin_flow_nominal=CMin_flow_nominal,
                        CMax_flow_nominal=CMax_flow_nominal,
                        delta=delta);

            annotation (
              Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
                      100}}), graphics={Rectangle(
                    extent={{-70,78},{70,-82}},
                    lineColor={0,0,255},
                    pattern=LinePattern.None,
                    fillColor={95,95,95},
                    fillPattern=FillPattern.Solid)}),
          defaultComponentName="hex",
              Documentation(info="<html>
<p>
Partial model of a heat exchanger without humidity condensation.
This model transfers heat in the amount of
</p>
<p align=\"center\" style=\"font-style:italic;\">
  Q = Q<sub>max</sub>  &epsilon;<br/>
  &epsilon; = f(NTU, Z, flowRegime),
</p>
<p>
where
<i>Q<sub>max</sub></i> is the maximum heat that can be transferred,
<i>&epsilon;</i> is the heat transfer effectiveness,
<i>NTU</i> is the Number of Transfer Units,
<i>Z</i> is the ratio of minimum to maximum capacity flow rate and
<i>flowRegime</i> is the heat exchanger flow regime.
such as
parallel flow, cross flow or counter flow.
</p>
<p>
The flow regimes depend on the heat exchanger configuration. All configurations
defined in
<a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerConfiguration\">
IBPSA.Fluid.Types.HeatExchangerConfiguration</a>
are supported.
</p>
<p>
Models that extend from this partial model need to provide an assignment
for <code>UA</code>.
</p>
</html>",           revisions="<html>
<ul>
<li>
January 10, 2018 by Michael Wetter:<br/>
Removed variable <code>Z</code> that is not used.
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/1328\">issue 1328</a>.
</li>
<li>
January 10, 2018 by Filip Jorissen:<br/>
Corrected an error where the value of NTU was assigned to Z.
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/1328\">issue 1328</a>.
</li>
<li>
February 27, 2016 by Michael Wetter:<br/>
Introduced <code>sta1_default</code> and <code>sta2_default</code>
to enable translation under OpenModelica.
Removed <code>max=1</code> attribute for <code>Z</code>. This is needed as near
zero flow, <code>Z</code> can be larger than one due to the regularization.
As <code>Z</code> is not used in this model other than for reporting, this bound
need not be enforced (and the calculation of <code>eps</code> is fine at these small flow rates).
This is for
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/490\">issue 490</a>.
</li>
<li>
April 29, 2014 by Michael Wetter:<br/>
Changed <code>assert</code> statement to avoid comparing
enumeration with an integer, which triggers a warning
in Dymola 2015.
</li>
<li>
July 30, 2013 by Michael Wetter:<br/>
Updated model to use new variable <code>mWat_flow</code>
in the base class.
</li>
<li>
February 12, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end PartialEffectivenessNTU;

          function epsilon_C
            "Computes heat exchanger effectiveness for given capacity flow rates and heat exchanger flow regime"
            input Modelica.SIunits.ThermalConductance UA "UA value";
            input Modelica.SIunits.ThermalConductance C1_flow
              "Enthalpy flow rate medium 1";
            input Modelica.SIunits.ThermalConductance C2_flow
              "Enthalpy flow rate medium 2";
            input Integer flowRegime
              "Heat exchanger flow regime, see  IBPSA.Fluid.Types.HeatExchangerFlowRegime";
            input Modelica.SIunits.ThermalConductance CMin_flow_nominal
              "Minimum enthalpy flow rate at nominal condition";
            input Modelica.SIunits.ThermalConductance CMax_flow_nominal
              "Maximum enthalpy flow rate at nominal condition";
            input Real delta = 1E-3 "Small value used for smoothing";
            output Real eps(min=0, max=1) "Heat exchanger effectiveness";

          protected
            Modelica.SIunits.ThermalConductance deltaCMin
              "Small number for capacity flow rate";
            Modelica.SIunits.ThermalConductance deltaCMax
              "Small number for capacity flow rate";
            Modelica.SIunits.ThermalConductance CMin_flow "Minimum capacity flow rate";
            Modelica.SIunits.ThermalConductance CMax_flow "Maximum capacity flow rate";
            Modelica.SIunits.ThermalConductance CMinNZ_flow
              "Minimum capacity flow rate, bounded away from zero";
            Modelica.SIunits.ThermalConductance CMaxNZ_flow
              "Maximum capacity flow rate, bounded away from zero";
            Real gaiEps(min=0, max=1)
              "Gain used to force UA to zero for very small flow rates";
            Real gaiNTU(min=1E-10, max=1)
              "Gain used to force NTU to a number slightly above zero for very small flow rates. Because NTU is used in NTU^-(0.22), it must not be zero.";
            Real NTU "Number of transfer units";
            Real Z(min=0, max=1) "Ratio of capacity flow rate (CMin/CMax)";

          algorithm
            deltaCMin := delta*CMin_flow_nominal;
            deltaCMax := delta*CMax_flow_nominal;
            // effectiveness
            CMin_flow := IBPSA.Utilities.Math.Functions.smoothMin(
                        C1_flow,
                        C2_flow,
                        deltaCMin/4);
            CMax_flow := IBPSA.Utilities.Math.Functions.smoothMax(
                        C1_flow,
                        C2_flow,
                        deltaCMax/4);
            // CMin and CMax, constrained to be non-zero to compute eps-NTU-Z relationship
            CMinNZ_flow := IBPSA.Utilities.Math.Functions.smoothMax(
                        CMin_flow,
                        deltaCMin,
                        deltaCMin/4);
            CMaxNZ_flow := IBPSA.Utilities.Math.Functions.smoothMax(
                        CMax_flow,
                        deltaCMax,
                        deltaCMax/4);
            Z := CMin_flow/CMaxNZ_flow+1E-10*deltaCMin;
            // Gain that goes to zero as CMin_flow gets below deltaCMin
            // This is needed to allow zero flow
            gaiEps := IBPSA.Utilities.Math.Functions.spliceFunction(
                        pos=1,
                        neg=0,
                        x=CMin_flow - deltaCMin,
                        deltax=deltaCMin/2);
            gaiNTU := IBPSA.Utilities.Math.Functions.spliceFunction(
                        pos=1,
                        neg=delta,
                        x=CMin_flow - deltaCMin,
                        deltax=deltaCMin/2);

            NTU := gaiNTU*UA/CMinNZ_flow;
            eps := gaiEps*IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ(
                        NTU=NTU,
                        Z=Z,
                        flowRegime=flowRegime);

            annotation (
            Inline=false,
            smoothOrder=1,
            Documentation(info="<html>
<p>
This function computes the heat exchanger effectiveness,
the Number of Transfer Units, and the capacity flow ratio
for given capacity flow rates.
</p>
<p>
The implementation allows for zero flow rate.
As <code>CMin_flow</code> crosses <code>delta*CMin_flow_nominal</code> from above,
the Number of Transfer Units and the heat exchanger effectiveness go to zero.
</p>
<p>
The different options for the flow regime are declared in
<a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerFlowRegime\">
IBPSA.Fluid.Types.HeatExchangerFlowRegime</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
January 10, 2018, by Michael Wetter:<br/>
Removed outputs <code>Z</code> and <code>NTU</code> as they are not used by other models.
Removed <code>if</code> statement that can cause a discontinuous derivative.
</li>
<li>
July 7, 2014, by Michael Wetter:<br/>
Changed the type of the input <code>flowRegime</code> from
<code>IBPSA.Fluid.Types.HeatExchangerFlowRegime</code>
to <code>Integer</code>.
This was done to have the same argument list as
<a href=\"modelica://IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ\">
IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ</a>,
in which the type had to be changed.
</li>
<li>
July 6, 2014, by Michael Wetter:<br/>
Removed unused <code>import</code> statement.
</li>
<li>
February 20, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end epsilon_C;

          function epsilon_ntuZ
            "Computes heat exchanger effectiveness for given number of transfer units and heat exchanger flow regime"
            import f = Air.FCU.IBPSA.Fluid.Types.HeatExchangerFlowRegime;
            input Real NTU "Number of transfer units";
            input Real Z(min=0, max=1) "Ratio of capacity flow rate (CMin/CMax)";
            input Integer flowRegime
              "Heat exchanger flow regime, see  IBPSA.Fluid.Types.HeatExchangerFlowRegime";
            output Real eps(min=0, max=1) "Heat exchanger effectiveness";
          protected
            Real a "Auxiliary variable";
          algorithm
            if (flowRegime == Integer(f.ParallelFlow)) then // parallel flow
              a := 0;
              eps := (1 - Modelica.Math.exp(-NTU*(1 + Z)))/(1 + Z);
            elseif (flowRegime == Integer(f.CounterFlow)) then// counter flow
             // a is constraining Z since eps is not defined for Z=1.
              a := smooth(1, if Z < 0.97 then Z else IBPSA.Utilities.Math.Functions.smoothMin(
                          x1=Z,
                          x2=0.98,
                          deltaX=0.01));
              eps := (1 - Modelica.Math.exp(-NTU*(1 - a)))/(1 - a*Modelica.Math.exp(-NTU*(
                1 - a)));
            elseif (flowRegime == Integer(f.CrossFlowUnmixed)) then
             a := NTU^(-0.22);
              eps := 1 - Modelica.Math.exp( ( Modelica.Math.exp( - NTU * Z * a)  - 1)  / (Z * a));
            elseif (flowRegime == Integer(f.CrossFlowCMinUnmixedCMaxMixed)) then
              // cross flow, (single pass), CMax mixed, CMin unmixed. (Coil with one row.)
              a := 0;
              eps := (1 - Modelica.Math.exp(-Z*(1 - Modelica.Math.exp(-NTU))))/Z;
            elseif (flowRegime == Integer(f.CrossFlowCMinMixedCMaxUnmixed)) then
              // cross flow, (single pass), CMin mixed, CMax unmixed.
              a := 0;
              eps := 1 - Modelica.Math.exp(-(1 - Modelica.Math.exp(-Z*NTU))/Z);
            elseif (flowRegime == Integer(f.ConstantTemperaturePhaseChange)) then
              // one side is experiencing constant temperature phase change
              // Z is unused
              a := 0;
              eps := 1 - Modelica.Math.exp(-NTU);
            else
              a := 0;
              eps := 0;
              assert(Integer(f.ParallelFlow) <= flowRegime and
                     flowRegime <= Integer(f.ConstantTemperaturePhaseChange),
                     "Flow regime is not implemented.");
            end if;
            annotation(preferredView="info",
                       inverse(NTU=IBPSA.Fluid.HeatExchangers.BaseClasses.ntu_epsilonZ(eps=eps, Z=Z, flowRegime=flowRegime)),
                     smoothOrder=1,
                     Documentation(info="<html>
<p>
This function computes the heat exchanger effectiveness for a given number of transfer units, capacity flow ratio and heat exchanger flow regime.
The different options for the flow regime are declared in
<a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerFlowRegime\">
IBPSA.Fluid.Types.HeatExchangerFlowRegime</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
September 28, 2016, by Massimo Cimmino:<br/>
Added case for constant temperature phase change on one side of
the heat exchanger.
</li>
<li>
July 7, 2014, by Michael Wetter:<br/>
Changed the type of the input <code>flowRegime</code> from
<code>IBPSA.Fluid.Types.HeatExchangerFlowRegime</code>
to <code>Integer</code>.
This was required because this argument is passed in Dymola 2015 in the function
<a href=\"modelica://IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_C\">
IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_C</a>
as an integer. Without this change, a translation warning occurs.
</li>
<li>
September 25, 2013, by Michael Wetter:<br/>
Changed test in the <code>assert</code> statement as OpenModelica
had an error when comparing enumerations with integers.
</li>
<li>
February 11, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end epsilon_ntuZ;

          function ntu_epsilonZ
            "Computes number of transfer units for given heat exchanger effectiveness and heat exchanger flow regime"
            import f = Air.FCU.IBPSA.Fluid.Types.HeatExchangerFlowRegime;
            input Real eps(min=0, max=0.999) "Heat exchanger effectiveness";
            input Real Z(min=0, max=1) "Ratio of capacity flow rate (CMin/CMax)";
            input Integer flowRegime
              "Heat exchanger flow regime";
            output Real NTU "Number of transfer units";

          protected
            Real a "Auxiliary variable";
            constant Modelica.Media.Common.OneNonLinearEquation.f_nonlinear_Data dummy
              "Dummy data for nonlinear function call";
          algorithm
            if (flowRegime == Integer(f.ParallelFlow)) then // parallel flow
              a := Z+1;
              assert(eps < 1/a,
                "Invalid input data. eps > 1/(1+Z) is physically not possible for parallel flow.
  Received eps = "           + String(eps) + "
             Z = "           + String(Z) + "
       1/(Z+1) = "           + String(1/a));
              NTU := -(Modelica.Math.log(1-eps*a))/(a);
            elseif (flowRegime == Integer(f.CounterFlow)) then// counter flow
             // a is constraining Z since eps is not defined for Z=1.
              a := smooth(1, if Z < 0.97 then Z else IBPSA.Utilities.Math.Functions.smoothMin(
                          x1=Z,
                          x2=0.98,
                          deltaX=0.01));
              NTU := Modelica.Math.log((1-eps)/(1-eps*a)) / (a-1);

            elseif (flowRegime == Integer(f.CrossFlowUnmixed)) then
              a := 0;
              // The function Internal.solve evaluates epsilon_ntuZ at NTU=x_min-1e-10 and NTU=x_max+1e-10
              // when it solves iteratively epsilon_ntuZ for ntu
              // Therefore, we set x_min=1.5*1e-10 to prevent computing NTU^(-0.22)=(-1e-10)^(-0.22).
              NTU := IBPSA.Fluid.HeatExchangers.BaseClasses.Internal.solve(
                          y_zero=eps,
                          x_min=1.5*1e-10,
                          x_max=1E6,
                          pressure=Z,
                          f_nonlinear_data=dummy);
            elseif (flowRegime == Integer(f.CrossFlowCMinUnmixedCMaxMixed)) then
              // cross flow, (single pass), CMax mixed, CMin unmixed. (Coil with one row.)
              a := smooth(1, if Z > 0.03 then Z else IBPSA.Utilities.Math.Functions.smoothMin(
                          x1=0.02,
                          x2=Z,
                          deltaX=0.01));
              NTU := -Modelica.Math.log(1+(Modelica.Math.log(1-eps*a)/a));
            elseif (flowRegime == Integer(f.CrossFlowCMinMixedCMaxUnmixed)) then
              // cross flow, (single pass), CMin mixed, CMax unmixed.
              a := smooth(1, if Z > 0.03 then Z else IBPSA.Utilities.Math.Functions.smoothMin(
                          x1=0.02,
                          x2=Z,
                          deltaX=0.01));
              NTU := -Modelica.Math.log(1+Z*Modelica.Math.log(1-eps))/Z;
            elseif (flowRegime == Integer(f.ConstantTemperaturePhaseChange)) then
              // one side is experiencing constant temperature phase change
              // Z is unused
              a := 0;
              NTU := -Modelica.Math.log((1-eps));
            else
              a := 0;
              NTU := 0;
              assert(Integer(f.ParallelFlow) <= flowRegime and
                     flowRegime <= Integer(f.ConstantTemperaturePhaseChange),
                     "Flow regime is not implemented.");
            end if;

            annotation (preferredView="info",
                       inverse(eps=IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ(NTU=NTU, Z=Z, flowRegime=flowRegime)),
                     smoothOrder=1,
          Documentation(info="<html>
<p>
This function computes the number of transfer units for a given heat exchanger effectiveness,
capacity flow ratio and heat exchanger flow regime.
The different options for the flow regime are declared in
<a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerFlowRegime\">
IBPSA.Fluid.Types.HeatExchangerFlowRegime</a>.
</p>
<p>
Note that for the flow regime <code>CrossFlowUnmixed</code>, computing the
function requires the numerical solution of an equation in one variable.
This is handled internally and not exposed to the global solver.
</p>
</html>", revisions="<html>
<ul>
<li>
September 28, 2016, by Massimo Cimmino:<br/>
Added case for constant temperature phase change on one side of
the heat exchanger.
</li>
<li>
July 7, 2014, by Michael Wetter:<br/>
Changed the type of the input <code>flowRegime</code> from
<code>IBPSA.Fluid.Types.HeatExchangerFlowRegime</code>
to <code>Integer</code>.
This was done to have the same argument list as
<a href=\"modelica://IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ\">
IBPSA.Fluid.HeatExchangers.BaseClasses.epsilon_ntuZ</a>,
in which the type had to be changed.
</li>
<li>
April 29, 2013, by Michael Wetter:<br/>
Added dummy argument to function call of <code>Internal.solve</code>
to avoid a warning during model check in Dymola 2015.
</li>
<li>
August 10, 2011, by Michael Wetter:<br/>
Changed implementation to use
<code>Modelica.Media.Common.OneNonLinearEquation</code> instead of
<code>IBPSA.Utilities.Math.BaseClasses.OneNonLinearEquation</code>.
</li>
<li>
February 11, 2010, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end ntu_epsilonZ;
        annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains base classes that are used to construct the models in
<a href=\"modelica://IBPSA.Fluid.HeatExchangers\">IBPSA.Fluid.HeatExchangers</a>.
</p>
</html>"));
        end BaseClasses;
      annotation (preferredView="info", Documentation(info="<html>
This package contains models for heat exchangers with and without humidity condensation.
</html>"));
      end HeatExchangers;

      package Types "Package with type definitions"
        extends Modelica.Icons.TypesPackage;

        type HeatExchangerConfiguration = enumeration(
            ParallelFlow "Parallel flow",
            CounterFlow "Counter flow",
            CrossFlowUnmixed "Cross flow, both streams unmixed",
            CrossFlowStream1MixedStream2Unmixed
              "Cross flow, stream 1 mixed, stream 2 unmixed",
            CrossFlowStream1UnmixedStream2Mixed
              "Cross flow, stream 1 unmixed, stream 2 mixed",
            ConstantTemperaturePhaseChange "Constant temperature phase change in one stream")
          "Enumeration for heat exchanger construction"
        annotation(Documentation(info="<html>
<p>
 Enumeration that defines the heat exchanger construction.
</p>
<p>
The following heat exchanger configurations are available in this enumeration:
</p>
<table summary=\"summary\" border=\"1\">
<tr><th>Enumeration</th><th>Description</th></tr>
<tr><td>ParallelFlow</td><td>Parallel flow</td></tr>
<tr><td>CounterFlow</td><td>Counter flow</td></tr>
<tr><td>CrossFlowUnmixed</td><td>Cross flow, both streams unmixed</td></tr>
<tr><td>CrossFlowStream1MixedStream2Unmixed</td><td>Cross flow, stream 1 mixed, stream 2 unmixed</td></tr>
<tr><td>CrossFlowStream1UnmixedStream2Mixed</td><td>Cross flow, stream 1 unmixed, stream 2 mixed</td></tr>
<tr><td>ConstantTemperaturePhaseChange</td><td>Constant temperature phase change in one stream</td></tr>
</table>
<p>
Note that for a given heat exchanger, the
 <code>HeatExchangerConfiguration</code> is fixed. However, if the capacity
 flow rates change, then the
 <a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerFlowRegime\">
 IBPSA.Fluid.Types.HeatExchangerFlowRegime</a> may change. For example,
 a counter flow heat exchanger has <code>HeatExchangerConfiguration=CounterFlow</code>,
 but the <a href=\"modelica://IBPSA.Fluid.Types.HeatExchangerFlowRegime\">
 IBPSA.Fluid.Types.HeatExchangerFlowRegime</a> can change to parallel flow if one of the two capacity flow rates reverts
 its direction.
 </p>
</html>",       revisions=
                "<html>
<ul>
<li>
March 27, 2017, by Michael Wetter:<br/>
Added <code>ConstantTemperaturePhaseChange</code>.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/694\">
IBPSA #694</a>.
</li>
<li>
February 18, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        type HeatExchangerFlowRegime = enumeration(
            ParallelFlow "Parallel flow",
            CounterFlow "Counter flow",
            CrossFlowUnmixed "Cross flow, both streams unmixed",
            CrossFlowCMinMixedCMaxUnmixed "Cross flow, CMin mixed,   CMax unmixed",
            CrossFlowCMinUnmixedCMaxMixed "Cross flow, CMin unmixed, CMax mixed",
            ConstantTemperaturePhaseChange "Constant temperature phase change in one stream")
          "Enumeration for heat exchanger flow configuration"
        annotation(Documentation(info="<html>
<p>
 Enumeration to define the heat exchanger flow regime.
</p>
<p>
This enumeration defines for the current capacity flow rate the kind of
heat transfer relation that will be used to compute the relation between
effectiveness and Number of Transfer Units.
</p>
<p>
The following heat exchanger flow regimes are available in this enumeration:
</p>
<table summary=\"summary\" border=\"1\">
<tr><th>Enumeration</th><th>Description</th></tr>
<tr><td>ParallelFlow</td><td>Parallel flow</td></tr>
<tr><td>CounterFlow</td><td>Counter flow</td></tr>
<tr><td>CrossFlowUnmixed</td><td>Cross flow, both streams unmixed</td></tr>
<tr><td>CrossFlowCMinMixedCMaxUnmixed</td><td>Cross flow, CMin mixed,   CMax unmixed</td></tr>
<tr><td>CrossFlowCMinUnmixedCMaxMixed</td><td>Cross flow, CMin unmixed, CMax mixed</td></tr>
<tr><td>ConstantTemperaturePhaseChange</td><td>Constant temperature phase change in one stream</td></tr>
</table>
</html>",       revisions="<html>
<ul>
<li>
March 27, 2017, by Michael Wetter:<br/>
Added <code>ConstantTemperaturePhaseChange</code>.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/694\">
IBPSA #694</a>.
</li>
<li>
February 18, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
       annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains type definitions.
</p>
</html>"));
      end Types;

      package Interfaces "Package with interfaces for fluid models"
        extends Modelica.Icons.InterfacesPackage;

        partial model PartialFourPort "Partial model with four ports"

          replaceable package Medium1 =
            Modelica.Media.Interfaces.PartialMedium "Medium 1 in the component"
              annotation (choices(
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Air          "Moist air"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Water          "Water"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Antifreeze.PropyleneGlycolWater
                    (
                  property_T=293.15,
                  X_a=0.40)
                  "Propylene glycol water, 40% mass fraction")));
          replaceable package Medium2 =
            Modelica.Media.Interfaces.PartialMedium "Medium 2 in the component"
              annotation (choices(
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Air          "Moist air"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Water          "Water"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Antifreeze.PropyleneGlycolWater
                    (
                  property_T=293.15,
                  X_a=0.40)
                  "Propylene glycol water, 40% mass fraction")));

          parameter Boolean allowFlowReversal1 = true
            "= false to simplify equations, assuming, but not enforcing, no flow reversal for medium 1"
            annotation(Dialog(tab="Assumptions"), Evaluate=true);
          parameter Boolean allowFlowReversal2 = true
            "= false to simplify equations, assuming, but not enforcing, no flow reversal for medium 2"
            annotation(Dialog(tab="Assumptions"), Evaluate=true);

          Modelica.Fluid.Interfaces.FluidPort_a port_a1(
                             redeclare final package Medium = Medium1,
                             m_flow(min=if allowFlowReversal1 then -Modelica.Constants.inf else 0),
                             h_outflow(start = Medium1.h_default, nominal = Medium1.h_default))
            "Fluid connector a1 (positive design flow direction is from port_a1 to port_b1)"
            annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
          Modelica.Fluid.Interfaces.FluidPort_b port_b1(
                             redeclare final package Medium = Medium1,
                             m_flow(max=if allowFlowReversal1 then +Modelica.Constants.inf else 0),
                             h_outflow(start = Medium1.h_default, nominal = Medium1.h_default))
            "Fluid connector b1 (positive design flow direction is from port_a1 to port_b1)"
            annotation (Placement(transformation(extent={{110,50},{90,70}})));

          Modelica.Fluid.Interfaces.FluidPort_a port_a2(
                             redeclare final package Medium = Medium2,
                             m_flow(min=if allowFlowReversal2 then -Modelica.Constants.inf else 0),
                             h_outflow(start = Medium2.h_default, nominal = Medium2.h_default))
            "Fluid connector a2 (positive design flow direction is from port_a2 to port_b2)"
            annotation (Placement(transformation(extent={{90,-70},{110,-50}})));
          Modelica.Fluid.Interfaces.FluidPort_b port_b2(
                             redeclare final package Medium = Medium2,
                             m_flow(max=if allowFlowReversal2 then +Modelica.Constants.inf else 0),
                             h_outflow(start = Medium2.h_default, nominal = Medium2.h_default))
            "Fluid connector b2 (positive design flow direction is from port_a2 to port_b2)"
            annotation (Placement(transformation(extent={{-90,-70},{-110,-50}})));

          annotation (
            preferredView="info",
            Documentation(info="<html>
<p>
This model defines an interface for components with four ports.
The parameters <code>allowFlowReversal1</code> and
<code>allowFlowReversal2</code> may be used by models that extend
this model to treat flow reversal.
</p>
<p>
This model is identical to
<a href=\"modelica://Modelica.Fluid.Interfaces.PartialTwoPort\">
Modelica.Fluid.Interfaces.PartialTwoPort</a>, except for the
fowllowing:
</p>
<ol>
<li>it has four ports, and
</li>
<li>
the parameters <code>port_a_exposesState</code>,
<code>port_b_exposesState</code> and
<code>showDesignFlowDirection</code>
are not implemented.
</li>
</ol>
</html>",         revisions="<html>
<ul>
<li>
January 18, 2019, by Jianjun Hu:<br/>
Limited the media choice.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1050\">#1050</a>.
</li>
<li>
July 8, 2018, by Filip Jorissen:<br/>
Added nominal value of <code>h_outflow</code> in <code>FluidPorts</code>.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/977\">#977</a>.
</li>
<li>
November 12, 2015, by Michael Wetter:<br/>
Renamed model from <code>FourPort</code> to
<code>PartialFourPort</code>.
Removed parameters
<code>h_outflow_a1_start</code>,
<code>h_outflow_b1_start</code>,
<code>h_outflow_a2_start</code> and
<code>h_outflow_b2_start</code>.
This is for issue
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/299\">#299</a>.
</li>
<li>
October 30, 2015, by Matthis Thorade:<br/>
Added <code>partial</code> keyword to model declaration.
</li>
<li>
October 6, 2014, by Michael Wetter:<br/>
Changed medium declaration in ports to be final.
</li>
<li>
October 3, 2014, by Michael Wetter:<br/>
Changed assignment of nominal value to avoid in OpenModelica the warning
alias set with different nominal values.
</li>
<li>
November 12, 2013, by Michael Wetter:<br/>
Removed <code>import Modelica.Constants</code> statement.
</li>
<li>
September 26, 2013 by Michael Wetter:<br/>
Added missing <code>each</code> keyword in declaration of nominal value for
<code>Xi_outflow</code>.
</li>
<li>
September 17, 2010 by Michael Wetter:<br/>
Fixed bug: The start value for <code>port_b1.h_outflow</code>
was set to <code>h_outflow_b2_start</code> instead of <code>h_outflow_b1_start</code>.
</li>
<li>
February 26, 2010 by Michael Wetter:<br/>
Added start values for outflowing enthalpy because they
are often iteration variables in nonlinear equation systems.
</li>
</ul>
</html>"),  Icon(coordinateSystem(
                  preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}},
                  grid={1,1}), graphics={Text(
                  extent={{-151,147},{149,107}},
                  lineColor={0,0,255},
                  fillPattern=FillPattern.HorizontalCylinder,
                  fillColor={0,127,255},
                  textString="%name")}));
        end PartialFourPort;

        partial model PartialFourPortInterface
          "Partial model transporting fluid between two ports without storing mass or energy"
          extends IBPSA.Fluid.Interfaces.PartialFourPort;
          parameter Modelica.SIunits.MassFlowRate m1_flow_nominal(min=0)
            "Nominal mass flow rate"
            annotation(Dialog(group = "Nominal condition"));
          parameter Modelica.SIunits.MassFlowRate m2_flow_nominal(min=0)
            "Nominal mass flow rate"
            annotation(Dialog(group = "Nominal condition"));
          parameter Medium1.MassFlowRate m1_flow_small(min=0) = 1E-4*abs(m1_flow_nominal)
            "Small mass flow rate for regularization of zero flow"
            annotation(Dialog(tab = "Advanced"));
          parameter Medium2.MassFlowRate m2_flow_small(min=0) = 1E-4*abs(m2_flow_nominal)
            "Small mass flow rate for regularization of zero flow"
            annotation(Dialog(tab = "Advanced"));
          // Diagnostics
          parameter Boolean show_T = false
            "= true, if actual temperature at port is computed"
            annotation(Dialog(tab="Advanced",group="Diagnostics"));

          Medium1.MassFlowRate m1_flow = port_a1.m_flow
            "Mass flow rate from port_a1 to port_b1 (m1_flow > 0 is design flow direction)";
          Modelica.SIunits.PressureDifference dp1(displayUnit="Pa") = port_a1.p - port_b1.p
            "Pressure difference between port_a1 and port_b1";

          Medium2.MassFlowRate m2_flow = port_a2.m_flow
            "Mass flow rate from port_a2 to port_b2 (m2_flow > 0 is design flow direction)";
          Modelica.SIunits.PressureDifference dp2(displayUnit="Pa") = port_a2.p - port_b2.p
            "Pressure difference between port_a2 and port_b2";

          Medium1.ThermodynamicState sta_a1=
              Medium1.setState_phX(port_a1.p,
                                   noEvent(actualStream(port_a1.h_outflow)),
                                   noEvent(actualStream(port_a1.Xi_outflow))) if
                 show_T "Medium properties in port_a1";
          Medium1.ThermodynamicState sta_b1=
              Medium1.setState_phX(port_b1.p,
                                   noEvent(actualStream(port_b1.h_outflow)),
                                   noEvent(actualStream(port_b1.Xi_outflow))) if
                 show_T "Medium properties in port_b1";
          Medium2.ThermodynamicState sta_a2=
              Medium2.setState_phX(port_a2.p,
                                   noEvent(actualStream(port_a2.h_outflow)),
                                   noEvent(actualStream(port_a2.Xi_outflow))) if
                 show_T "Medium properties in port_a2";
          Medium2.ThermodynamicState sta_b2=
              Medium2.setState_phX(port_b2.p,
                                   noEvent(actualStream(port_b2.h_outflow)),
                                   noEvent(actualStream(port_b2.Xi_outflow))) if
                 show_T "Medium properties in port_b2";
        protected
          Medium1.ThermodynamicState state_a1_inflow=
            Medium1.setState_phX(port_a1.p, inStream(port_a1.h_outflow), inStream(port_a1.Xi_outflow))
            "state for medium inflowing through port_a1";
          Medium1.ThermodynamicState state_b1_inflow=
            Medium1.setState_phX(port_b1.p, inStream(port_b1.h_outflow), inStream(port_b1.Xi_outflow))
            "state for medium inflowing through port_b1";
          Medium2.ThermodynamicState state_a2_inflow=
            Medium2.setState_phX(port_a2.p, inStream(port_a2.h_outflow), inStream(port_a2.Xi_outflow))
            "state for medium inflowing through port_a2";
          Medium2.ThermodynamicState state_b2_inflow=
            Medium2.setState_phX(port_b2.p, inStream(port_b2.h_outflow), inStream(port_b2.Xi_outflow))
            "state for medium inflowing through port_b2";

          annotation (
          preferredView="info",
            Documentation(info="<html>
<p>
This component defines the interface for models that
transport two fluid streams between four ports.
It is similar to
<a href=\"modelica://IBPSA.Fluid.Interfaces.PartialTwoPortInterface\">
IBPSA.Fluid.Interfaces.PartialTwoPortInterface</a>,
but it has four ports instead of two.
</p>
<p>
The model is used by other models in this package that add heat transfer,
mass transfer and pressure drop equations.
</p>
</html>",         revisions="<html>
<ul>
<li>
November 3, 2016, by Michael Wetter:<br/>
Moved computation of pressure drop to variable assignment so that
the model won't mix graphical with textual modeling if used as a base
class for a graphically implemented model.
</li>
<li>
November 3, 2016, by Michael Wetter:<br/>
Removed start values for mass flow rate and pressure difference
to simplify the parameter window.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/552\">#552</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
November 13, 2013 by Michael Wetter:<br/>
Removed assignment of <code>min</code> and <code>max</code>
attributes of port mass flow rates, as this is already
done in the base class.
</li>
<li>
November 12, 2013 by Michael Wetter:<br/>
Removed <code>import Modelica.Constants;</code> statement.
</li>
<li>
November 11, 2013 by Michael Wetter:<br/>
Removed the parameter <code>homotopyInitialization</code>
as it is no longer used in this model.
</li>
<li>
November 10, 2013 by Michael Wetter:<br/>
In the computation of <code>sta_a1</code>,
<code>sta_a2</code>, <code>sta_b1</code> and <code>sta_b2</code>,
removed the branch that uses the homotopy operator.
The rational is that these variables are conditionally enables (because
of <code>... if show_T</code>). Therefore, the Modelica Language Specification
does not allow for these variables to be used in any equation. Hence,
the use of the homotopy operator is not needed here.
</li>
<li>
October 10, 2013 by Michael Wetter:<br/>
Added <code>noEvent</code> to the computation of the states at the port.
This is correct, because the states are only used for reporting, but not
to compute any other variable.
Use of the states to compute other variables would violate the Modelica
language, as conditionally removed variables must not be used in any equation.
</li>
<li>
October 8, 2013 by Michael Wetter:<br/>
Removed the computation of <code>V_flow</code> and removed the parameter
<code>show_V_flow</code>.
The reason is that the computation of <code>V_flow</code> required
the use of <code>sta_a</code> (to compute the density),
but <code>sta_a</code> is also a variable that is conditionally
enabled. However, this was not correct Modelica syntax as conditional variables
can only be used in a <code>connect</code>
statement, not in an assignment. Dymola 2014 FD01 beta3 is checking
for this incorrect syntax. Hence, <code>V_flow</code> was removed as its
conditional implementation would require a rather cumbersome implementation
that uses a new connector that carries the state of the medium.
</li>
<li>
April 26, 2013 by Marco Bonvini:<br/>
Moved the definitions of <code>dp1</code> and <code>dp2</code> because they cause some problem with PyFMI.
</li>
<li>
March 27, 2012 by Michael Wetter:<br/>
Replaced the erroneous function call <code>Medium.density</code> with
<code>Medium1.density</code> and <code>Medium2.density</code>.
Changed condition to remove <code>sta_a1</code> and <code>sta_a2</code> to also
compute the states at the inlet port if <code>show_V_flow=true</code>.
The previous implementation resulted in a translation error
if <code>show_V_flow=true</code>, but worked correctly otherwise
because the erroneous function call is removed if  <code>show_V_flow=false</code>.
</li>
<li>
March 27, 2011 by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
March 21, 2010 by Michael Wetter:<br/>
Changed pressure start value from <code>system.p_start</code>
to <code>Medium.p_default</code> since HVAC models may have water and
air, which are typically at different pressures.
</li>
<li>
September 19, 2008 by Michael Wetter:<br/>
Added equations for the mass balance of extra species flow,
i.e., <code>C</code> and <code>mC_flow</code>.
</li>
<li>
April 28, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end PartialFourPortInterface;

        partial model PartialTwoPort "Partial component with two ports"
          replaceable package Medium =
            Modelica.Media.Interfaces.PartialMedium "Medium in the component"
              annotation (choices(
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Air          "Moist air"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Water          "Water"),
                choice(redeclare package Medium =
                    HausM.Components.FCU.IBPSA.Media.Antifreeze.PropyleneGlycolWater
                    ( property_T=293.15,
                      X_a=0.40)
                      "Propylene glycol water, 40% mass fraction")));

          parameter Boolean allowFlowReversal = true
            "= false to simplify equations, assuming, but not enforcing, no flow reversal"
            annotation(Dialog(tab="Assumptions"), Evaluate=true);

          Modelica.Fluid.Interfaces.FluidPort_a port_a(
            redeclare final package Medium = Medium,
             m_flow(min=if allowFlowReversal then -Modelica.Constants.inf else 0),
             h_outflow(start = Medium.h_default, nominal = Medium.h_default))
            "Fluid connector a (positive design flow direction is from port_a to port_b)"
            annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
          Modelica.Fluid.Interfaces.FluidPort_b port_b(
            redeclare final package Medium = Medium,
            m_flow(max=if allowFlowReversal then +Modelica.Constants.inf else 0),
             h_outflow(start = Medium.h_default, nominal = Medium.h_default))
            "Fluid connector b (positive design flow direction is from port_a to port_b)"
            annotation (Placement(transformation(extent={{110,-10},{90,10}})));

          annotation (
            Documentation(info="<html>
<p>
This partial model defines an interface for components with two ports.
The treatment of the design flow direction and of flow reversal are predefined based on the parameter <code>allowFlowReversal</code>.
The component may transport fluid and may have internal storage for a given fluid <code>Medium</code>.
</p>
<h4>Implementation</h4>
<p>
This model is similar to
<a href=\"modelica://Modelica.Fluid.Interfaces.PartialTwoPort\">
Modelica.Fluid.Interfaces.PartialTwoPort</a>
but it does not use the <code>outer system</code> declaration.
This declaration is omitted as in building energy simulation,
many models use multiple media, an in practice,
users have not used this global definition to assign parameters.
</p>
</html>",         revisions="<html>
<ul>
<li>
January 18, 2019, by Jianjun Hu:<br/>
Limited the media choice.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1050\">#1050</a>.
</li>
<li>
July 8, 2018, by Filip Jorissen:<br/>
Added nominal value of <code>h_outflow</code> in <code>FluidPorts</code>.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/977\">#977</a>.
</li>
<li>
November 19, 2015, by Michael Wetter:<br/>
Removed parameters
<code>port_a_exposesState</code> and
<code>port_b_exposesState</code>
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/351\">#351</a>
and
<code>showDesignFlowDirection</code>
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/349\">#349</a>.
</li>
<li>
November 13, 2015, by Michael Wetter:<br/>
Assinged <code>start</code> attribute for leaving
enthalpy at <code>port_a</code> and <code>port_b</code>.
This was done to make the model similar to
<a href=\"modelica://IBPSA.Fluid.Interfaces.PartialFourPort\">
IBPSA.Fluid.Interfaces.PartialFourPort</a>.
</li>
<li>
November 12, 2015, by Michael Wetter:<br/>
Removed import statement.
</li>
<li>
October 21, 2014, by Michael Wetter:<br/>
Revised implementation.
Declared medium in ports to be <code>final</code>.
</li>
<li>
October 20, 2014, by Filip Jorisson:<br/>
First implementation.
</li>
</ul>
</html>"),  Icon(coordinateSystem(
                  preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics={
                Polygon(
                  points={{20,-70},{60,-85},{20,-100},{20,-70}},
                  lineColor={0,128,255},
                  fillColor={0,128,255},
                  fillPattern=FillPattern.Solid,
                  visible=not allowFlowReversal),
                Line(
                  points={{55,-85},{-60,-85}},
                  color={0,128,255},
                  visible=not allowFlowReversal),
                Text(
                  extent={{-149,-114},{151,-154}},
                  lineColor={0,0,255},
                  textString="%name")}));
        end PartialTwoPort;

        partial model PartialTwoPortInterface
          "Partial model transporting fluid between two ports without storing mass or energy"
          extends IBPSA.Fluid.Interfaces.PartialTwoPort(port_a(p(start=Medium.p_default)), port_b(p(start=Medium.p_default)));

          parameter Modelica.SIunits.MassFlowRate m_flow_nominal
            "Nominal mass flow rate"
            annotation(Dialog(group = "Nominal condition"));
          parameter Modelica.SIunits.MassFlowRate m_flow_small(min=0) = 1E-4*abs(m_flow_nominal)
            "Small mass flow rate for regularization of zero flow"
            annotation(Dialog(tab = "Advanced"));
          // Diagnostics
           parameter Boolean show_T = false
            "= true, if actual temperature at port is computed"
            annotation(Dialog(tab="Advanced",group="Diagnostics"));

          Modelica.SIunits.MassFlowRate m_flow(start=_m_flow_start) = port_a.m_flow
            "Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction)";

          Modelica.SIunits.PressureDifference dp(start=_dp_start, displayUnit="Pa") = port_a.p - port_b.p
            "Pressure difference between port_a and port_b";

          Medium.ThermodynamicState sta_a=
              Medium.setState_phX(port_a.p,
                                  noEvent(actualStream(port_a.h_outflow)),
                                  noEvent(actualStream(port_a.Xi_outflow))) if
                 show_T "Medium properties in port_a";

          Medium.ThermodynamicState sta_b=
              Medium.setState_phX(port_b.p,
                                  noEvent(actualStream(port_b.h_outflow)),
                                  noEvent(actualStream(port_b.Xi_outflow))) if
                  show_T "Medium properties in port_b";

        protected
          final parameter Modelica.SIunits.MassFlowRate _m_flow_start = 0
          "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window";
          final parameter Modelica.SIunits.PressureDifference _dp_start(displayUnit="Pa") = 0
          "Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window";

          annotation (
            preferredView="info",
            Documentation(info="<html>
<p>
This component defines the interface for models that
transports a fluid between two ports. It is similar to
<a href=\"Modelica://Modelica.Fluid.Interfaces.PartialTwoPortTransport\">
Modelica.Fluid.Interfaces.PartialTwoPortTransport</a>, but it does not
include the species balance
</p>
<pre>
  port_b.Xi_outflow = inStream(port_a.Xi_outflow);
</pre>
<p>
Thus, it can be used as a base class for a heat <i>and</i> mass transfer component
</p>
<p>
The model is used by other models in this package that add heat transfer,
mass transfer and pressure drop equations. See for example
<a href=\"modelica://IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger\">
IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger</a>.
</p>
</html>",         revisions="<html>
<ul>
<li>
November 3, 2016, by Michael Wetter:<br/>
Renamed protected parameter <code>m_flow_start</code> to avoid
a name clash with
<a href=\"modelica://IBPSA.Fluid.Movers.FlowControlled_m_flow\">
IBPSA.Fluid.Movers.FlowControlled_m_flow</a>
which leads to an error as the definition were different,
and also renamed protected parameter <code>dp_start</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/552\">#552</a>
<br/>
Moved computation of pressure drop to variable assignment so that
the model won't mix graphical with textual modeling if used as a base
class for a graphically implemented model.
</li>
<li>
November 3, 2016, by Michael Wetter:<br/>
Removed start values for mass flow rate and pressure difference
to simplify the parameter window.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/552\">#552</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
October 3, 2014, by Michael Wetter:<br/>
Changed assignment of nominal value to avoid in OpenModelica the warning
alias set with different nominal values.
</li>
<li>
November 12, 2013 by Michael Wetter:<br/>
Removed <code>import Modelica.Constants;</code> statement.
</li>
<li>
November 11, 2013 by Michael Wetter:<br/>
Removed the parameter <code>homotopyInitialization</code>
as it is no longer used in this model.
</li>
<li>
November 10, 2013 by Michael Wetter:<br/>
In the computation of <code>sta_a</code> and <code>sta_b</code>,
removed the branch that uses the homotopy operator.
The rational is that these variables are conditionally enables (because
of <code>... if show_T</code>). Therefore, the Modelica Language Specification
does not allow for these variables to be used in any equation. Hence,
the use of the homotopy operator is not needed here.
</li>
<li>
October 10, 2013 by Michael Wetter:<br/>
Added <code>noEvent</code> to the computation of the states at the port.
This is correct, because the states are only used for reporting, but not
to compute any other variable.
Use of the states to compute other variables would violate the Modelica
language, as conditionally removed variables must not be used in any equation.
</li>
<li>
October 8, 2013 by Michael Wetter:<br/>
Removed the computation of <code>V_flow</code> and removed the parameter
<code>show_V_flow</code>.
The reason is that the computation of <code>V_flow</code> required
the use of <code>sta_a</code> (to compute the density),
but <code>sta_a</code> is also a variable that is conditionally
enabled. However, this was not correct Modelica syntax as conditional variables
can only be used in a <code>connect</code>
statement, not in an assignment. Dymola 2014 FD01 beta3 is checking
for this incorrect syntax. Hence, <code>V_flow</code> was removed as its
conditional implementation would require a rather cumbersome implementation
that uses a new connector that carries the state of the medium.
</li>
<li>
April 26, 2013 by Marco Bonvini:<br/>
Moved the definition of <code>dp</code> because it causes some problem with PyFMI.
</li>
<li>
March 27, 2012 by Michael Wetter:<br/>
Changed condition to remove <code>sta_a</code> to also
compute the state at the inlet port if <code>show_V_flow=true</code>.
The previous implementation resulted in a translation error
if <code>show_V_flow=true</code>, but worked correctly otherwise
because the erroneous function call is removed if  <code>show_V_flow=false</code>.
</li>
<li>
March 27, 2011 by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
March 21, 2010 by Michael Wetter:<br/>
Changed pressure start value from <code>system.p_start</code>
to <code>Medium.p_default</code> since HVAC models may have water and
air, which are typically at different pressures.
</li>
<li>
September 19, 2008 by Michael Wetter:<br/>
Added equations for the mass balance of extra species flow,
i.e., <code>C</code> and <code>mC_flow</code>.
</li>
<li>
March 11, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end PartialTwoPortInterface;

        model StaticFourPortHeatMassExchanger
          "Partial model transporting two fluid streams between four ports without storing mass or energy"
          extends IBPSA.Fluid.Interfaces.PartialFourPortInterface;
          extends IBPSA.Fluid.Interfaces.FourPortFlowResistanceParameters(final computeFlowResistance1=(dp1_nominal > Modelica.Constants.eps), final computeFlowResistance2=(dp2_nominal > Modelica.Constants.eps));

          constant Boolean prescribedHeatFlowRate1 = false
            "Set to true if the heat flow rate into fluid 1 is not a function of the component temperature";
          constant Boolean prescribedHeatFlowRate2 = false
            "Set to true if the heat flow rate into fluid 2 is not a function of the component temperature";

          parameter Boolean homotopyInitialization = true "= true, use homotopy method"
            annotation(Evaluate=true, Dialog(tab="Advanced"));

          // Q1_flow is sensible plus latent heat flow rate
          input Modelica.SIunits.HeatFlowRate Q1_flow
            "Heat transferred into the medium 1";
          input Medium1.MassFlowRate mWat1_flow
            "Moisture mass flow rate added to the medium 1";
          // Q2_flow is sensible plus latent heat flow rate
          input Modelica.SIunits.HeatFlowRate Q2_flow
            "Heat transferred into the medium 2";
          input Medium2.MassFlowRate mWat2_flow
            "Moisture mass flow rate added to the medium 2";
          constant Boolean sensibleOnly1
            "Set to true if sensible exchange only for medium 1";
          constant Boolean sensibleOnly2
            "Set to true if sensible exchange only for medium 2";

        protected
          IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger bal1(
            redeclare final package Medium = Medium1,
            final sensibleOnly=sensibleOnly1,
            final prescribedHeatFlowRate=prescribedHeatFlowRate1,
            final m_flow_nominal=m1_flow_nominal,
            final dp_nominal=dp1_nominal,
            final allowFlowReversal=allowFlowReversal1,
            final m_flow_small=m1_flow_small,
            final homotopyInitialization=homotopyInitialization,
            final from_dp=from_dp1,
            final linearizeFlowResistance=linearizeFlowResistance1,
            final deltaM=deltaM1,
            final Q_flow=Q1_flow,
            final mWat_flow=mWat1_flow) "Model for heat, mass, species, trace substance and pressure balance of stream 1";
          IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger bal2(
            redeclare final package Medium = Medium2,
            final sensibleOnly=sensibleOnly2,
            final prescribedHeatFlowRate=prescribedHeatFlowRate2,
            final m_flow_nominal=m2_flow_nominal,
            final dp_nominal=dp2_nominal,
            final allowFlowReversal=allowFlowReversal2,
            final m_flow_small=m2_flow_small,
            final homotopyInitialization=homotopyInitialization,
            final from_dp=from_dp2,
            final linearizeFlowResistance=linearizeFlowResistance2,
            final deltaM=deltaM2,
            final Q_flow=Q2_flow,
            final mWat_flow=mWat2_flow) "Model for heat, mass, species, trace substance and pressure balance of stream 2";
        equation
          connect(bal1.port_a, port_a1);
          connect(bal1.port_b, port_b1);
          connect(bal2.port_a, port_a2);
          connect(bal2.port_b, port_b2);
          annotation (
            preferredView="info",
            Documentation(info="<html>
<p>
This component transports two fluid streams between four ports, without
storing mass or energy. It is similar to
<a href=\"modelica://IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger\">
IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger</a>,
but it has four ports instead of two.
</p>
<p>
If <code>dp<i>N</i>_nominal &gt; Modelica.Constants.eps</code>,
where <code><i>N</i></code> denotes the fluid <i>1</i> or <i>2</i>,
then the model computes
pressure drop due to flow friction in the respective fluid stream.
The pressure drop is defined by a quadratic function that goes through
the point <code>(m<i>N</i>_flow_nominal, dp<i>N</i>_nominal)</code>.
At <code>|m<i>N</i>_flow| &lt; deltaM<i>N</i> * m<i>N</i>_flow_nominal</code>,
the pressure drop vs. flow relation is linearized.
If the parameter <code>linearizeFlowResistance<i>N</i></code> is set to true,
then the whole pressure drop vs. flow resistance curve is linearized.
</p>

<h4>Implementation</h4>
<p>
This model uses inputs and constants that need to be set by models
that extend or instantiate this model.
The following inputs need to be assigned, where <code><i>N</i></code> denotes <code>1</code> or
<code>2</code>:</p>
<ul>
<li>
<code>Q<i>N</i>_flow</code>, which is the sensible and latent heat flow rate added to the medium <i>N</i>.
</li>
<li>
<code>mWat<i>N</i>_flow</code>, which is the moisture mass flow rate added to the medium <i>N</i>.
</li>
</ul>
<p>
Set the constant <code>sensibleOnly<i>N</i>=true</code> if the model that extends
or instantiates this model sets <code>mWat<i>N</i>_flow = 0</code>.
</p>
<p>
     Note that the model does not implement <code>0 = Q1_flow + Q2_flow</code> or
     <code>0 = mXi1_flow + mXi2_flow</code>. If there is no heat or mass transfer
     with the environment, then a model that extends this model needs to provide these
     equations.
</p>
</html>",         revisions="<html>
<ul>
<li>
April 11, 2017, by Michael Wetter:<br/>
Updated documentation to make clear that <code>Q1_flow</code> and <code>Q2_flow</code>
include latent heat flow rate.<br/>
This is for issue
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/704\">Buildings #704</a>.
</li>
<li>
January 22, 2016 by Michael Wetter:<br/>
Removed assignment of <code>sensibleOnly</code> in <code>bal1</code> and <code>bal2</code>
as this constant has been removed in
<a href=\"modelica://IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger\">
IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger</a>.
</li>
<li>
November 13, 2013 by Michael Wetter:<br/>
Added parameter <code>homotopyInitialization</code> as
it has been removed in the base class.
</li>
<li>
November 13, 2013, by Michael Wetter:<br/>
Removed <code>import Modelica.Constants;</code> statement.
</li>
<li>
October 8, 2013, by Michael Wetter:<br/>
Removed parameter <code>show_V_flow</code>.
</li>
<li>
July 30, 2013 by Michael Wetter:<br/>
Changed connector <code>mXi_flow[Medium.nXi]</code>
to a scalar input connector <code>mWat_flow</code>.
The reason is that <code>mXi_flow</code> does not allow
to compute the other components in <code>mX_flow</code> and
therefore leads to an ambiguous use of the model.
By only requesting <code>mWat_flow</code>, the mass balance
and species balance can be implemented correctly.
</li>
<li>
March 29, 2011, by Michael Wetter:<br/>
Changed energy and mass balance to avoid a division by zero if <code>m_flow=0</code>.
</li>
<li>
March 27, 2011, by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
August 19, 2010, by Michael Wetter:<br/>
Fixed bug in energy and moisture balance that affected results if a component
adds or removes moisture to the air stream.
In the old implementation, the enthalpy and species
outflow at <code>port_b</code> was multiplied with the mass flow rate at
<code>port_a</code>. The old implementation led to small errors that were proportional
to the amount of moisture change. For example, if the moisture added by the component
was <code>0.005 kg/kg</code>, then the error was <code>0.5%</code>.
Also, the results for forward flow and reverse flow differed by this amount.
With the new implementation, the energy and moisture balance is exact.
</li>
<li>
March 22, 2010, by Michael Wetter:<br/>
Added constants <code>sensibleOnly1</code> and
<code>sensibleOnly2</code> to
simplify species balance equations.
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
Added model to compute flow friction.
</li>
<li>
March 25, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),  Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={
                Rectangle(
                  extent={{-70,80},{70,-80}},
                  lineColor={0,0,255},
                  pattern=LinePattern.None,
                  fillColor={95,95,95},
                  fillPattern=FillPattern.Solid),
                Rectangle(
                  extent={{-100,65},{101,55}},
                  lineColor={0,0,255},
                  pattern=LinePattern.None,
                  fillColor={0,0,0},
                  fillPattern=FillPattern.Solid),
                Rectangle(
                  extent={{-100,-55},{101,-65}},
                  lineColor={0,0,255},
                  pattern=LinePattern.None,
                  fillColor={0,0,0},
                  fillPattern=FillPattern.Solid)}));
        end StaticFourPortHeatMassExchanger;

        model StaticTwoPortConservationEquation
          "Partial model for static energy and mass conservation equations"
          extends IBPSA.Fluid.Interfaces.PartialTwoPortInterface;

          constant Boolean simplify_mWat_flow = true
            "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero";

          constant Boolean prescribedHeatFlowRate = false
            "Set to true if the heat flow rate is not a function of a temperature difference to the fluid temperature";

          parameter Boolean use_mWat_flow = false
            "Set to true to enable input connector for moisture mass flow rate"
            annotation(Evaluate=true, Dialog(tab="Advanced"));

          parameter Boolean use_C_flow = false
            "Set to true to enable input connector for trace substance"
            annotation(Evaluate=true, Dialog(tab="Advanced"));

          Modelica.Blocks.Interfaces.RealInput Q_flow(unit="W")
            "Sensible plus latent heat flow rate transferred into the medium"
            annotation (Placement(transformation(extent={{-140,60},{-100,100}})));
          Modelica.Blocks.Interfaces.RealInput mWat_flow(final quantity="MassFlowRate",
                                                         unit="kg/s") if
               use_mWat_flow "Moisture mass flow rate added to the medium"
            annotation (Placement(transformation(extent={{-140,20},{-100,60}})));
          Modelica.Blocks.Interfaces.RealInput[Medium.nC] C_flow if
               use_C_flow "Trace substance mass flow rate added to the medium"
            annotation (Placement(transformation(extent={{-140,-60},{-100,-20}})));

          // Outputs that are needed in models that extend this model
          Modelica.Blocks.Interfaces.RealOutput hOut(unit="J/kg",
                                                     start=Medium.specificEnthalpy_pTX(
                                                             p=Medium.p_default,
                                                             T=Medium.T_default,
                                                             X=Medium.X_default))
            "Leaving specific enthalpy of the component"
            annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=90,
                origin={-50,110}), iconTransformation(
                extent={{-10,-10},{10,10}},
                rotation=90,
                origin={-50,110})));

          Modelica.Blocks.Interfaces.RealOutput XiOut[Medium.nXi](each unit="1",
                                                                  each min=0,
                                                                  each max=1)
            "Leaving species concentration of the component"
            annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=90,
                origin={0,110})));
          Modelica.Blocks.Interfaces.RealOutput COut[Medium.nC](each min=0)
            "Leaving trace substances of the component"
            annotation (Placement(transformation(extent={{-10,-10},{10,10}},
                rotation=90,
                origin={50,110})));

        protected
          final parameter Boolean use_m_flowInv=
            (prescribedHeatFlowRate or use_mWat_flow or use_C_flow)
            "Flag, true if m_flowInv is used in the model"
            annotation (Evaluate=true);
          final parameter Real s[Medium.nXi] = {if Modelica.Utilities.Strings.isEqual(string1=Medium.substanceNames[i],
                                                    string2="Water",
                                                    caseSensitive=false)
                                                    then 1 else 0 for i in 1:Medium.nXi}
            "Vector with zero everywhere except where species is";

          Real m_flowInv(unit="s/kg") "Regularization of 1/m_flow of port_a";

          Modelica.SIunits.MassFlowRate mXi_flow[Medium.nXi]
            "Mass flow rates of independent substances added to the medium";

          // Parameters for inverseXRegularized.
          // These are assigned here for efficiency reason.
          // Otherwise, they would need to be computed each time
          // the function is invocated.
          final parameter Real deltaReg = m_flow_small/1E3
            "Smoothing region for inverseXRegularized";

          final parameter Real deltaInvReg = 1/deltaReg
            "Inverse value of delta for inverseXRegularized";

          final parameter Real aReg = -15*deltaInvReg
            "Polynomial coefficient for inverseXRegularized";
          final parameter Real bReg = 119*deltaInvReg^2
            "Polynomial coefficient for inverseXRegularized";
          final parameter Real cReg = -361*deltaInvReg^3
            "Polynomial coefficient for inverseXRegularized";
          final parameter Real dReg = 534*deltaInvReg^4
            "Polynomial coefficient for inverseXRegularized";
          final parameter Real eReg = -380*deltaInvReg^5
            "Polynomial coefficient for inverseXRegularized";
          final parameter Real fReg = 104*deltaInvReg^6
            "Polynomial coefficient for inverseXRegularized";

          final parameter Medium.ThermodynamicState state_default = Medium.setState_pTX(
              T=Medium.T_default,
              p=Medium.p_default,
              X=Medium.X_default[1:Medium.nXi]) "Medium state at default values";
          // Density at medium default values, used to compute the size of control volumes
          final parameter Modelica.SIunits.SpecificHeatCapacity cp_default=
            Medium.specificHeatCapacityCp(state=state_default)
            "Specific heat capacity, used to verify energy conservation";
          constant Modelica.SIunits.TemperatureDifference dTMax(min=1) = 200
            "Maximum temperature difference across the StaticTwoPortConservationEquation";
          // Conditional connectors
          Modelica.Blocks.Interfaces.RealInput mWat_flow_internal(unit="kg/s")
            "Needed to connect to conditional connector";
          Modelica.Blocks.Interfaces.RealInput C_flow_internal[Medium.nC]
            "Needed to connect to conditional connector";
        initial equation
          // Assert that the substance with name 'water' has been found.
          assert(Medium.nXi == 0 or abs(sum(s)-1) < 1e-5,
              "If Medium.nXi > 1, then substance 'water' must be present for one component.'"
                 + Medium.mediumName + "'.\n"
                 + "Check medium model.");

        equation
          // Conditional connectors
          connect(mWat_flow, mWat_flow_internal);
          if not use_mWat_flow then
            mWat_flow_internal = 0;
          end if;

          connect(C_flow, C_flow_internal);
          if not use_C_flow then
            C_flow_internal = zeros(Medium.nC);
          end if;

          // Species flow rate from connector mWat_flow
          mXi_flow = mWat_flow_internal * s;

          // Regularization of m_flow around the origin to avoid a division by zero
          // m_flowInv is only used if prescribedHeatFlowRate == true, or
          // if the input connectors mWat_flow or C_flow are enabled.
          if use_m_flowInv then
            m_flowInv = IBPSA.Utilities.Math.Functions.inverseXRegularized(
                      x=port_a.m_flow,
                      delta=deltaReg,
                      deltaInv=deltaInvReg,
                      a=aReg,
                      b=bReg,
                      c=cReg,
                      d=dReg,
                      e=eReg,
                      f=fReg);
          else
            // m_flowInv is not used.
            m_flowInv = 0;
          end if;

          if prescribedHeatFlowRate then
            assert(noEvent( abs(Q_flow) < dTMax*cp_default*max(m_flow_small/1E3, abs(m_flow))),
           "In " + getInstanceName() + ":
   The heat flow rate equals "         + String(Q_flow) +
           " W and the mass flow rate equals " + String(m_flow) + " kg/s,
   which results in a temperature difference "         +
           String(abs(Q_flow)/ (cp_default*max(m_flow_small/1E3, abs(m_flow)))) +
           " K > dTMax=" +String(dTMax) + " K.
   This may indicate that energy is not conserved for small mass flow rates.
   The implementation may require prescribedHeatFlowRate = false.");
          end if;

          if allowFlowReversal then
            // Formulate hOut using spliceFunction. This avoids an event iteration.
            // The introduced error is small because deltax=m_flow_small/1e3
            hOut = IBPSA.Utilities.Math.Functions.regStep(
                      y1=port_b.h_outflow,
                      y2=port_a.h_outflow,
                      x=port_a.m_flow,
                      x_small=m_flow_small/1E3);
            XiOut = IBPSA.Utilities.Math.Functions.regStep(
                      y1=port_b.Xi_outflow,
                      y2=port_a.Xi_outflow,
                      x=port_a.m_flow,
                      x_small=m_flow_small/1E3);
            COut = IBPSA.Utilities.Math.Functions.regStep(
                      y1=port_b.C_outflow,
                      y2=port_a.C_outflow,
                      x=port_a.m_flow,
                      x_small=m_flow_small/1E3);
          else
            hOut =  port_b.h_outflow;
            XiOut = port_b.Xi_outflow;
            COut =  port_b.C_outflow;
          end if;

          //////////////////////////////////////////////////////////////////////////////////////////
          // Energy balance and mass balance

            // Mass balance (no storage)
            port_a.m_flow + port_b.m_flow = if simplify_mWat_flow then 0 else -mWat_flow_internal;

            // Substance balance
            // a) forward flow
            if use_m_flowInv then
              port_b.Xi_outflow = inStream(port_a.Xi_outflow) + mXi_flow * m_flowInv;
            else // no water is added
              assert(use_mWat_flow == false, "In " + getInstanceName() + ": Wrong implementation for forward flow.");
              port_b.Xi_outflow = inStream(port_a.Xi_outflow);
            end if;

            // b) backward flow
            if allowFlowReversal then
              if use_m_flowInv then
                port_a.Xi_outflow = inStream(port_b.Xi_outflow) - mXi_flow * m_flowInv;
              else // no water added
                assert(use_mWat_flow == false, "In " + getInstanceName() + ": Wrong implementation for reverse flow.");
                port_a.Xi_outflow = inStream(port_b.Xi_outflow);
              end if;
            else // no  flow reversal
              port_a.Xi_outflow = Medium.X_default[1:Medium.nXi];
            end if;

            // Energy balance.
            // This equation is approximate since m_flow = port_a.m_flow is used for the mass flow rate
            // at both ports. Since mWat_flow_internal << m_flow, the error is small.
            if prescribedHeatFlowRate then
              port_b.h_outflow = inStream(port_a.h_outflow) + Q_flow * m_flowInv;
              if allowFlowReversal then
                port_a.h_outflow = inStream(port_b.h_outflow) - Q_flow * m_flowInv;
              else
                port_a.h_outflow = Medium.h_default;
              end if;
            else
              // Case with prescribedHeatFlowRate == false.
              // port_b.h_outflow is known and the equation needs to be solved for Q_flow.
              // Hence, we cannot use m_flowInv as for m_flow=0, any Q_flow would satisfiy
              // Q_flow * m_flowInv = 0.
              // The same applies for port_b.Xi_outflow and mXi_flow.
              port_a.m_flow * (inStream(port_a.h_outflow) - port_b.h_outflow)     = -Q_flow;
              if allowFlowReversal then
                port_a.m_flow * (inStream(port_b.h_outflow)  - port_a.h_outflow)  = +Q_flow;
              else
                // When allowFlowReversal = false, the downstream enthalpy does not matter.
                // Therefore a dummy value is used to avoid algebraic loops
                port_a.h_outflow = Medium.h_default;
              end if;
            end if;

          // Transport of trace substances
          if use_m_flowInv and use_C_flow then
            port_b.C_outflow =  inStream(port_a.C_outflow) + C_flow_internal * m_flowInv;
          else // no trace substance added.
            assert(not use_C_flow, "In " + getInstanceName() + ": Wrong implementation of trace substance balance for forward flow.");
            port_b.C_outflow =  inStream(port_a.C_outflow);
          end if;

          if allowFlowReversal then
            if use_C_flow then
              port_a.C_outflow = inStream(port_b.C_outflow) - C_flow_internal * m_flowInv;
            else
              port_a.C_outflow = inStream(port_b.C_outflow);
            end if;
          else
            port_a.C_outflow = zeros(Medium.nC);
          end if;

          ////////////////////////////////////////////////////////////////////////////
          // No pressure drop in this model
          port_a.p = port_b.p;

          annotation (
            preferredView="info",
            Documentation(info="<html>
<p>
This model transports fluid between its two ports, without storing mass or energy.
It implements a steady-state conservation equation for energy and mass fractions.
The model has zero pressure drop between its ports.
</p>

<h4>Typical use and important parameters</h4>
<p>
Set the parameter <code>use_mWat_flow_in=true</code> to enable an
input connector for <code>mWat_flow</code>.
Otherwise, the model uses <code>mWat_flow = 0</code>.
</p>
<p>
If the constant <code>simplify_mWat_flow = true</code>, which is its default value,
then the equation
</p>
<pre>
  port_a.m_flow + port_b.m_flow = - mWat_flow;
</pre>
<p>
is simplified as
</p>
<pre>
  port_a.m_flow + port_b.m_flow = 0;
</pre>
<p>
This causes an error in the mass balance of about <i>0.5%</i>, but generally leads to
simpler equations because the pressure drop equations are then decoupled from the
mass exchange in this component.
</p>

<p>
To increase the numerical robustness of the model, the constant
<code>prescribedHeatFlowRate</code> can be set.
Use the following settings:
</p>
<ul>
<li>Set <code>prescribedHeatFlowRate=true</code> if the <i>only</i> means of heat transfer
at the <code>heatPort</code> is a prescribed heat flow rate that
is <i>not</i> a function of the temperature difference
between the medium and an ambient temperature. Examples include an ideal electrical heater,
a pump that rejects heat into the fluid stream, or a chiller that removes heat based on a performance curve.
If the <code>heatPort</code> is not connected, then set <code>prescribedHeatFlowRate=true</code> as
in this case, <code>heatPort.Q_flow=0</code>.
</li>
<li>Set <code>prescribedHeatFlowRate=false</code> if there is heat flow at the <code>heatPort</code>
computed as <i>K * (T-heatPort.T)</i>, for some temperature <i>T</i> and some conductance <i>K</i>,
which may itself be a function of temperature or mass flow rate.<br/>
If there is a combination of <i>K * (T-heatPort.T)</i> and a prescribed heat flow rate,
for example a solar collector that dissipates heat to the ambient and receives heat from
the solar radiation, then set <code>prescribedHeatFlowRate=false</code>.
</li>
</ul>
<p>
If <code>prescribedHeatFlow=true</code>, then energy and mass balance
equations are formulated to guard against numerical problems near
zero flow that can occur if <code>Q_flow</code> or <code>m_flow</code>
are the results of an iterative solver.
</p>
<h4>Implementation</h4>
<p>
Input connectors of the model are
</p>
<ul>
<li>
<code>Q_flow</code>, which is the sensible plus latent heat flow rate added to the medium,
</li>
<li>
<code>mWat_flow</code>, which is the moisture mass flow rate added to the medium, and
</li>
<li>
<code>C_flow</code>, which is the trace substance mass flow rate added to the medium.
</li>
</ul>

<p>
The model can only be used as a steady-state model with two fluid ports.
For a model with a dynamic balance, and more fluid ports, use
<a href=\"modelica://IBPSA.Fluid.Interfaces.ConservationEquation\">
IBPSA.Fluid.Interfaces.ConservationEquation</a>.
</p>
</html>",
        revisions="<html>
<ul>
<li>
February 12, 2019, by Filip Jorissen:<br/>
Removed obsolete division by <code>TMax</code> in assert.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1097\">#1097</a>.
</li>
<li>
June 23, 2018, by Filip Jorissen:<br/>
Added more details to energy conservation assert to facilitate
debugging.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/962\">#962</a>.
</li>
<li>
March 30, 2018, by Filip Jorissen:<br/>
Added <code>getInstanceName()</code> in asserts to facilitate
debugging.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/901\">#901</a>.
</li>
<li>
April 24, 2017, by Michael Wetter and Filip Jorissen:<br/>
Reimplemented check for energy conversion.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/741\">#741</a>.
</li>
<li>
April 24, 2017, by Michael Wetter:<br/>
Reverted change from April 21, 2017.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/741\">#741</a>.
</li>
<li>
April 21, 2017, by Filip Jorissen:<br/>
Revised test for energy conservation at small mass flow rates.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/741\">#741</a>.
</li>
<li>
October 23, 2016, by Filip Jorissen:<br/>
Added test for energy conservation at small mass flow rates.
</li>
<li>
March 17, 2016, by Michael Wetter:<br/>
Refactored model and implmented <code>regStep</code> instead of <code>spliceFunction</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/247\">#247</a>
and for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/300\">#300</a>.
</li>
<li>
September 3, 2015, by Filip Jorissen:<br/>
Revised implementation of conservation of vapor mass.
Added new variable <code>mFlow_inv_b</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/247\">#247</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Removed <code>constant sensibleOnly</code> as this is no longer used because
the model uses <code>use_mWat_flow</code>.<br/>
Changed condition that determines whether <code>m_flowInv</code> needs to be
computed because the change from January 20 introduced an error in
<a href=\"modelica://IBPSA.Fluid.MassExchangers.Examples.ConstantEffectiveness\">
IBPSA.Fluid.MassExchangers.Examples.ConstantEffectiveness</a>.
</li>
<li>
January 20, 2016, by Filip Jorissen:<br/>
Removed if-else block in code for parameter <code>sensibleOnly</code>
since this is no longer needed to simplify the equations.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/372\">#372</a>.
</li>
<li>
January 17, 2016, by Michael Wetter:<br/>
Added parameter <code>use_C_flow</code> and converted <code>C_flow</code>
to a conditionally removed connector.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/372\">#372</a>.
</li>
<li>
December 16, 2015, by Michael Wetter:<br/>
Removed the units of <code>C_flow</code> to allow for PPM.
</li>
<li>
December 2, 2015, by Filip Jorissen:<br/>
Added input <code>C_flow</code> and code for handling trace substance insertions.
November 19, 2015, by Michael Wetter:<br/>
Removed assignment of parameter
<code>showDesignFlowDirection</code> in <code>extends</code> statement.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/349\">#349</a>.
</li>
<li>
September 14, 2015, by Filip Jorissen:<br/>
Rewrote some equations for better readability.
</li>
<li>
August 11, 2015, by Michael Wetter:<br/>
Refactored implementation of
<a href=\"modelica://IBPSA.Utilities.Math.Functions.inverseXRegularized\">
IBPSA.Utilities.Math.Functions.inverseXRegularized</a>
to allow function to be inlined and to factor out the computation
of arguments that only depend on parameters.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/302\">issue 302</a>.
</li>
<li>
July 17, 2015, by Michael Wetter:<br/>
Corrected bug for situation with latent heat exchange and flow reversal not
allowed.
The previous formulation was singular.
This caused some models to not translate.
The error was introduced in
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/282\">#282</a>.
</li>
<li>
July 17, 2015, by Michael Wetter:<br/>
Added constant <code>simplify_mWat_flow</code> to remove dependencies of the pressure drop
calculation on the moisture balance.
</li>
<li>
July 2, 2015 by Michael Wetter:<br/>
Revised implementation of conservation equations,
added default values for outlet quantities at <code>port_a</code>
if <code>allowFlowReversal=false</code> and
updated documentation.
See
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/281\">
issue 281</a> for a discussion.
</li>
<li>
July 1, 2015, by Filip Jorissen:<br/>
Revised implementation so that equations are always consistent
and do not lead to division by zero,
also when connecting a <code>prescribedHeatFlowRate</code>
to <code>MixingVolume</code> instances.
Renamed <code>use_safeDivision</code> into <code>prescribedHeatFlowRate</code>.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/282\">#282</a>
for a discussion.
</li>
<li>
May 6, 2015, by Michael Wetter:<br/>
Corrected documentation.
</li>
<li>
February 11, 2014 by Michael Wetter:<br/>
Improved documentation for <code>Q_flow</code> input.
</li>
<li>
October 21, 2013 by Michael Wetter:<br/>
Corrected sign error in the equation that is used if <code>use_safeDivision=false</code>
and <code>sensibleOnly=true</code>.
This only affects internal numerical tests, but not any examples in the library
as the constant <code>use_safeDivision</code> is set to <code>true</code> by default.
</li>
<li>
September 25, 2013 by Michael Wetter:<br/>
Reformulated computation of outlet properties to avoid an event at zero mass flow rate.
</li>
<li>
September 17, 2013 by Michael Wetter:<br/>
Added start value for <code>hOut</code>.
</li>
<li>September 10, 2013 by Michael Wetter:<br/>
Removed unrequired parameter <code>i_w</code>.
</li>
<li>
May 7, 2013 by Michael Wetter:<br/>
Removed <code>for</code> loops for species balance and trace substance balance,
as they cause the error <code>Error: Operand port_a.Xi_outflow[1] to operator inStream is not a stream variable.</code>
in OpenModelica.
</li>
<li>
March 27, 2013 by Michael Wetter:<br/>
Removed wrong unit attribute of <code>COut</code>,
and added min and max attributes for <code>XiOut</code>.
</li>
<li>
June 22, 2012 by Michael Wetter:<br/>
Reformulated implementation with <code>m_flowInv</code> to use <code>port_a.m_flow * ...</code>
if <code>use_safeDivision=false</code>. This avoids a division by zero if
<code>port_a.m_flow=0</code>.
</li>
<li>
February 7, 2012 by Michael Wetter:<br/>
Revised base classes for conservation equations in <code>IBPSA.Fluid.Interfaces</code>.
</li>
<li>
December 14, 2011 by Michael Wetter:<br/>
Changed assignment of <code>hOut</code>, <code>XiOut</code> and
<code>COut</code> to no longer declare that it is continuous.
The declaration of continuity, i.e, the
<code>smooth(0, if (port_a.m_flow >= 0) then ...)</code> declaration,
was required for Dymola 2012 to simulate, but it is no longer needed
for Dymola 2012 FD01.
</li>
<li>
August 19, 2011, by Michael Wetter:<br/>
Changed assignment of <code>hOut</code>, <code>XiOut</code> and
<code>COut</code> to declare that it is not differentiable.
</li>
<li>
August 4, 2011, by Michael Wetter:<br/>
Moved linearized pressure drop equation from the function body to the equation
section. With the previous implementation,
the symbolic processor may not rearrange the equations, which can lead
to coupled equations instead of an explicit solution.
</li>
<li>
March 29, 2011, by Michael Wetter:<br/>
Changed energy and mass balance to avoid a division by zero if <code>m_flow=0</code>.
</li>
<li>
March 27, 2011, by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
August 19, 2010, by Michael Wetter:<br/>
Fixed bug in energy and moisture balance that affected results if a component
adds or removes moisture to the air stream.
In the old implementation, the enthalpy and species
outflow at <code>port_b</code> was multiplied with the mass flow rate at
<code>port_a</code>. The old implementation led to small errors that were proportional
to the amount of moisture change. For example, if the moisture added by the component
was <code>0.005 kg/kg</code>, then the error was <code>0.5%</code>.
Also, the results for forward flow and reverse flow differed by this amount.
With the new implementation, the energy and moisture balance is exact.
</li>
<li>
March 22, 2010, by Michael Wetter:<br/>
Added constant <code>sensibleOnly</code> to
simplify species balance equation.
</li>
<li>
April 10, 2009, by Michael Wetter:<br/>
Added model to compute flow friction.
</li>
<li>
April 22, 2008, by Michael Wetter:<br/>
Revised to add mass balance.
</li>
<li>
March 17, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),  Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,100}},
                grid={1,1}), graphics={Rectangle(
                  extent={{-100,100},{100,-100}},
                  fillColor={135,135,135},
                  fillPattern=FillPattern.Solid,
                  pattern=LinePattern.None),
                Text(
                  extent={{-93,72},{-58,89}},
                  lineColor={0,0,127},
                  textString="Q_flow"),
                Text(
                  extent={{-93,37},{-58,54}},
                  lineColor={0,0,127},
                  textString="mWat_flow"),
                Text(
                  extent={{-41,103},{-10,117}},
                  lineColor={0,0,127},
                  textString="hOut"),
                Text(
                  extent={{10,103},{41,117}},
                  lineColor={0,0,127},
                  textString="XiOut"),
                Text(
                  extent={{61,103},{92,117}},
                  lineColor={0,0,127},
                  textString="COut"),
                Line(points={{-42,55},{-42,-84}}, color={255,255,255}),
                Polygon(
                  points={{-42,67},{-50,45},{-34,45},{-42,67}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Polygon(
                  points={{87,-73},{65,-65},{65,-81},{87,-73}},
                  lineColor={255,255,255},
                  fillColor={255,255,255},
                  fillPattern=FillPattern.Solid),
                Line(points={{-56,-73},{81,-73}}, color={255,255,255}),
                Line(points={{6,14},{6,-37}},     color={255,255,255}),
                Line(points={{54,14},{6,14}},     color={255,255,255}),
                Line(points={{6,-37},{-42,-37}},  color={255,255,255})}));
        end StaticTwoPortConservationEquation;

        model StaticTwoPortHeatMassExchanger
          "Partial model transporting fluid between two ports without storing mass or energy"
          extends IBPSA.Fluid.Interfaces.PartialTwoPortInterface;
          extends IBPSA.Fluid.Interfaces.TwoPortFlowResistanceParameters(final computeFlowResistance=(abs(dp_nominal) > Modelica.Constants.eps));

          constant Boolean sensibleOnly "Set to true if sensible exchange only";
          constant Boolean prescribedHeatFlowRate
            "Set to true if the heat flow rate is not a function of the component temperature";

          parameter Boolean homotopyInitialization = true "= true, use homotopy method"
            annotation(Evaluate=true, Dialog(tab="Advanced"));

          // Model inputs
          // Q_flow is the sensible plus latent heat flow rate
          input Modelica.SIunits.HeatFlowRate Q_flow "Heat transferred into the medium";
          input Modelica.SIunits.MassFlowRate mWat_flow
            "Moisture mass flow rate added to the medium";

          // Models for conservation equations and pressure drop
          IBPSA.Fluid.Interfaces.StaticTwoPortConservationEquation vol(
            redeclare final package Medium = Medium,
            final use_mWat_flow=not sensibleOnly,
            final prescribedHeatFlowRate=prescribedHeatFlowRate,
            final m_flow_nominal=m_flow_nominal,
            final allowFlowReversal=allowFlowReversal,
            final m_flow_small=m_flow_small) "Control volume for steady-state energy and mass balance" annotation (Placement(transformation(extent={{15,-10},{35,10}})));

          IBPSA.Fluid.FixedResistances.PressureDrop preDro(
            redeclare final package Medium = Medium,
            final m_flow_nominal=m_flow_nominal,
            final deltaM=deltaM,
            final allowFlowReversal=allowFlowReversal,
            final show_T=false,
            final from_dp=from_dp,
            final linearized=linearizeFlowResistance,
            final homotopyInitialization=homotopyInitialization,
            final dp_nominal=dp_nominal) "Flow resistance" annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));

          // Outputs that are needed in models that extend this model
          Modelica.Blocks.Interfaces.RealOutput hOut(unit="J/kg")
            "Leaving temperature of the component";

          Modelica.Blocks.Interfaces.RealOutput XiOut[Medium.nXi](each unit="1",
                                                                  each min=0,
                                                                  each max=1)
            "Leaving species concentration of the component";
          Modelica.Blocks.Interfaces.RealOutput COut[Medium.nC](each min=0)
            "Leaving trace substances of the component";

        protected
          Modelica.Blocks.Sources.RealExpression heaInp(y=Q_flow)
            "Block to set heat input into volume"
            annotation (Placement(transformation(extent={{-20,40},{0,60}})));
          Modelica.Blocks.Sources.RealExpression
            masExc(final y=mWat_flow) "Block to set moisture exchange in volume"
            annotation (Placement(transformation(extent={{-20,20},{0,40}})));
        equation
          connect(vol.hOut, hOut);
          connect(vol.XiOut, XiOut);
          connect(vol.COut, COut);
          connect(port_a,preDro. port_a) annotation (Line(
              points={{-100,0},{-50,0}},
              color={0,127,255}));
          connect(preDro.port_b, vol.port_a) annotation (Line(
              points={{-30,0},{15,0}},
              color={0,127,255}));

          connect(vol.port_b, port_b) annotation (Line(
              points={{35,0},{67,0},{100,5.55112e-16}},
              color={0,127,255}));

          connect(heaInp.y, vol.Q_flow) annotation (Line(
              points={{1,50},{6,50},{6,8},{13,8}},
              color={0,0,127}));
          connect(masExc.y, vol.mWat_flow) annotation (Line(
              points={{1,30},{4,30},{4,4},{13,4}},
              color={0,0,127}));
          annotation (
            preferredView="info",
            Documentation(info="<html>
<p>
This component transports fluid between its two ports, without
storing mass or energy. It is based on
<a href=\"modelica://Modelica.Fluid.Interfaces.PartialTwoPortTransport\">
Modelica.Fluid.Interfaces.PartialTwoPortTransport</a> but it does
use a different implementation for handling reverse flow because
in this component, mass flow rate can be added or removed from
the medium.
</p>
<p>
If <code>dp_nominal &gt; Modelica.Constants.eps</code>, this component computes
pressure drop due to flow friction.
The pressure drop is defined by a quadratic function that goes through
the point <code>(m_flow_nominal, dp_nominal)</code>. At <code>|m_flow| &lt; deltaM * m_flow_nominal</code>,
the pressure drop vs. flow relation is linearized.
If the parameter <code>linearizeFlowResistance</code> is set to true,
then the whole pressure drop vs. flow resistance curve is linearized.
</p>
<h4>Implementation</h4>
This model uses inputs and constants that need to be set by models
that extend or instantiate this model.
The following inputs need to be assigned:
<ul>
<li>
<code>Q_flow</code>, which is the sensible and latent heat flow rate added to the medium.
</li>
<li>
<code>mWat_flow</code>, which is the moisture mass flow rate added to the medium.
</li>
</ul>

<p>
Set the constant <code>sensibleOnly=true</code> if the model that extends
or instantiates this model sets <code>mWat_flow = 0</code>.
</p>
<p>
To increase the numerical robustness of the model, the constant
<code>prescribedHeatFlowRate</code> can be set.
Use the following settings:
</p>
<ul>
<li>Set <code>prescribedHeatFlowRate=true</code> if the <i>only</i> means of heat transfer
at the <code>heatPort</code> is a prescribed heat flow rate that
is <i>not</i> a function of the temperature difference
between the medium and an ambient temperature. Examples include an ideal electrical heater,
a pump that rejects heat into the fluid stream, or a chiller that removes heat based on a performance curve.
If the <code>heatPort</code> is not connected, then set <code>prescribedHeatFlowRate=true</code> as
in this case, <code>heatPort.Q_flow=0</code>.
</li>
<li>Set <code>prescribedHeatFlowRate=false</code> if there is heat flow at the <code>heatPort</code>
computed as <i>K * (T-heatPort.T)</i>, for some temperature <i>T</i> and some conductance <i>K</i>,
which may itself be a function of temperature or mass flow rate.<br/>
If there is a combination of <i>K * (T-heatPort.T)</i> and a prescribed heat flow rate,
for example a solar collector that dissipates heat to the ambient and receives heat from
the solar radiation, then set <code>prescribedHeatFlowRate=false</code>.
</li>
</ul>
<p>
If <code>prescribedHeatFlow=true</code>, then energy and mass balance
equations are formulated to guard against numerical problems near
zero flow that can occur if <code>Q_flow</code> or <code>m_flow</code>
are the results of an iterative solver.
</p>
</html>",         revisions="<html>
<ul>
<li>
April 11, 2017, by Michael Wetter:<br/>
Updated documentation to make clear that <code>Q_flow</code>
includes latent heat flow rate.<br/>
This is for issue
<a href=\"https://github.com/lbl-srg/modelica-buildings/issues/704\">Buildings #704</a>.
</li>
<li>
December 1, 2016, by Michael Wetter:<br/>
Updated model as <code>use_dh</code> is no longer a parameter in the pressure drop model.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/480\">#480</a>.
</li>
<li>
January 22, 2016 by Michael Wetter:<br/>
Removed assignment of <code>sensibleOnly</code> in <code>bal1</code> and <code>bal2</code>
as this constant has been removed in
<a href=\"modelica://IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger\">
IBPSA.Fluid.Interfaces.StaticTwoPortHeatMassExchanger</a>.
</li>
<li>
November 19, 2015, by Michael Wetter:<br/>
Removed assignment of parameter
<code>showDesignFlowDirection</code> in <code>extends</code> statement.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/349\">#349</a>.
</li>
<li>
July 2, 2015 by Michael Wetter:<br/>
Revised implementation of conservation equations,
added default values for outlet quantities at <code>port_a</code>
if <code>allowFlowReversal=false</code> and
updated documentation.
See
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/281\">
issue 281</a> for a discussion.
</li>
<li>
July 1, 2015 by Filip Jorissen:<br/>
Renamed <code>use_safeDivision</code> into
<code>prescribedHeatFlowRate</code>.
See
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/282\">
issue 282</a> for a discussion.
</li>
<li>
November 13, 2013 by Michael Wetter:<br/>
Added parameter <code>homotopyInitialization</code> as
it has been removed in the base class.
</li>
<li>
October 8, 2013 by Michael Wetter:<br/>
Removed propagation of <code>show_V_flow</code>
to pressure drop calculation, as this model no longer has
that parameter.
</li>
<li>
July 30, 2013 by Michael Wetter:<br/>
Changed connector <code>mXi_flow[Medium.nXi]</code>
to a scalar input connector <code>mWat_flow</code>.
The reason is that <code>mXi_flow</code> does not allow
to compute the other components in <code>mX_flow</code> and
therefore leads to an ambiguous use of the model.
By only requesting <code>mWat_flow</code>, the mass balance
and species balance can be implemented correctly.
</li>
<li>
March 27, 2013 by Michael Wetter:<br/>
Removed wrong unit attribute of <code>COut</code>,
and added min and max attributes for <code>XiOut</code>.
</li>
<li>
February 8, 2012 by Michael Wetter:<br/>
Changed model to use graphical modeling.
</li>
<li>
December 14, 2011 by Michael Wetter:<br/>
Changed assignment of <code>hOut</code>, <code>XiOut</code> and
<code>COut</code> to no longer declare that it is continuous.
The declaration of continuity, i.e, the
<code>smooth(0, if (port_a.m_flow >= 0) then ...)</code> declaration,
was required for Dymola 2012 to simulate, but it is no longer needed
for Dymola 2012 FD01.
</li>
<li>
August 19, 2011, by Michael Wetter:<br/>
Changed assignment of <code>hOut</code>, <code>XiOut</code> and
<code>COut</code> to declare that it is not differentiable.
</li>
<li>
August 4, 2011, by Michael Wetter:<br/>
Moved linearized pressure drop equation from the function body to the equation
section. With the previous implementation,
the symbolic processor may not rearrange the equations, which can lead
to coupled equations instead of an explicit solution.
</li>
<li>
March 29, 2011, by Michael Wetter:<br/>
Changed energy and mass balance to avoid a division by zero if <code>m_flow=0</code>.
</li>
<li>
March 27, 2011, by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
August 19, 2010, by Michael Wetter:<br/>
Fixed bug in energy and moisture balance that affected results if a component
adds or removes moisture to the air stream.
In the old implementation, the enthalpy and species
outflow at <code>port_b</code> was multiplied with the mass flow rate at
<code>port_a</code>. The old implementation led to small errors that were proportional
to the amount of moisture change. For example, if the moisture added by the component
was <code>0.005 kg/kg</code>, then the error was <code>0.5%</code>.
Also, the results for forward flow and reverse flow differed by this amount.
With the new implementation, the energy and moisture balance is exact.
</li>
<li>
March 22, 2010, by Michael Wetter:<br/>
Added constant <code>sensibleOnly</code> to
simplify species balance equation.
</li>
<li>
April 10, 2009, by Michael Wetter:<br/>
Added model to compute flow friction.
</li>
<li>
April 22, 2008, by Michael Wetter:<br/>
Revised to add mass balance.
</li>
<li>
March 17, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end StaticTwoPortHeatMassExchanger;

        record FourPortFlowResistanceParameters
          "Parameters for flow resistance for models with four ports"

          parameter Boolean computeFlowResistance1 = true
            "=true, compute flow resistance. Set to false to assume no friction"
            annotation (Evaluate=true, Dialog(tab="Flow resistance", group="Medium 1"));

          parameter Boolean from_dp1 = false
            "= true, use m_flow = f(dp) else dp = f(m_flow)"
            annotation (Evaluate=true, Dialog(enable = computeFlowResistance1,
                        tab="Flow resistance", group="Medium 1"));
          parameter Modelica.SIunits.PressureDifference dp1_nominal(min=0,
                                                                    displayUnit="Pa")
            "Pressure difference"
            annotation(Dialog(group = "Nominal condition"));
          parameter Boolean linearizeFlowResistance1 = false
            "= true, use linear relation between m_flow and dp for any flow rate"
            annotation(Dialog(enable = computeFlowResistance1,
                       tab="Flow resistance", group="Medium 1"));
          parameter Real deltaM1 = 0.1
            "Fraction of nominal flow rate where flow transitions to laminar"
            annotation(Dialog(enable = computeFlowResistance1,
                              tab="Flow resistance", group="Medium 1"));
          parameter Boolean computeFlowResistance2 = true
            "=true, compute flow resistance. Set to false to assume no friction"
            annotation (Evaluate=true, Dialog(tab="Flow resistance", group="Medium 2"));

          parameter Boolean from_dp2 = false
            "= true, use m_flow = f(dp) else dp = f(m_flow)"
            annotation (Evaluate=true, Dialog(enable = computeFlowResistance2,
                        tab="Flow resistance", group="Medium 2"));
          parameter Modelica.SIunits.PressureDifference dp2_nominal(min=0,
                                                                    displayUnit="Pa")
            "Pressure difference"
            annotation(Dialog(group = "Nominal condition"));
          parameter Boolean linearizeFlowResistance2 = false
            "= true, use linear relation between m_flow and dp for any flow rate"
            annotation(Dialog(enable = computeFlowResistance2,
                       tab="Flow resistance", group="Medium 2"));
          parameter Real deltaM2 = 0.1
            "Fraction of nominal flow rate where flow transitions to laminar"
            annotation(Dialog(enable = computeFlowResistance2,
                              tab="Flow resistance", group="Medium 2"));
        annotation (preferredView="info",
        Documentation(info="<html>
This class contains parameters that are used to
compute the pressure drop in components that have two fluid streams.
Note that the nominal mass flow rate is not declared here because
the model
<a href=\"modelica://IBPSA.Fluid.Interfaces.PartialFourPortInterface\">
PartialFourPortInterface</a>
already declares it.
</html>",
        revisions="<html>
<ul>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end FourPortFlowResistanceParameters;

        record TwoPortFlowResistanceParameters
          "Parameters for flow resistance for models with two ports"

          parameter Boolean computeFlowResistance = true
            "=true, compute flow resistance. Set to false to assume no friction"
            annotation (Evaluate=true, Dialog(tab="Flow resistance"));

          parameter Boolean from_dp = false
            "= true, use m_flow = f(dp) else dp = f(m_flow)"
            annotation (Evaluate=true, Dialog(enable = computeFlowResistance,
                        tab="Flow resistance"));
          parameter Modelica.SIunits.PressureDifference dp_nominal(min=0,
                                                                   displayUnit="Pa")
            "Pressure difference"
            annotation(Dialog(group = "Nominal condition"));
          parameter Boolean linearizeFlowResistance = false
            "= true, use linear relation between m_flow and dp for any flow rate"
            annotation(Dialog(enable = computeFlowResistance,
                       tab="Flow resistance"));
          parameter Real deltaM = 0.1
            "Fraction of nominal flow rate where flow transitions to laminar"
            annotation(Dialog(enable = computeFlowResistance, tab="Flow resistance"));

        annotation (preferredView="info",
        Documentation(info="<html>
This class contains parameters that are used to
compute the pressure drop in models that have one fluid stream.
Note that the nominal mass flow rate is not declared here because
the model
<a href=\"modelica://IBPSA.Fluid.Interfaces.PartialTwoPortInterface\">
PartialTwoPortInterface</a>
already declares it.
</html>",
        revisions="<html>
<ul>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end TwoPortFlowResistanceParameters;
      annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains basic classes that are used to build
component models that change the state of the
fluid. The classes are not directly usable, but can
be extended when building a new model.
</p>
</html>"));
      end Interfaces;

      package BaseClasses "Package with base classes for IBPSA.Fluid"
        extends Modelica.Icons.BasesPackage;

        partial model PartialResistance "Partial model for a hydraulic resistance"
            extends IBPSA.Fluid.Interfaces.PartialTwoPortInterface(
            show_T=false,
            dp(nominal=if dp_nominal_pos > Modelica.Constants.eps then dp_nominal_pos else 1),
            m_flow(nominal=if m_flow_nominal_pos > Modelica.Constants.eps then m_flow_nominal_pos else 1),
            final m_flow_small=1E-4*abs(m_flow_nominal));

          parameter Boolean from_dp = false
            "= true, use m_flow = f(dp) else dp = f(m_flow)"
            annotation (Evaluate=true, Dialog(tab="Advanced"));

          parameter Modelica.SIunits.PressureDifference dp_nominal(displayUnit="Pa")
            "Pressure drop at nominal mass flow rate"
            annotation(Dialog(group = "Nominal condition"));
          parameter Boolean homotopyInitialization = true "= true, use homotopy method"
            annotation(Evaluate=true, Dialog(tab="Advanced"));
          parameter Boolean linearized = false
            "= true, use linear relation between m_flow and dp for any flow rate"
            annotation(Evaluate=true, Dialog(tab="Advanced"));

          parameter Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
            "Turbulent flow if |m_flow| >= m_flow_turbulent";

        protected
          parameter Medium.ThermodynamicState sta_default=
             Medium.setState_pTX(T=Medium.T_default, p=Medium.p_default, X=Medium.X_default);
          parameter Modelica.SIunits.DynamicViscosity eta_default=Medium.dynamicViscosity(sta_default)
            "Dynamic viscosity, used to compute transition to turbulent flow regime";

          final parameter Modelica.SIunits.MassFlowRate m_flow_nominal_pos = abs(m_flow_nominal)
            "Absolute value of nominal flow rate";
          final parameter Modelica.SIunits.PressureDifference dp_nominal_pos(displayUnit="Pa") = abs(dp_nominal)
            "Absolute value of nominal pressure difference";
        equation
          // Isenthalpic state transformation (no storage and no loss of energy)
          port_a.h_outflow = if allowFlowReversal then inStream(port_b.h_outflow) else Medium.h_default;
          port_b.h_outflow = inStream(port_a.h_outflow);

          // Mass balance (no storage)
          port_a.m_flow + port_b.m_flow = 0;

          // Transport of substances
          port_a.Xi_outflow = if allowFlowReversal then inStream(port_b.Xi_outflow) else Medium.X_default[1:Medium.nXi];
          port_b.Xi_outflow = inStream(port_a.Xi_outflow);

          port_a.C_outflow = if allowFlowReversal then inStream(port_b.C_outflow) else zeros(Medium.nC);
          port_b.C_outflow = inStream(port_a.C_outflow);

          annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                    -100},{100,100}}), graphics={
                Rectangle(
                  extent={{-100,40},{100,-42}},
                  lineColor={0,0,0},
                  fillPattern=FillPattern.HorizontalCylinder,
                  fillColor={192,192,192}),
                Rectangle(
                  extent={{-100,22},{100,-24}},
                  lineColor={0,0,0},
                  fillPattern=FillPattern.HorizontalCylinder,
                  fillColor={0,127,255}),
                Rectangle(
                  visible=linearized,
                  extent={{-100,22},{100,-24}},
                  fillPattern=FillPattern.Backward,
                  fillColor={0,128,255},
                  pattern=LinePattern.None,
                  lineColor={255,255,255})}),
                  defaultComponentName="res",
        Documentation(info="<html>
<p>
Partial model for a flow resistance, possible with variable flow coefficient.
Models that extend this class need to implement an equation that relates
<code>m_flow</code> and <code>dp</code>, and they need to assign the parameter
<code>m_flow_turbulent</code>.
</p>
<p>
See for example
<a href=\"modelica://IBPSA.Fluid.FixedResistances.PressureDrop\">
IBPSA.Fluid.FixedResistances.PressureDrop</a> for a model that extends
this base class.
</p>
</html>",         revisions="<html>
<ul>
<li>
November 3, 2016, by Michael Wetter:<br/>
Removed start value for pressure difference
to simplify the parameter window.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/552\">#552</a>.
</li>
<li>
January 26, 2016, by Michael Wetter:<br/>
Avoided assignment of <code>dp(nominal=0)</code> if <code>dp_nominal_pos = 0</code>
and of <code>m_flow(nominal=0)</code> if <code>m_flow_nominal_pos = 0</code>
as nominal values are not allowed to be zero.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
August 15, 2015, by Filip Jorissen:<br/>
Implemented more efficient computation of <code>port_a.Xi_outflow</code>,
<code>port_a.h_outflow</code>
and <code>port_a.C_outflow</code> when <code>allowFlowReversal=false</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/281\">#281</a>.
</li>
<li>
January 13, 2015, by Marcus Fuchs:<br/>
Revised revisions section (there were two revisions statements)
</li>
<li>
November 20, 2014 by Michael Wetter:<br/>
Removed <code>start</code> attribute for <code>m_flow</code>
as this is already set in its base class.
</li>
<li>
October 8, 2013 by Michael Wetter:<br/>
Removed propagation of <code>show_V_flow</code>
to base class as it has no longer this parameter.
</li>
<li>
December 14, 2012 by Michael Wetter:<br/>
Renamed protected parameters for consistency with the naming conventions.
</li>
<li>
February 12, 2012, by Michael Wetter:<br/>
Removed duplicate declaration of <code>m_flow_nominal</code>.
</li>
<li>
February 3, 2012, by Michael Wetter:<br/>
Made assignment of <code>m_flow_small</code> <code>final</code> as it is no
longer used in the base class.
</li>
<li>
January 16, 2012, by Michael Wetter:<br/>
To simplify object inheritance tree, revised base classes
<code>IBPSA.Fluid.BaseClasses.PartialResistance</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialTwoWayValve</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialDamperExponential</code>,
<code>IBPSA.Fluid.Actuators.BaseClasses.PartialActuator</code>
and model
<code>IBPSA.Fluid.FixedResistances.PressureDrop</code>.
</li>
<li>
August 5, 2011, by Michael Wetter:<br/>
Moved linearized pressure drop equation from the function body to the equation
section. With the previous implementation,
the symbolic processor may not rearrange the equations, which can lead
to coupled equations instead of an explicit solution.
</li>
<li>
June 20, 2011, by Michael Wetter:<br/>
Set start values for <code>m_flow</code> and <code>dp</code> to zero, since
most HVAC systems start at zero flow. With this change, the start values
appear in the GUI and can be set by the user.
</li>
<li>
April 2, 2011 by Michael Wetter:<br/>
Added <code>m_flow_nominal_pos</code> and <code>dp_nominal_pos</code> to allow
providing negative nominal values which will be used, for example, to set start
values of flow splitters which may have negative flow rates and pressure drop
at the initial condition.
</li>
<li>
March 27, 2011, by Michael Wetter:<br/>
Added <code>homotopy</code> operator.
</li>
<li>
March 23, 2011 by Michael Wetter:<br/>
Added homotopy operator.
</li>
<li>
March 30, 2010 by Michael Wetter:<br/>
Changed base classes to allow easier initialization.
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
Extracted pressure drop computation and implemented it in the
new model
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.BasicFlowModel\">
IBPSA.Fluid.BaseClasses.FlowModels.BasicFlowModel</a>.
</li>
<li>
September 18, 2008, by Michael Wetter:<br/>
Added equations for the mass balance of extra species flow,
i.e., <code>C</code> and <code>mC_flow</code>.
</li>
<li>
July 20, 2007 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end PartialResistance;

        package FlowModels "Flow models for pressure drop calculations"
          extends Modelica.Icons.BasesPackage;

          function basicFlowFunction_dp
            "Function that computes mass flow rate for given pressure drop"

            input Modelica.SIunits.PressureDifference dp(displayUnit="Pa")
              "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            input Real k(min=0, unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            output Modelica.SIunits.MassFlowRate m_flow
              "Mass flow rate in design flow direction";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real dpNorm=dp/dp_turbulent
              "Normalised pressure difference";
            Real dpNormSq=dpNorm^2
              "Square of normalised pressure difference";
          algorithm
             m_flow :=  if noEvent(abs(dp)>dp_turbulent)
                        then sign(dp)*k*sqrt(abs(dp))
                        else (1.40625  + (0.15625*dpNormSq - 0.5625)*dpNormSq)*m_flow_turbulent*dpNorm;
            annotation(Inline=false,
                     smoothOrder=2,
                     derivative(order=1, zeroDerivative=k, zeroDerivative=m_flow_turbulent)=
                       IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp_der,
                     inverse(dp=IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow(
                       m_flow=m_flow, k=k, m_flow_turbulent=m_flow_turbulent)),
                     Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                      {100,100}}), graphics={Line(
                    points={{-80,-40},{-80,60},{80,-40},{80,60}},
                    color={0,0,255},
                    thickness=1), Text(
                    extent={{-40,-40},{40,-80}},
                    lineColor={0,0,0},
                    fillPattern=FillPattern.Sphere,
                    fillColor={232,0,0},
                    textString="%name")}),
          Documentation(info="<html>
<p>
Function that computes the pressure drop of flow elements as
</p>
<p align=\"center\" style=\"font-style:italic;\">
  m = sign(&Delta;p) k  &radic;<span style=\"text-decoration:overline;\">&nbsp;&Delta;p &nbsp;</span>
</p>
<p>
with regularization near the origin.
Therefore, the flow coefficient is
</p>
<p align=\"center\" style=\"font-style:italic;\">
  k = m &frasl; &radic;<span style=\"text-decoration:overline;\">&nbsp;&Delta;p &nbsp;</span>
</p>
<p>
The input <code>m_flow_turbulent</code> determines the location of the regularization.
</p>
</html>",           revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">basicFlowFunction_dp</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
March 19, 2016, by Michael Wetter:<br/>
Added <code>abs</code> function for
<code>IBPSA.Fluid.FixedResistances.Validation.PressureDropsExplicit</code>
to work in OpenModelica.
See <a href=\"https://trac.openmodelica.org/OpenModelica/ticket/3778\">
OpenModelica ticket 3778</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
July 28, 2015, by Michael Wetter:<br/>
Removed double declaration of <code>smooth(..)</code> and <code>smoothOrder</code>
and changed <code>Inline=true</code> to <code>LateInline=true</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/301\">issue 301</a>.
</li>
<li>
July 15, 2015, by Filip Jorissen:<br/>
New, more efficient implementation based on regularisation using simple polynomial.
Expanded common subexpressions for function inlining to be possible.
Set <code>Inline=true</code> for inlining to occur.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/279\">#279</a>.
</li>
<li>
January 9, 2014, by Michael Wetter:<br/>
Correct revision section, of which there were two.
</li>
<li>
August 10, 2011, by Michael Wetter:<br/>
Removed <code>if-then</code> optimization that set <code>m_flow=0</code> if <code>dp=0</code>,
as this causes the derivative to be discontinuous at <code>dp=0</code>.
</li>
<li>
August 4, 2011, by Michael Wetter:<br/>
Removed option to use a linear function. The linear implementation is now done
in models that call this function. With the previous implementation,
the symbolic processor may not rearrange the equations, which can lead
to coupled equations instead of an explicit solution.
</li>
<li>
March 29, 2010 by Michael Wetter:<br/>
Changed implementation to allow <code>k=0</code>, which is
the case for a closed valve with no leakage
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end basicFlowFunction_dp;

          function basicFlowFunction_dp_der
            "1st derivative of function that computes mass flow rate for given pressure drop"
            extends Modelica.Icons.Function;

            input Modelica.SIunits.PressureDifference dp(displayUnit="Pa")
              "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            input Real k(min=0, unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            input Real dp_der
              "Derivative of pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            output Real m_flow_der(unit="kg/s2")
              "Derivative of mass flow rate in design flow direction";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real dpNormSq=(dp/dp_turbulent)^2
              "Square of normalised pressure difference";
          algorithm
           m_flow_der := (if noEvent(abs(dp)>dp_turbulent)
                          then 0.5*k/sqrt(abs(dp))
                          else (1.40625  + (0.78125*dpNormSq - 1.6875)*dpNormSq)*m_flow_turbulent/dp_turbulent)*dp_der;
           annotation (Inline=false,
                       smoothOrder=1,
                       derivative(order=2, zeroDerivative=k, zeroDerivative=m_flow_turbulent)=
                         IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp_der2,
          Documentation(info="<html>
<p>
Function that implements the first order derivative of
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
with respect to the mass flow rate.
</p>
</html>", revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
April 14, 2017, by Filip Jorissen:<br/>
Changed implementation such that it cannot lead to square roots
of negative numbers and reduced the number of required operations.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/723\">#723</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
July 29, 2015, by Michael Wetter:<br/>
First implementation to avoid in Dymola 2016 the warning
\"Differentiating ... under the assumption that it is continuous at switching\".
</li>
</ul>
</html>"));
          end basicFlowFunction_dp_der;

          function basicFlowFunction_dp_der2
            "2nd derivative of flow function2nd derivative of function that computes mass flow rate for given pressure drop"
            extends Modelica.Icons.Function;

            input Modelica.SIunits.PressureDifference dp(displayUnit="Pa")
              "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            input Real k(min=0, unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            input Real dp_der
              "1st derivative of pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            input Real dp_der2
              "2nd derivative of pressure difference between port_a and port_b (= port_a.p - port_b.p)";
            output Real m_flow_der2
              "2nd derivative of mass flow rate in design flow direction";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real dpNorm=dp/dp_turbulent
              "Normalised pressure difference";
            Real dpNormSq=dpNorm^2
              "Square of normalised pressure difference";
          algorithm
           m_flow_der2 := if noEvent(abs(dp)>dp_turbulent)
                           then 0.5*k/sqrt(abs(dp))*(-0.5/dp * dp_der^2 + dp_der2)
                           else m_flow_turbulent/dp_turbulent*(
                                 (1.40625  + (0.78125*dpNormSq - 1.6875)*dpNormSq)*dp_der2
                               + (-3.375 + 3.125*dpNormSq)*dpNorm/dp_turbulent*dp_der^2);

           annotation (smoothOrder=0,
           Inline=false,
          Documentation(info="<html>
<p>
Function that implements the second order derivative of
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
with respect to the mass flow rate.
</p>
</html>", revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
July 29, 2015, by Michael Wetter:<br/>
First implementation to avoid in Dymola 2016 the warning
\"Differentiating ... under the assumption that it is continuous at switching\".
</li>
</ul>
</html>"));
          end basicFlowFunction_dp_der2;

          function basicFlowFunction_m_flow
            "Function that computes pressure drop for given mass flow rate"

            input Modelica.SIunits.MassFlowRate m_flow
              "Mass flow rate in design flow direction";
            input Real k(unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            output Modelica.SIunits.PressureDifference dp(displayUnit="Pa")
              "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real m_flowNorm = m_flow/m_flow_turbulent
              "Normalised mass flow rate";
            Real m_flowNormSq = m_flowNorm^2
              "Square of normalised mass flow rate";

          algorithm
           dp :=if noEvent(abs(m_flow)>m_flow_turbulent)
                then sign(m_flow)*(m_flow/k)^2
                else (0.375 + (0.75-0.125*m_flowNormSq)*m_flowNormSq)*dp_turbulent*m_flowNorm;

           annotation (Inline=false,
                       smoothOrder=2,
                       derivative(order=1, zeroDerivative=k, zeroDerivative=m_flow_turbulent)=
                         IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow_der,
                       inverse(m_flow=IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp(
                         dp=dp, k=k, m_flow_turbulent=m_flow_turbulent)),
                       Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
                      -100},{100,100}}), graphics={Line(
                    points={{-80,-40},{-80,60},{80,-40},{80,60}},
                    color={0,0,255},
                    thickness=1), Text(
                    extent={{-40,-40},{40,-80}},
                    lineColor={0,0,0},
                    fillPattern=FillPattern.Sphere,
                    fillColor={232,0,0},
                    textString="%name")}),
          Documentation(info="<html>
<p>
Function that computes the pressure drop of flow elements as
</p>
<p align=\"center\" style=\"font-style:italic;\">
  &Delta;p = sign(m) (m &frasl; k)<sup>2</sup>
</p>
<p>
with regularization near the origin.
Therefore, the flow coefficient is
</p>
<p align=\"center\" style=\"font-style:italic;\">
  k = m &frasl; &radic;<span style=\"text-decoration:overline;\">&nbsp;&Delta;p &nbsp;</span>
</p>
<p>
The input <code>m_flow_turbulent</code> determines the location of the regularization.
</p>
</html>", revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
July 28, 2015, by Michael Wetter:<br/>
Removed double declaration of <code>smooth(..)</code> and <code>smoothOrder</code>
and changed <code>Inline=true</code> to <code>LateInline=true</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/301\">issue 301</a>.
</li>
<li>
July 15, 2015, by Filip Jorissen:<br/>
New, more efficient implementation based on regularisation using simple polynomial.
Expanded common subexpressions for function inlining to be possible.
Set <code>Inline=true</code> for inlining to occur.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/279\">#279</a>.
</li>
<li>
August 10, 2011, by Michael Wetter:<br/>
Removed <code>if-then</code> optimization that set <code>dp=0</code> if <code>m_flow=0</code>,
as this causes the derivative to be discontinuous at <code>m_flow=0</code>.
</li>
<li>
August 4, 2011, by Michael Wetter:<br/>
Removed option to use a linear function. The linear implementation is now done
in models that call this function. With the previous implementation,
the symbolic processor may not rearrange the equations, which can lead
to coupled equations instead of an explicit solution.
</li>
<li>
April 13, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end basicFlowFunction_m_flow;

          function basicFlowFunction_m_flow_der
            "1st derivative of function that computes pressure drop for given mass flow rate"
            extends Modelica.Icons.Function;

            input Modelica.SIunits.MassFlowRate m_flow
              "Mass flow rate in design flow direction";
            input Real k(unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            input Real m_flow_der(unit="kg/s2")
              "Derivative of mass flow rate in design flow direction";
            output Real dp_der
              "Derivative of pressure difference between port_a and port_b (= port_a.p - port_b.p)";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real m_flowNormSq = (m_flow/m_flow_turbulent)^2
              "Square of normalised mass flow rate";
          algorithm
           dp_der :=(if noEvent(abs(m_flow)>m_flow_turbulent)
                     then sign(m_flow)*2*m_flow/k^2
                     else (0.375  + (2.25 - 0.625*m_flowNormSq)*m_flowNormSq)*dp_turbulent/m_flow_turbulent)*m_flow_der;

           annotation (Inline=false,
                       smoothOrder=1,
                       derivative(order=2, zeroDerivative=k, zeroDerivative=m_flow_turbulent)=
                       IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow_der2,
          Documentation(info="<html>
<p>
Function that implements the first order derivative of
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow</a>
with respect to the mass flow rate.
</p>
</html>", revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
July 29, 2015, by Michael Wetter:<br/>
First implementation to avoid in Dymola 2016 the warning
\"Differentiating ... under the assumption that it is continuous at switching\".
</li>
</ul>
</html>"));
          end basicFlowFunction_m_flow_der;

          function basicFlowFunction_m_flow_der2
            "2nd derivative of function that computes pressure drop for given mass flow rate"
            extends Modelica.Icons.Function;

            input Modelica.SIunits.MassFlowRate m_flow
              "Mass flow rate in design flow direction";
            input Real k(unit="")
              "Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)";
            input Modelica.SIunits.MassFlowRate m_flow_turbulent(min=0)
              "Mass flow rate where transition to turbulent flow occurs";
            input Real m_flow_der(unit="kg/s2")
              "1st derivative of mass flow rate in design flow direction";
            input Real m_flow_der2(unit="kg/s3")
              "2nd derivative of mass flow rate in design flow direction";
            output Real dp_der2
              "2nd derivative of pressure difference between port_a and port_b (= port_a.p - port_b.p)";
          protected
            Modelica.SIunits.PressureDifference dp_turbulent = (m_flow_turbulent/k)^2
              "Pressure where flow changes to turbulent";
            Real m_flowNorm = m_flow/m_flow_turbulent
              "Normalised mass flow rate";
            Real m_flowNormSq = m_flowNorm^2
              "Square of normalised mass flow rate";
          algorithm
           dp_der2 :=if noEvent(abs(m_flow)>m_flow_turbulent)
                     then sign(m_flow)*2/k^2 * (m_flow_der^2 + m_flow * m_flow_der2)
                     else dp_turbulent/m_flow_turbulent*(
                           (0.375  + (2.25 - 0.625*m_flowNormSq)*m_flowNormSq)*m_flow_der2
                         + (4.5 - 2.5*m_flowNormSq)*m_flowNorm/m_flow_turbulent*m_flow_der^2);

           annotation (smoothOrder=0,
           Inline=false,
          Documentation(info="<html>
<p>
Function that implements the second order derivative of
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow</a>
with respect to the mass flow rate.
</p>
</html>", revisions="<html>
<ul>
<li>
January 4, 2019, by Michael Wetter:<br/>
Set `Inline=false`.<br/>
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1070\">#1070</a>.
</li>
<li>
May 1, 2017, by Filip Jorissen:<br/>
Revised implementation such that
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
is C2 continuous.
See <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/725\">#725</a>.
</li>
<li>
January 22, 2016, by Michael Wetter:<br/>
Corrected type declaration of pressure difference.
This is
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/404\">#404</a>.
</li>
<li>
July 29, 2015, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end basicFlowFunction_m_flow_der2;
        annotation (Documentation(info="<html>
<p>
This package contains a basic flow model that is used by the
various models that compute pressure drop.
</p>
<h4>Assumption and limitations</h4>
<p>
Because the density does not change signficantly in heating,
ventilation and air conditioning systems for buildings,
the flow models compute the pressure drop based on the mass flow
rate and not the volume flow rate. This typically leads to simpler
equations because it does not require
the mass density, which changes when the flow is reversed.
Although, for conceptual design of building energy system, there is
in general not enough information available that would warrant a more
detailed pressure drop calculation.
If a more detailed computation of the flow resistance is needed,
then a user can use models from the
<a href=\"modelica://Modelica.Fluid\">Modelica.Fluid</a> library.
</p>
<p>
All functions have an argument <code>m_flow_turbulent</code> that determines where the
flow transitions to fully turbulent flow. For smaller mass flow rates,
the quadratic relation is replaced by a function that has finite slope
near zero pressure drop. This is done for numerical reasons, and to approximate
laminar flow, although the implementation does not use a linear function.
</p>
<h4>Implementation</h4>
<p>
The two main functions are
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_dp</a>
and
<a href=\"modelica://IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow\">
IBPSA.Fluid.BaseClasses.FlowModels.basicFlowFunction_m_flow</a>
that compute the mass flow rate or the pressure drop, respectively.
Both functions are two times continuously differentiable.
First and second order derivatives are provided
in the function that have the suffix <code>_der</code> and <code>_der2</code>.
</p>
</html>",         revisions="<html>
<ul>
<li>
April 10, 2009 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end FlowModels;
      annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains base classes that are used to construct the models in
<a href=\"modelica://IBPSA.Fluid\">IBPSA.Fluid</a>.
</p>
</html>"));
      end BaseClasses;
    annotation (
    preferredView="info", Documentation(info="<html>
This package contains components for fluid flow systems such as
pumps, valves and sensors. For other fluid flow models, see
<a href=\"modelica://Modelica.Fluid\">Modelica.Fluid</a>.
</html>"),
    Icon(graphics={
            Polygon(points={{-70,26},{68,-44},{68,26},{2,-10},{-70,-42},{-70,26}},
                lineColor={0,0,0}),
            Line(points={{2,42},{2,-10}}),
            Rectangle(
              extent={{-18,50},{22,42}},
              lineColor={0,0,0},
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid)}));
    end Fluid;

    package Media "Package with medium models"
      extends Modelica.Icons.Package;

      package Air "Package with moist air model that decouples pressure and temperature"
        extends Modelica.Media.Interfaces.PartialCondensingGases(
           mediumName="Air",
           final substanceNames={"water", "air"},
           final reducedX=true,
           final singleState = false,
           reference_X={0.01,0.99},
           final fluidConstants = {Modelica.Media.IdealGases.Common.FluidData.H2O,
                                   Modelica.Media.IdealGases.Common.FluidData.N2},
           reference_T=273.15,
           reference_p=101325,
           AbsolutePressure(start=p_default),
           Temperature(start=T_default));

        extends Modelica.Icons.Package;

        constant Integer Water=1
          "Index of water (in substanceNames, massFractions X, etc.)";

        constant Integer Air=2
          "Index of air (in substanceNames, massFractions X, etc.)";

        constant AbsolutePressure pStp = reference_p
          "Pressure for which fluid density is defined";

        constant Density dStp = 1.2 "Fluid density at pressure pStp";

        redeclare record extends ThermodynamicState
          "ThermodynamicState record for moist air"
        end ThermodynamicState;

        redeclare replaceable model extends BaseProperties(
          Xi(each stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          T(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default),
          final standardOrderComponents=true) "Base properties"

        protected
          constant Modelica.SIunits.MolarMass[2] MMX = {steam.MM,dryair.MM}
            "Molar masses of components";

          MassFraction X_steam "Mass fraction of steam water";
          MassFraction X_air "Mass fraction of air";
          Modelica.SIunits.TemperatureDifference dT(start=T_default-reference_T)
            "Temperature difference used to compute enthalpy";
        equation
          assert(T >= 200.0, "
In "         + getInstanceName() + ": Temperature T exceeded its minimum allowed value of -73.15 degC (200 Kelvin)
as required from medium model \""       + mediumName + "\".");
          assert(T <= 423.15, "
In "         + getInstanceName() + ": Temperature T exceeded its maximum allowed value of 150 degC (423.15 Kelvin)
as required from medium model \""       + mediumName + "\".");

          MM = 1/(Xi[Water]/MMX[Water]+(1.0-Xi[Water])/MMX[Air]);

          X_steam  = Xi[Water]; // There is no liquid in this medium model
          X_air    = 1-Xi[Water];

          dT = T - reference_T;
          h = dT*dryair.cp * X_air +
             (dT * steam.cp + h_fg) * X_steam;
          R = dryair.R*X_air + steam.R*X_steam;

          // Equation for ideal gas, from h=u+p*v and R*T=p*v, from which follows that  u = h-R*T.
          // u = h-R*T;
          // However, in this medium, the gas law is d/dStp=p/pStp, from which follows using h=u+pv that
          // u= h-p*v = h-p/d = h-pStp/dStp
          u = h-pStp/dStp;

          // In this medium model, the density depends only
          // on temperature, but not on pressure.
          //  d = p/(R*T);
          d/dStp = p/pStp;

          state.p = p;
          state.T = T;
          state.X = X;
        end BaseProperties;

      redeclare function density "Gas density"
        extends Modelica.Icons.Function;
        input ThermodynamicState state;
        output Density d "Density";
      algorithm
        d :=state.p*dStp/pStp;
        annotation(smoothOrder=5,
        Inline=true,
        Documentation(info="<html>
Density is computed from pressure, temperature and composition in the thermodynamic state record applying the ideal gas law.
</html>"));
      end density;

      redeclare function extends dynamicViscosity
          "Return the dynamic viscosity of dry air"
      algorithm
        eta := 4.89493640395e-08 * state.T + 3.88335940547e-06;
        annotation (
        smoothOrder=99,
        Inline=true,
      Documentation(info="<html>
<p>
This function returns the dynamic viscosity.
</p>
<h4>Implementation</h4>
<p>
The function is based on the 5th order polynomial
of
<a href=\"modelica://Modelica.Media.Air.MoistAir.dynamicViscosity\">
Modelica.Media.Air.MoistAir.dynamicViscosity</a>.
However, for the typical range of temperatures encountered
in building applications, a linear function sufficies.
This implementation is therefore the above 5th order polynomial,
linearized around <i>20</i>&deg;C.
The relative error of this linearization is
<i>0.4</i>% at <i>-20</i>&deg;C,
and less then
<i>0.2</i>% between  <i>-5</i>&deg;C and  <i>+50</i>&deg;C.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 19, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end dynamicViscosity;

      redeclare function enthalpyOfCondensingGas
          "Enthalpy of steam per unit mass of steam"
        extends Modelica.Icons.Function;

        input Temperature T "temperature";
        output SpecificEnthalpy h "steam enthalpy";
      algorithm
        h := (T-reference_T) * steam.cp + h_fg;
        annotation(smoothOrder=5,
        Inline=true,
        derivative=der_enthalpyOfCondensingGas);
      end enthalpyOfCondensingGas;

      redeclare replaceable function extends enthalpyOfGas
          "Enthalpy of gas mixture per unit mass of gas mixture"
      algorithm
        h := enthalpyOfCondensingGas(T)*X[Water]
             + enthalpyOfDryAir(T)*(1.0-X[Water]);
      annotation (
        Inline=true);
      end enthalpyOfGas;

      redeclare replaceable function extends enthalpyOfLiquid
          "Enthalpy of liquid (per unit mass of liquid) which is linear in the temperature"
      algorithm
        h := (T - reference_T)*cpWatLiq;
        annotation (
          smoothOrder=5,
          Inline=true,
          derivative=der_enthalpyOfLiquid);
      end enthalpyOfLiquid;

      redeclare function enthalpyOfNonCondensingGas
          "Enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;

        input Temperature T "temperature";
        output SpecificEnthalpy h "enthalpy";
      algorithm
        h := enthalpyOfDryAir(T);
        annotation (
        smoothOrder=5,
        Inline=true,
        derivative=der_enthalpyOfNonCondensingGas);
      end enthalpyOfNonCondensingGas;

      redeclare function extends enthalpyOfVaporization
          "Enthalpy of vaporization of water"
      algorithm
        r0 := h_fg;
        annotation (
          Inline=true);
      end enthalpyOfVaporization;

      redeclare function extends gasConstant
          "Return ideal gas constant as a function from thermodynamic state, only valid for phi<1"

      algorithm
          R := dryair.R*(1 - state.X[Water]) + steam.R*state.X[Water];
        annotation (
          smoothOrder=2,
          Inline=true,
          Documentation(info="<html>
The ideal gas constant for moist air is computed from <a href=\"modelica://Modelica.Media.Air.MoistAir.ThermodynamicState\">thermodynamic state</a> assuming that all water is in the gas phase.
</html>"));
      end gasConstant;

      redeclare function extends pressure
          "Returns pressure of ideal gas as a function of the thermodynamic state record"

      algorithm
        p := state.p;
        annotation (
        smoothOrder=2,
        Inline=true,
        Documentation(info="<html>
Pressure is returned from the thermodynamic state record input as a simple assignment.
</html>"));
      end pressure;

      redeclare function extends isobaricExpansionCoefficient
          "Isobaric expansion coefficient beta"
      algorithm
        beta := 0;
        annotation (
          smoothOrder=5,
          Inline=true,
      Documentation(info="<html>
<p>
This function returns the isobaric expansion coefficient at constant pressure,
which is zero for this medium.
The isobaric expansion coefficient at constant pressure is
</p>
<p align=\"center\" style=\"font-style:italic;\">
&beta;<sub>p</sub> = - 1 &frasl; v &nbsp; (&part; v &frasl; &part; T)<sub>p</sub> = 0,
</p>
<p>
where
<i>v</i> is the specific volume,
<i>T</i> is the temperature and
<i>p</i> is the pressure.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end isobaricExpansionCoefficient;

      redeclare function extends isothermalCompressibility
          "Isothermal compressibility factor"
      algorithm
        kappa := -1/state.p;
        annotation (
          smoothOrder=5,
          Inline=true,
          Documentation(info="<html>
<p>
This function returns the isothermal compressibility coefficient.
The isothermal compressibility is
</p>
<p align=\"center\" style=\"font-style:italic;\">
&kappa;<sub>T</sub> = -1 &frasl; v &nbsp; (&part; v &frasl; &part; p)<sub>T</sub>
  = -1 &frasl; p,
</p>
<p>
where
<i>v</i> is the specific volume,
<i>T</i> is the temperature and
<i>p</i> is the pressure.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end isothermalCompressibility;

      redeclare function extends saturationPressure
          "Saturation curve valid for 223.16 <= T <= 373.16 (and slightly outside with less accuracy)"

      algorithm
          psat := IBPSA.Utilities.Psychrometrics.Functions.saturationPressure(Tsat);
        annotation (
        smoothOrder=5,
        Inline=true);
      end saturationPressure;

      redeclare function extends specificEntropy
          "Return the specific entropy, only valid for phi<1"

        protected
          Modelica.SIunits.MoleFraction[2] Y "Molar fraction";
      algorithm
          Y := massToMoleFractions(
               state.X, {steam.MM,dryair.MM});
          s := specificHeatCapacityCp(state) * Modelica.Math.log(state.T/reference_T)
               - Modelica.Constants.R *
               sum(state.X[i]/MMX[i]*
                   Modelica.Math.log(max(Y[i], Modelica.Constants.eps)*state.p/reference_p) for i in 1:2);
        annotation (
        Inline=true,
          Documentation(info="<html>
<p>
This function computes the specific entropy.
</p>
<p>
The specific entropy of the mixture is obtained from
</p>
<p align=\"center\" style=\"font-style:italic;\">
s = s<sub>s</sub> + s<sub>m</sub>,
</p>
<p>
where
<i>s<sub>s</sub></i> is the entropy change due to the state change
(relative to the reference temperature) and
<i>s<sub>m</sub></i> is the entropy change due to mixing
of the dry air and water vapor.
</p>
<p>
The entropy change due to change in state is obtained from
</p>
<p align=\"center\" style=\"font-style:italic;\">
s<sub>s</sub> = c<sub>v</sub> ln(T/T<sub>0</sub>) + R ln(v/v<sub>0</sub>) <br/>
= c<sub>v</sub> ln(T/T<sub>0</sub>) + R ln(&rho;<sub>0</sub>/&rho;)
</p>
<p>If we assume <i>&rho; = p<sub>0</sub>/(R T)</i>,
and because <i>c<sub>p</sub> = c<sub>v</sub> + R</i>,
we can write
</p>
<p align=\"center\" style=\"font-style:italic;\">
s<sub>s</sub> = c<sub>v</sub> ln(T/T<sub>0</sub>) + R ln(T/T<sub>0</sub>) <br/>
=c<sub>p</sub> ln(T/T<sub>0</sub>).
</p>
<p>
Next, the entropy of mixing is obtained from a reversible isothermal
expansion process. Hence,
</p>
<p align=\"center\" style=\"font-style:italic;\">
  s<sub>m</sub> = -R &sum;<sub>i</sub>( X<sub>i</sub> &frasl; M<sub>i</sub>
  ln(Y<sub>i</sub> p/p<sub>0</sub>)),
</p>
<p>
where <i>R</i> is the gas constant,
<i>X</i> is the mass fraction,
<i>M</i> is the molar mass, and
<i>Y</i> is the mole fraction.
</p>
<p>
To obtain the state for a given pressure, entropy and mass fraction, use
<a href=\"modelica://IBPSA.Media.Air.setState_psX\">
IBPSA.Media.Air.setState_psX</a>.
</p>
<h4>Limitations</h4>
<p>
This function is only valid for a relative humidity below 100%.
</p>
</html>",       revisions="<html>
<ul>
<li>
November 27, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end specificEntropy;

      redeclare function extends density_derp_T
          "Return the partial derivative of density with respect to pressure at constant temperature"
      algorithm
        ddpT := dStp/pStp;
        annotation (
        Inline=true,
      Documentation(info="<html>
<p>
This function returns the partial derivative of density
with respect to pressure at constant temperature.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end density_derp_T;

      redeclare function extends density_derT_p
          "Return the partial derivative of density with respect to temperature at constant pressure"
      algorithm
        ddTp := 0;

        annotation (
        smoothOrder=99,
        Inline=true,
        Documentation(info=
      "<html>
<p>
This function computes the derivative of density with respect to temperature
at constant pressure.
</p>
</html>",       revisions=
      "<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end density_derT_p;

      redeclare function extends density_derX
          "Return the partial derivative of density with respect to mass fractions at constant pressure and temperature"
      algorithm
        dddX := fill(0, nX);
      annotation (
        smoothOrder=99,
        Inline=true,
        Documentation(info="<html>
<p>
This function returns the partial derivative of density
with respect to mass fraction.
This value is zero because in this medium, density is proportional
to pressure, but independent of the species concentration.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end density_derX;

      redeclare replaceable function extends specificHeatCapacityCp
          "Specific heat capacity of gas mixture at constant pressure"
      algorithm
        cp := dryair.cp*(1-state.X[Water]) +steam.cp*state.X[Water];
          annotation (
        smoothOrder=99,
        Inline=true,
        derivative=der_specificHeatCapacityCp);
      end specificHeatCapacityCp;

      redeclare replaceable function extends specificHeatCapacityCv
          "Specific heat capacity of gas mixture at constant volume"
      algorithm
        cv:= dryair.cv*(1-state.X[Water]) +steam.cv*state.X[Water];
        annotation (
          smoothOrder=99,
          Inline=true,
          derivative=der_specificHeatCapacityCv);
      end specificHeatCapacityCv;

      redeclare function setState_dTX
          "Return thermodynamic state as function of density d, temperature T and composition X"
        extends Modelica.Icons.Function;
        input Density d "Density";
        input Temperature T "Temperature";
        input MassFraction X[:]=reference_X "Mass fractions";
        output ThermodynamicState state "Thermodynamic state";

      algorithm
          // Note that d/dStp = p/pStp, hence p = d*pStp/dStp
          state := if size(X, 1) == nX then
                     ThermodynamicState(p=d*pStp/dStp, T=T, X=X)
                   else
                     ThermodynamicState(p=d*pStp/dStp,
                                        T=T,
                                        X=cat(1, X, {1 - sum(X)}));
          annotation (
          smoothOrder=2,
          Inline=true,
          Documentation(info="<html>
<p>
The <a href=\"modelica://Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState\">thermodynamic state record</a>
    is computed from density <code>d</code>, temperature <code>T</code> and composition <code>X</code>.
</p>
</html>"));
      end setState_dTX;

      redeclare function extends setState_phX
          "Return thermodynamic state as function of pressure p, specific enthalpy h and composition X"
      algorithm
        state := if size(X, 1) == nX then
          ThermodynamicState(p=p, T=temperature_phX(p, h, X), X=X)
       else
          ThermodynamicState(p=p, T=temperature_phX(p, h, X), X=cat(1, X, {1 - sum(X)}));
        annotation (
        smoothOrder=2,
        Inline=true,
        Documentation(info="<html>
The <a href=\"modelica://Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState\">
thermodynamic state record</a> is computed from pressure p, specific enthalpy h and composition X.
</html>"));
      end setState_phX;

      redeclare function extends setState_pTX
          "Return thermodynamic state as function of p, T and composition X or Xi"
      algorithm
          state := if size(X, 1) == nX then
                      ThermodynamicState(p=p, T=T, X=X)
                   else
                      ThermodynamicState(p=p, T=T, X=cat(1, X, {1 - sum(X)}));
          annotation (
        smoothOrder=2,
        Inline=true,
        Documentation(info="<html>
The <a href=\"modelica://Modelica.Media.Interfaces.PartialMixtureMedium.ThermodynamicState\">
thermodynamic state record</a> is computed from pressure p, temperature T and composition X.
</html>"));
      end setState_pTX;

      redeclare function extends setState_psX
          "Return the thermodynamic state as function of p, s and composition X or Xi"
        protected
          Modelica.SIunits.MassFraction[2] X_int "Mass fraction";
          Modelica.SIunits.MoleFraction[2] Y "Molar fraction";
          Modelica.SIunits.Temperature T "Temperature";
      algorithm
          if size(X, 1) == nX then
            X_int:=X;
          else
            X_int :=cat(
              1,
              X,
              {1 - sum(X)});
          end if;
         Y := massToMoleFractions(
               X_int, {steam.MM,dryair.MM});
          // The next line is obtained from symbolic solving the
          // specificEntropy function for T.
          // In this formulation, we can set T to any value when calling
          // specificHeatCapacityCp as cp does not depend on T.
          T := 273.15 * Modelica.Math.exp((s + Modelica.Constants.R *
                 sum(X_int[i]/MMX[i]*
                   Modelica.Math.log(max(Y[i], Modelica.Constants.eps)) for i in 1:2))
                   / specificHeatCapacityCp(setState_pTX(p=p,
                                                         T=273.15,
                                                         X=X_int)));

          state := ThermodynamicState(p=p,
                                      T=T,
                                      X=X_int);

      annotation (
      Inline=true,
      Documentation(info="<html>
<p>
This function returns the thermodynamic state based on pressure,
specific entropy and mass fraction.
</p>
<p>
The state is computed by symbolically solving
<a href=\"modelica://IBPSA.Media.Air.specificEntropy\">
IBPSA.Media.Air.specificEntropy</a>
for temperature.
</p>
</html>",       revisions="<html>
<ul>
<li>
November 27, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end setState_psX;

      redeclare replaceable function extends specificEnthalpy
          "Compute specific enthalpy from pressure, temperature and mass fraction"
      algorithm
        h := (state.T - reference_T)*dryair.cp * (1 - state.X[Water]) +
             ((state.T-reference_T) * steam.cp + h_fg) * state.X[Water];
        annotation (
         smoothOrder=5,
         Inline=true);
      end specificEnthalpy;

      redeclare replaceable function specificEnthalpy_pTX "Specific enthalpy"
        extends Modelica.Icons.Function;
        input Modelica.SIunits.Pressure p "Pressure";
        input Modelica.SIunits.Temperature T "Temperature";
        input Modelica.SIunits.MassFraction X[:] "Mass fractions of moist air";
        output Modelica.SIunits.SpecificEnthalpy h "Specific enthalpy at p, T, X";

      algorithm
        h := specificEnthalpy(setState_pTX(p, T, X));
        annotation(smoothOrder=5,
                   Inline=true,
                   inverse(T=temperature_phX(p, h, X)),
                   Documentation(info="<html>
Specific enthalpy as a function of temperature and species concentration.
The pressure is input for compatibility with the medium models, but the specific enthalpy
is independent of the pressure.
</html>",
      revisions="<html>
<ul>
<li>
April 30, 2015, by Filip Jorissen and Michael Wetter:<br/>
Added <code>Inline=true</code> for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/227\">
issue 227</a>.
</li>
</ul>
</html>"));
      end specificEnthalpy_pTX;

      redeclare replaceable function extends specificGibbsEnergy
          "Specific Gibbs energy"
      algorithm
        g := specificEnthalpy(state) - state.T*specificEntropy(state);
        annotation (
          Inline=true);
      end specificGibbsEnergy;

      redeclare replaceable function extends specificHelmholtzEnergy
          "Specific Helmholtz energy"
      algorithm
        f := specificEnthalpy(state) - gasConstant(state)*state.T - state.T*specificEntropy(state);
        annotation (
          Inline=true);
      end specificHelmholtzEnergy;

      redeclare function extends isentropicEnthalpy "Return the isentropic enthalpy"
      algorithm
        h_is := specificEnthalpy(setState_psX(
                  p=p_downstream,
                  s=specificEntropy(refState),
                  X=refState.X));
      annotation (
        Inline=true,
        Documentation(info="<html>
<p>
This function computes the specific enthalpy for
an isentropic state change from the temperature
that corresponds to the state <code>refState</code>
to <code>reference_T</code>.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end isentropicEnthalpy;

      redeclare function extends specificInternalEnergy "Specific internal energy"
        extends Modelica.Icons.Function;
      algorithm
        u := specificEnthalpy(state) - pStp/dStp;
        annotation (
          Inline=true);
      end specificInternalEnergy;

      redeclare function extends temperature
          "Return temperature of ideal gas as a function of the thermodynamic state record"
      algorithm
        T := state.T;
        annotation (
        smoothOrder=2,
        Inline=true,
        Documentation(info="<html>
Temperature is returned from the thermodynamic state record input as a simple assignment.
</html>"));
      end temperature;

      redeclare function extends molarMass "Return the molar mass"
      algorithm
          MM := 1/(state.X[Water]/MMX[Water]+(1.0-state.X[Water])/MMX[Air]);
          annotation (
      Inline=true,
      smoothOrder=99,
      Documentation(info="<html>
<p>
This function returns the molar mass.
</p>
</html>",
      revisions="<html>
<ul>
<li>
December 18, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
      end molarMass;

      redeclare replaceable function temperature_phX
          "Compute temperature from specific enthalpy and mass fraction"
          extends Modelica.Icons.Function;
        input AbsolutePressure p "Pressure";
        input SpecificEnthalpy h "specific enthalpy";
        input MassFraction[:] X "mass fractions of composition";
        output Temperature T "temperature";
      algorithm
        T := reference_T + (h - h_fg * X[Water])
             /((1 - X[Water])*dryair.cp + X[Water] * steam.cp);
        annotation(smoothOrder=5,
                   Inline=true,
                   inverse(h=specificEnthalpy_pTX(p, T, X)),
                   Documentation(info="<html>
Temperature as a function of specific enthalpy and species concentration.
The pressure is input for compatibility with the medium models, but the temperature
is independent of the pressure.
</html>",
      revisions="<html>
<ul>
<li>
April 30, 2015, by Filip Jorissen and Michael Wetter:<br/>
Added <code>Inline=true</code> for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/227\">
issue 227</a>.
</li>
</ul>
</html>"));
      end temperature_phX;

      redeclare function extends thermalConductivity
          "Thermal conductivity of dry air as a polynomial in the temperature"
      algorithm
        lambda := Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluate(
            {(-4.8737307422969E-008), 7.67803133753502E-005, 0.0241814385504202},
         Modelica.SIunits.Conversions.to_degC(state.T));
      annotation(LateInline=true);
      end thermalConductivity;

        record GasProperties
          "Coefficient data record for properties of perfect gases"
          extends Modelica.Icons.Record;

          Modelica.SIunits.MolarMass MM "Molar mass";
          Modelica.SIunits.SpecificHeatCapacity R "Gas constant";
          Modelica.SIunits.SpecificHeatCapacity cp
            "Specific heat capacity at constant pressure";
          Modelica.SIunits.SpecificHeatCapacity cv = cp-R
            "Specific heat capacity at constant volume";
          annotation (
            preferredView="info",
            defaultComponentName="gas",
            Documentation(info="<html>
<p>
This data record contains the coefficients for perfect gases.
</p>
</html>",       revisions="<html>
<ul>
<li>
September 12, 2014, by Michael Wetter:<br/>
Corrected the wrong location of the <code>preferredView</code>
and the <code>revisions</code> annotation.
</li>
<li>
November 21, 2013, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
        end GasProperties;
        constant GasProperties dryair(
          R =    Modelica.Media.IdealGases.Common.SingleGasesData.Air.R,
          MM =   Modelica.Media.IdealGases.Common.SingleGasesData.Air.MM,
          cp=IBPSA.Utilities.Psychrometrics.Constants.cpAir,
          cv=IBPSA.Utilities.Psychrometrics.Constants.cpAir
                   -Modelica.Media.IdealGases.Common.SingleGasesData.Air.R)
          "Dry air properties";

        constant GasProperties steam(
          R =    Modelica.Media.IdealGases.Common.SingleGasesData.H2O.R,
          MM =   Modelica.Media.IdealGases.Common.SingleGasesData.H2O.MM,
          cp=IBPSA.Utilities.Psychrometrics.Constants.cpSte,
          cv=IBPSA.Utilities.Psychrometrics.Constants.cpSte
                   -Modelica.Media.IdealGases.Common.SingleGasesData.H2O.R)
          "Steam properties";

        constant Modelica.SIunits.MolarMass[2] MMX={steam.MM,dryair.MM}
          "Molar masses of components";

        constant Modelica.SIunits.SpecificEnergy h_fg=IBPSA.Utilities.Psychrometrics.Constants.h_fg
          "Latent heat of evaporation of water";

        constant Modelica.SIunits.SpecificHeatCapacity cpWatLiq=IBPSA.Utilities.Psychrometrics.Constants.cpWatLiq
          "Specific heat capacity of liquid water";

      replaceable function der_enthalpyOfLiquid
          "Temperature derivative of enthalpy of liquid per unit mass of liquid"
        extends Modelica.Icons.Function;
        input Temperature T "Temperature";
        input Real der_T "Temperature derivative";
        output Real der_h "Derivative of liquid enthalpy";
      algorithm
        der_h := cpWatLiq*der_T;
        annotation (
          Inline=true);
      end der_enthalpyOfLiquid;

        function der_enthalpyOfCondensingGas
            "Derivative of enthalpy of steam per unit mass of steam"
          extends Modelica.Icons.Function;
          input Temperature T "Temperature";
          input Real der_T "Temperature derivative";
          output Real der_h "Derivative of steam enthalpy";
        algorithm
          der_h := steam.cp*der_T;
          annotation (
            Inline=true);
        end der_enthalpyOfCondensingGas;

      replaceable function enthalpyOfDryAir
          "Enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;

        input Temperature T "Temperature";
        output SpecificEnthalpy h "Dry air enthalpy";
      algorithm
        h := (T - reference_T)*dryair.cp;
        annotation (
          smoothOrder=5,
          Inline=true,
          derivative=der_enthalpyOfDryAir);
      end enthalpyOfDryAir;

      replaceable function der_enthalpyOfDryAir
          "Derivative of enthalpy of dry air per unit mass of dry air"
        extends Modelica.Icons.Function;
        input Temperature T "Temperature";
        input Real der_T "Temperature derivative";
        output Real der_h "Derivative of dry air enthalpy";
      algorithm
        der_h := dryair.cp*der_T;
        annotation (
          Inline=true);
      end der_enthalpyOfDryAir;

      replaceable function der_enthalpyOfNonCondensingGas
          "Derivative of enthalpy of non-condensing gas per unit mass of steam"
        extends Modelica.Icons.Function;
        input Temperature T "Temperature";
        input Real der_T "Temperature derivative";
        output Real der_h "Derivative of steam enthalpy";
      algorithm
        der_h := der_enthalpyOfDryAir(T, der_T);
        annotation (
          Inline=true);
      end der_enthalpyOfNonCondensingGas;

      replaceable function der_specificHeatCapacityCp
          "Derivative of specific heat capacity of gas mixture at constant pressure"
        extends Modelica.Icons.Function;
          input ThermodynamicState state "Thermodynamic state";
          input ThermodynamicState der_state "Derivative of thermodynamic state";
          output Real der_cp(unit="J/(kg.K.s)")
            "Derivative of specific heat capacity";
      algorithm
        der_cp := (steam.cp-dryair.cp)*der_state.X[Water];
        annotation (
          Inline=true);
      end der_specificHeatCapacityCp;

      replaceable function der_specificHeatCapacityCv
          "Derivative of specific heat capacity of gas mixture at constant volume"
        extends Modelica.Icons.Function;
          input ThermodynamicState state "Thermodynamic state";
          input ThermodynamicState der_state "Derivative of thermodynamic state";
          output Real der_cv(unit="J/(kg.K.s)")
            "Derivative of specific heat capacity";
      algorithm
        der_cv := (steam.cv-dryair.cv)*der_state.X[Water];
        annotation (
          Inline=true);
      end der_specificHeatCapacityCv;

        annotation(preferredView="info", Documentation(info="<html>
<p>
This medium package models moist air using a gas law in which pressure and temperature
are independent, which often leads to significantly faster and more robust computations.
The specific heat capacities at constant pressure and at constant volume are constant.
The air is assumed to be not saturated.
</p>
<p>
This medium uses the gas law
</p>
<p align=\"center\" style=\"font-style:italic;\">
&rho;/&rho;<sub>stp</sub> = p/p<sub>stp</sub>,
</p>
<p>
where
<i>p<sub>std</sub></i> and <i>&rho;<sub>stp</sub></i> are constant reference
temperature and density, rathern than the ideal gas law
</p>
<p align=\"center\" style=\"font-style:italic;\">
&rho; = p &frasl;(R T),
</p>
<p>
where <i>R</i> is the gas constant and <i>T</i> is the temperature.
</p>
<p>
This formulation often leads to smaller systems of nonlinear equations
because equations for pressure and temperature are decoupled.
Therefore, if air inside a control volume such as room air is heated, it
does not increase its specific volume. Consequently, merely heating or cooling
a control volume does not affect the air flow calculations in a duct network
that may be connected to that volume.
Note that multizone air exchange simulation in which buoyancy drives the
air flow is still possible as the models in
<a href=\"modelica://IBPSA.Airflow.Multizone\">
IBPSA.Airflow.Multizone</a> compute the mass density using the function
<a href=\"modelica://IBPSA.Utilities.Psychrometrics.Functions.density_pTX\">
IBPSA.Utilities.Psychrometrics.Functions.density_pTX</a> in which density
is a function of temperature.
</p>
<p>
Note that models in this package implement the equation for the internal energy as
</p>
<p align=\"center\" style=\"font-style:italic;\">
  u = h - p<sub>stp</sub> &frasl; &rho;<sub>stp</sub>,
</p>
<p>
where
<i>u</i> is the internal energy per unit mass,
<i>h</i> is the enthalpy per unit mass,
<i>p<sub>stp</sub></i> is the static pressure and
<i>&rho;<sub>stp</sub></i> is the mass density at standard pressure and temperature.
The reason for this implementation is that in general,
</p>
<p align=\"center\" style=\"font-style:italic;\">
  h = u + p v,
</p>
<p>
from which follows that
</p>
<p align=\"center\" style=\"font-style:italic;\">
  u = h - p v = h - p &frasl; &rho; = h - p<sub>stp</sub> &frasl; &rho;<sub>std</sub>,
</p>
<p>
because <i>p &frasl; &rho; = p<sub>stp</sub> &frasl; &rho;<sub>stp</sub></i> in this medium model.
</p>
<p>
The enthalpy is computed using the convention that <i>h=0</i>
if <i>T=0</i> &deg;C and no water vapor is present.
</p>
</html>",       revisions="<html>
<ul>
<li>
January 11, 2019 by Michael Wetter:<br/>
Reforulated assignment of <code>X_int</code> in <code>setState_psX</code>.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1079\">#1079</a>.
</li>
<li>
October 26, 2018, by Filip Jorissen and Michael Wetter:<br/>
Now printing different messages if temperature is above or below its limit,
and adding instance name as JModelica does not print the full instance name in the assertion.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1045\">#1045</a>.
</li>
<li>
November 4, 2016, by Michael Wetter:<br/>
Set default value for <code>dT.start</code> in base properties.<br/>
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/575\">#575</a>.
</li>
<li>
June 6, 2015, by Michael Wetter:<br/>
Set <code>AbsolutePressure(start=p_default)</code> to avoid
a translation error if
<a href=\"modelica://IBPSA.Fluid.Sources.Examples.TraceSubstancesFlowSource\">
IBPSA.Fluid.Sources.Examples.TraceSubstancesFlowSource</a>
is translated in pedantic mode in Dymola 2016.
The reason is that pressures use <code>Medium.p_default</code> as start values,
but
<a href=\"modelica://Modelica.Media.Interfaces.Types\">
Modelica.Media.Interfaces.Types</a>
sets a default value of <i>1E-5</i>.
A similar change has been done for pressure.
This fixes
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/266\">#266</a>.
</li>
<li>
June 5, 2015, by Michael Wetter:<br/>
Added <code>stateSelect</code> attribute in <code>BaseProperties.T</code>
to allow correct use of <code>preferredMediumState</code> as
described in
<a href=\"modelica://Modelica.Media.Interfaces.PartialMedium\">
Modelica.Media.Interfaces.PartialMedium</a>.
Note that the default is <code>preferredMediumState=false</code>
and hence the same states are used as were used before.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/260\">#260</a>.
</li>
<li>
May 11, 2015, by Michael Wetter:<br/>
Removed
<code>p(stateSelect=if preferredMediumStates then StateSelect.prefer else StateSelect.default)</code>
in declaration of <code>BaseProperties</code>.
Otherwise, when models that contain a fluid volume
are exported as an FMU, their pressure would be
differentiated with respect to time. This would require
the time derivative of the inlet pressure, which is not available,
causing the translation to stop with an error.
</li>
<li>
May 1, 2015, by Michael Wetter:<br/>
Added <code>Inline=true</code> for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/227\">
issue 227</a>.
</li>
<li>
March 20, 2015, by Michael Wetter:<br/>
Added missing term <code>state.p/reference_p</code> in function
<code>specificEntropy</code>.
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/193\">#193</a>.
</li>
<li>
February 3, 2015, by Michael Wetter:<br/>
Removed <code>stateSelect.prefer</code> for temperature.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/160\">#160</a>.
</li>
<li>
July 24, 2014, by Michael Wetter:<br/>
Changed implementation to use
<a href=\"modelica://IBPSA.Utilities.Psychrometrics.Constants\">
IBPSA.Utilities.Psychrometrics.Constants</a>.
This was done to use consistent values throughout the library.
</li>
<li>
November 16, 2013, by Michael Wetter:<br/>
Revised and simplified the implementation.
</li>
<li>
November 14, 2013, by Michael Wetter:<br/>
Removed function
<code>HeatCapacityOfWater</code>
which is neither needed nor implemented in the
Modelica Standard Library.
</li>
<li>
November 13, 2013, by Michael Wetter:<br/>
Removed non-used computations in <code>specificEnthalpy_pTX</code> and
in <code>temperature_phX</code>.
</li>
<li>
March 29, 2013, by Michael Wetter:<br/>
Added <code>final standardOrderComponents=true</code> in the
<code>BaseProperties</code> declaration. This avoids an error
when models are checked in Dymola 2014 in the pedenatic mode.
</li>
<li>
April 12, 2012, by Michael Wetter:<br/>
Added keyword <code>each</code> to <code>Xi(stateSelect=...)</code>.
</li>
<li>
April 4, 2012, by Michael Wetter:<br/>
Added redeclaration of <code>ThermodynamicState</code> to avoid a warning
during model check and translation.
</li>
<li>
August 3, 2011, by Michael Wetter:<br/>
Fixed bug in <code>u=h-R*T</code>, which is only valid for ideal gases.
For this medium, the function is <code>u=h-pStd/dStp</code>.
</li>
<li>
January 27, 2010, by Michael Wetter:<br/>
Fixed bug in <code>else</code> branch of function <code>setState_phX</code>
that lead to a run-time error when the constructor of this function was called.
</li>
<li>
January 22, 2010, by Michael Wetter:<br/>
Added implementation of function
<a href=\"modelica://IBPSA.Media.GasesPTDecoupled.MoistAirUnsaturated.enthalpyOfNonCondensingGas\">
enthalpyOfNonCondensingGas</a> and its derivative.
</li>
<li>
January 13, 2010, by Michael Wetter:<br/>
Fixed implementation of derivative functions.
</li>
<li>
August 28, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),Icon(graphics={
              Ellipse(
                extent={{-78,78},{-34,34}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{-18,86},{26,42}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{48,58},{92,14}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{-22,32},{22,-12}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{36,-32},{80,-76}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{-36,-30},{8,-74}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120}),
              Ellipse(
                extent={{-90,-6},{-46,-50}},
                lineColor={0,0,0},
                fillPattern=FillPattern.Sphere,
                fillColor={120,120,120})}));
      end Air;
      annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains media models for water and moist air.
The media models in this package are
compatible with
<a href=\"modelica://Modelica.Media\">
Modelica.Media</a>
but the implementation is in general simpler, which often
leads to more efficient simulation.
Due to the simplifications, the media model of this package
are generally accurate for a smaller temperature range than the
models in <a href=\"modelica://Modelica.Media\">
Modelica.Media</a>, but the smaller temperature range may often be
sufficient for building HVAC applications.
</p>
</html>"),
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
            graphics={
            Line(
              points = {{-76,-80},{-62,-30},{-32,40},{4,66},{48,66},{73,45},{62,-8},{48,-50},{38,-80}},
              color={64,64,64},
              smooth=Smooth.Bezier),
            Line(
              points={{-40,20},{68,20}},
              color={175,175,175}),
            Line(
              points={{-40,20},{-44,88},{-44,88}},
              color={175,175,175}),
            Line(
              points={{68,20},{86,-58}},
              color={175,175,175}),
            Line(
              points={{-60,-28},{56,-28}},
              color={175,175,175}),
            Line(
              points={{-60,-28},{-74,84},{-74,84}},
              color={175,175,175}),
            Line(
              points={{56,-28},{70,-80}},
              color={175,175,175}),
            Line(
              points={{-76,-80},{38,-80}},
              color={175,175,175}),
            Line(
              points={{-76,-80},{-94,-16},{-94,-16}},
              color={175,175,175})}));
    end Media;

    package Utilities "Package with utility functions such as for I/O"
      extends Modelica.Icons.Package;

      package Math "Library with functions such as for smoothing"
        extends Modelica.Icons.Package;

        package Functions "Package with mathematical functions"
          extends Modelica.Icons.VariantsPackage;

          function inverseXRegularized
            "Function that approximates 1/x by a twice continuously differentiable function"
            extends Modelica.Icons.Function;
           input Real x "Abscissa value";
           input Real delta(min=Modelica.Constants.eps)
              "Abscissa value below which approximation occurs";
           input Real deltaInv = 1/delta "Inverse value of delta";

           input Real a = -15*deltaInv "Polynomial coefficient";
           input Real b = 119*deltaInv^2 "Polynomial coefficient";
           input Real c = -361*deltaInv^3 "Polynomial coefficient";
           input Real d = 534*deltaInv^4 "Polynomial coefficient";
           input Real e = -380*deltaInv^5 "Polynomial coefficient";
           input Real f = 104*deltaInv^6 "Polynomial coefficient";

           output Real y "Function value";

          algorithm
            y := if (x > delta or x < -delta) then 1/x elseif (x < delta/2 and x > -delta/2) then x/(delta*delta) else IBPSA.Utilities.Math.Functions.BaseClasses.smoothTransition(
                        x=x,
                        delta=delta,
                        deltaInv=deltaInv,
                        a=a,
                        b=b,
                        c=c,
                        d=d,
                        e=e,
                        f=f);

            annotation (smoothOrder=2,
            derivative(order=1,
                    zeroDerivative=delta,
                    zeroDerivative=deltaInv,
                    zeroDerivative=a,
                    zeroDerivative=b,
                    zeroDerivative=c,
                    zeroDerivative=d,
                    zeroDerivative=e,
                    zeroDerivative=f)=IBPSA.Utilities.Math.Functions.BaseClasses.der_inverseXRegularized,
                        Inline=true,
          Documentation(info="<html>
<p>
Function that approximates <i>y=1 &frasl; x</i>
inside the interval <i>-&delta; &le; x &le; &delta;</i>.
The approximation is twice continuously differentiable with a bounded derivative on the whole
real line.
</p>
<p>
See the plot of
<a href=\"modelica://IBPSA.Utilities.Math.Functions.Examples.InverseXRegularized\">
IBPSA.Utilities.Math.Functions.Examples.InverseXRegularized</a>
for the graph.
</p>
<p>
For efficiency, the polynomial coefficients
<code>a, b, c, d, e, f</code> and
the inverse of the smoothing parameter <code>deltaInv</code>
are exposed as arguments to this function.
Typically, these coefficients only depend on parameters and hence
can be computed once.
They must be equal to their default values, otherwise the function
is not twice continuously differentiable.
By exposing these coefficients as function arguments, models
that call this function can compute them as parameters, and
assign these parameter values in the function call.
This avoids that the coefficients are evaluated for each time step,
as they would otherwise be if they were to be computed inside the
body of the function. However, assigning the values is optional
as otherwise, at the expense of efficiency, the values will be
computed each time the function is invoked.
See
<a href=\"modelica://IBPSA.Utilities.Math.Functions.Examples.InverseXRegularized\">
IBPSA.Utilities.Math.Functions.Examples.InverseXRegularized</a>
for how to efficiently call this function.
</p>
</html>",           revisions="<html>
<ul>
<li>
August 10, 2015, by Michael Wetter:<br/>
Removed dublicate entry <code>smoothOrder = 1</code>
and reimplmented the function so it is twice continuously differentiable.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/302\">issue 302</a>.
</li>
<li>
February 5, 2015, by Filip Jorissen:<br/>
Added <code>smoothOrder = 1</code>.
</li>
<li>
May 10, 2013, by Michael Wetter:<br/>
Reformulated implementation to avoid unrequired computations.
</li>
<li>
April 18, 2011, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end inverseXRegularized;

          function regNonZeroPower
            "Power function, regularized near zero, but nonzero value for x=0"
            extends Modelica.Icons.Function;

           input Real x "Abscissa value";
           input Real n "Exponent";
           input Real delta = 0.01 "Abscissa value where transition occurs";
           output Real y "Function value";
          protected
            Real a1;
            Real a3;
            Real a5;
            Real delta2;
            Real x2;
            Real y_d "=y(delta)";
            Real yP_d "=dy(delta)/dx";
            Real yPP_d "=d^2y(delta)/dx^2";
          algorithm
            if abs(x) > delta then
             y := abs(x)^n;
            else
             delta2 :=delta*delta;
             x2 :=x*x;
             y_d :=delta^n;
             yP_d :=n*delta^(n - 1);
             yPP_d :=n*(n - 1)*delta^(n - 2);
             a1 := -(yP_d/delta - yPP_d)/delta2/8;
             a3 := (yPP_d - 12 * a1 * delta2)/2;
             a5 := (y_d - delta2 * (a3 + delta2 * a1));
             y := a5 + x2 * (a3 + x2 * a1);
             assert(a5>0, "Delta is too small for this exponent.");
            end if;
            annotation (
              Documentation(info="<html>

Function that approximates <i>y=|x|<sup>n</sup></i> where <i>n &gt; 0</i>
so that
<ul>
<li><i>y(0)</i> is not equal to zero.</li>
<li><i>dy/dx</i> is bounded and continuous everywhere.</li>
</ul>

<p>
This function replaces <i>y=|x|<sup>n</sup></i> in the interval
<i>-&delta;...+&delta;</i> by a 4-th order polynomial that has the same
function value and the first and second derivative at <i>x=&plusmn; &delta;</i>.
</p>
<p>
A typical use of this function is to replace the
function for the convective heat transfer
coefficient for forced or free convection that is of the form
<i>h=c |dT|<sup>n</sup></i> for some constant <i>c</i> and exponent
<i>0 &le; n &le; 1</i>.
By using this function, the original function
that has an infinite derivative near zero and that takes on zero
at the origin is replaced by a function with a bounded derivative and
a non-zero value at the origin. Physically,
the region <i>-&delta;...+&delta;</i> may be interpreted as the region
where heat conduction dominates convection in the boundary layer.
</p>
See the package <code>Examples</code> for the graph.
</html>",           revisions="<html>
<ul>
<li>
March 30, 2011, by Michael Wetter:<br/>
Added <code>zeroDerivative</code> keyword.
</li>
<li>
April 14, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),           Inline=true,
                     smoothOrder=2,
                     derivative(zeroDerivative=n, zeroDerivative=delta)=BaseClasses.der_regNonZeroPower);
          end regNonZeroPower;

          function regStep
            "Approximation of a general step, such that the approximation is continuous and differentiable"
            extends Modelica.Icons.Function;
            input Real x "Abscissa value";
            input Real y1 "Ordinate value for x > 0";
            input Real y2 "Ordinate value for x < 0";
            input Real x_small(min=0) = 1e-5
              "Approximation of step for -x_small <= x <= x_small; x_small >= 0 required";
            output Real y "Ordinate value to approximate y = if x > 0 then y1 else y2";
          algorithm
            y := smooth(1, if x >  x_small then y1 else
                           if x < -x_small then y2 else
                           if x_small > 0 then (x/x_small)*((x/x_small)^2 - 3)*(y2-y1)/4 + (y1+y2)/2 else (y1+y2)/2);

            annotation(Inline=true,
            Documentation(revisions="<html>
<ul>
<li><i>February 18, 2016</i>
    by Marcus Fuchs:<br/>
    Add function with <code>Inline = true</code> in annotations to package for better performance,
    as suggested in <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/300\">#300</a> .</li>
<li><i>April 29, 2008</i>
    by <a href=\"mailto:Martin.Otter@DLR.de\">Martin Otter</a>:<br/>
    Designed and implemented.</li>
<li><i>August 12, 2008</i>
    by <a href=\"mailto:Michael.Sielemann@dlr.de\">Michael Sielemann</a>:<br/>
    Minor modification to cover the limit case <code>x_small -> 0</code> without division by zero.</li>
</ul>
</html>",           info="<html>
<p>
This function is used to approximate the equation
</p>
<pre>
    y = <b>if</b> x &gt; 0 <b>then</b> y1 <b>else</b> y2;
</pre>

<p>
by a smooth characteristic, so that the expression is continuous and differentiable:
</p>

<pre>
   y = <b>smooth</b>(1, <b>if</b> x &gt;  x_small <b>then</b> y1 <b>else</b>
                 <b>if</b> x &lt; -x_small <b>then</b> y2 <b>else</b> f(y1, y2));
</pre>

<p>
In the region <code>-x_small &lt; x &lt; x_small</code> a 2nd order polynomial is used
for a smooth transition from <code>y1</code> to <code>y2</code>.
</p>
</html>"));
          end regStep;

          function smoothMax
            "Once continuously differentiable approximation to the maximum function"
            extends Modelica.Icons.Function;
            input Real x1 "First argument";
            input Real x2 "Second argument";
            input Real deltaX "Width of transition interval";
            output Real y "Result";
          algorithm
            y := IBPSA.Utilities.Math.Functions.regStep(
                        y1=x1,
                        y2=x2,
                        x=x1 - x2,
                        x_small=deltaX);
            annotation (
            Inline=true,
            smoothOrder=1,
          Documentation(info="<html>
<p>
Once continuously differentiable approximation to the <code>max(.,.)</code> function.
</p>
<p>
Note that the maximum need not be respected, such as illustrated in
<a href=\"modelica://IBPSA.Utilities.Math.Examples.SmoothMin\">
IBPSA.Utilities.Math.Examples.SmoothMin</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
March 15, 2016, by Michael Wetter:<br/>
Replaced <code>spliceFunction</code> with <code>regStep</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/300\">issue 300</a>.
</li>
<li>
March 12, 2015, by Filip Jorissen:<br/>
Added documentation reference demonstrating overshoot.
</li>
<li>
February 5, 2015, by Filip Jorissen:<br/>
Added <code>smoothOrder = 1</code>.
</li>
<li>
August 15, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end smoothMax;

          function smoothMin
            "Once continuously differentiable approximation to the minimum function"
            extends Modelica.Icons.Function;
            input Real x1 "First argument";
            input Real x2 "Second argument";
            input Real deltaX "Width of transition interval";
            output Real y "Result";
          algorithm
            y := IBPSA.Utilities.Math.Functions.regStep(
                        y1=x1,
                        y2=x2,
                        x=x2 - x1,
                        x_small=deltaX);
            annotation (
            Inline=true,
            smoothOrder=1,
          Documentation(info="<html>
<p>
Once continuously differentiable approximation to the <code>min(.,.)</code> function.
</p>
<p>
Note that the minimum need not be respected, such as illustrated in
<a href=\"modelica://IBPSA.Utilities.Math.Examples.SmoothMin\">
IBPSA.Utilities.Math.Examples.SmoothMin</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
March 15, 2016, by Michael Wetter:<br/>
Replaced <code>spliceFunction</code> with <code>regStep</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/300\">issue 300</a>.
</li>
<li>
March 12, 2015, by Filip Jorissen:<br/>
Added documentation reference demonstrating overshoot.
</li>
<li>
February 5, 2015, by Filip Jorissen:<br/>
Added <code>smoothOrder = 1</code>.
</li>
<li>
August 15, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end smoothMin;

          function spliceFunction
            extends Modelica.Icons.Function;
              input Real pos "Argument of x > 0";
              input Real neg "Argument of x < 0";
              input Real x "Independent value";
              input Real deltax "Half width of transition interval";
              output Real out "Smoothed value";
          protected
              Real scaledX1;
              Real y;
              constant Real asin1 = Modelica.Math.asin(1);
          algorithm
              scaledX1 := x/deltax;
              if scaledX1 <= -0.999999999 then
                out := neg;
              elseif scaledX1 >= 0.999999999 then
                out := pos;
              else
                y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX1*asin1)) + 1)/2;
                out := pos*y + (1 - y)*neg;
              end if;

              annotation (
          smoothOrder=1,
          derivative=BaseClasses.der_spliceFunction,
          Documentation(info="<html>
<p>
Function to provide a once continuously differentiable transition between
to arguments.
</p><p>
The function is adapted from
<a href=\"modelica://Modelica.Media.Air.MoistAir.Utilities.spliceFunction\">
Modelica.Media.Air.MoistAir.Utilities.spliceFunction</a> and provided here
for easier accessability to model developers.
</p>
</html>",           revisions="<html>
<ul>
<li>
May 10, 2013, by Michael Wetter:<br/>
Reformulated implementation to avoid unrequired computations.
</li>
<li>
May 11, 2010, by Michael Wetter:<br/>
Removed default value for transition interval as this is problem dependent.
</li>
<li>
May 20, 2008, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end spliceFunction;

          package BaseClasses "Package with base classes for IBPSA.Utilities.Math.Functions"
            extends Modelica.Icons.BasesPackage;

            function der_2_regNonZeroPower
              "Power function, regularized near zero, but nonzero value for x=0"
              extends Modelica.Icons.Function;
             input Real x "Abscissa value";
             input Real n "Exponent";
             input Real delta = 0.01 "Abscissa value where transition occurs";
             input Real der_x;
             input Real der_2_x;
             output Real der_2_y "Function value";
            protected
              Real a1;
              Real a3;
              Real delta2;
              Real x2;
              Real y_d "=y(delta)";
              Real yP_d "=dy(delta)/dx";
              Real yPP_d "=d^2y(delta)/dx^2";
            algorithm
              if abs(x) > delta then
               der_2_y := n*(abs(x)^(n-1)*sign(x)*der_2_x
                          + (n-1)*abs(x)^(n-2)*der_x^2);
              else
               delta2 :=delta*delta;
               x2 :=x*x;
               y_d :=delta^n;
               yP_d :=n*delta^(n - 1);
               yPP_d :=n*(n - 1)*delta^(n - 2);
               a1 := -(yP_d/delta - yPP_d)/delta2/8;
               a3 := (yPP_d - 12 * a1 * delta2)/2;

               der_2_y := (12*a1*x2+2*a3)*der_x^2
                          +x * ( 4 * a1 * x2 + 2 * a3)*der_2_x;
              end if;
            annotation (
            Documentation(
            info="<html>
<p>
Implementation of the second derivative of the function
<a href=\"modelica://IBPSA.Utilities.Math.Functions.regNonZeroPower\">
IBPSA.Utilities.Math.Functions.regNonZeroPower</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
August 17, 2015 by Michael Wetter:<br/>
Corrected wrong derivative implementation which omitted the <code>der_x</code> term.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/303\">issue 303</a>.
</li>
<li>
April 9, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_2_regNonZeroPower;

            function der_2_smoothTransition
              "Second order derivative of smoothTransition with respect to x"
              extends Modelica.Icons.Function;
              input Real x "Abscissa value";
              input Real delta(min=Modelica.Constants.eps)
                "Abscissa value below which approximation occurs";

              input Real deltaInv "Inverse value of delta";
              input Real a "Polynomial coefficient";
              input Real b "Polynomial coefficient";
              input Real c "Polynomial coefficient";
              input Real d "Polynomial coefficient";
              input Real e "Polynomial coefficient";
              input Real f "Polynomial coefficient";

              input Real x_der "Derivative of x";
              input Real x_der2 "Second order derivative of x";
              output Real y_der2 "Second order derivative of function value";
            protected
              Real aX "Absolute value of x";
              Real ex "Intermediate expression";
            algorithm
             aX:= abs(x);
             ex     := 2*c + aX*(6*d + aX*(12*e + aX*20*f));
             y_der2 := (b + aX*(2*c + aX*(3*d + aX*(4*e + aX*5*f))))*x_der2
                     + x_der*x_der*( if x > 0 then ex else -ex);

            annotation (
            Documentation(info="<html>
<p>
This function is the 2nd order derivative of
<a href=\"modelica://IBPSA.Utilities.Math.Functions.BaseClasses.smoothTransition\">
IBPSA.Utilities.Math.Functions.BaseClasses.smoothTransition</a>.
</p>
<h4>Implementation</h4>
<p>
For efficiency, the polynomial coefficients
<code>a, b, c, d, e, f</code> and
the inverse of the smoothing parameter <code>deltaInv</code>
are exposed as arguments to this function.
</p>
</html>",             revisions="<html>
<ul>
<li>
August 11, 2015, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_2_smoothTransition;

            function der_inverseXRegularized "Derivative of inverseXRegularised function"
              extends Modelica.Icons.Function;
             input Real x "Abscissa value";
             input Real delta(min=Modelica.Constants.eps)
                "Abscissa value below which approximation occurs";
             input Real deltaInv = 1/delta "Inverse value of delta";

             input Real a = -15*deltaInv "Polynomial coefficient";
             input Real b = 119*deltaInv^2 "Polynomial coefficient";
             input Real c = -361*deltaInv^3 "Polynomial coefficient";
             input Real d = 534*deltaInv^4 "Polynomial coefficient";
             input Real e = -380*deltaInv^5 "Polynomial coefficient";
             input Real f = 104*deltaInv^6 "Polynomial coefficient";

             input Real x_der "Abscissa value";
             output Real y_der "Function value";

            algorithm
              y_der := if (x > delta or x < -delta) then -x_der/x/x elseif (x < delta/2 and x > -delta/2) then x_der/(delta*delta) else IBPSA.Utilities.Math.Functions.BaseClasses.der_smoothTransition(
                            x=x,
                            x_der=x_der,
                            delta=delta,
                            deltaInv=deltaInv,
                            a=a,
                            b=b,
                            c=c,
                            d=d,
                            e=e,
                            f=f);
            annotation (
            Documentation(
            info="<html>
<p>
Implementation of the first derivative of the function
<a href=\"modelica://IBPSA.Utilities.Math.Functions.inverseXRegularized\">
IBPSA.Utilities.Math.Functions.inverseXRegularized</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
June 22, 2016, by Filip Jorissen:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_inverseXRegularized;

            function der_regNonZeroPower
              "Power function, regularized near zero, but nonzero value for x=0"
              extends Modelica.Icons.Function;
             input Real x "Abscissa value";
             input Real n "Exponent";
             input Real delta = 0.01 "Abscissa value where transition occurs";
             input Real der_x;
             output Real der_y "Function value";
            protected
              Real a1;
              Real a3;
              Real delta2;
              Real x2;
              Real y_d "=y(delta)";
              Real yP_d "=dy(delta)/dx";
              Real yPP_d "=d^2y(delta)/dx^2";
            algorithm
              if abs(x) > delta then
               der_y := sign(x)*n*abs(x)^(n-1)*der_x;
              else
               delta2 :=delta*delta;
               x2 :=x*x;
               y_d :=delta^n;
               yP_d :=n*delta^(n - 1);
               yPP_d :=n*(n - 1)*delta^(n - 2);
               a1 := -(yP_d/delta - yPP_d)/delta2/8;
               a3 := (yPP_d - 12 * a1 * delta2)/2;
               der_y := x * ( 4 * a1 * x * x + 2 * a3) * der_x;
              end if;
             annotation(derivative(order=2, zeroDerivative=n, zeroDerivative=delta)=der_2_regNonZeroPower,
            Documentation(
            info="<html>
<p>
Implementation of the first derivative of the function
<a href=\"modelica://IBPSA.Utilities.Math.Functions.regNonZeroPower\">
IBPSA.Utilities.Math.Functions.regNonZeroPower</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
August 17, 2015 by Michael Wetter:<br/>
Corrected wrong derivative implementation which omitted the <code>der_x</code> term.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/303\">issue 303</a>.
</li>
<li>
March 30, 2011, by Michael Wetter:<br/>
Added <code>zeroDerivative</code> keyword.
</li>
<li>
April 9, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_regNonZeroPower;

            function der_smoothTransition
              "First order derivative of smoothTransition with respect to x"
              extends Modelica.Icons.Function;
              input Real x "Abscissa value";
              input Real delta(min=Modelica.Constants.eps)
                "Abscissa value below which approximation occurs";

              input Real deltaInv "Inverse value of delta";
              input Real a "Polynomial coefficient";
              input Real b "Polynomial coefficient";
              input Real c "Polynomial coefficient";
              input Real d "Polynomial coefficient";
              input Real e "Polynomial coefficient";
              input Real f "Polynomial coefficient";

              input Real x_der "Derivative of x";
              output Real y_der "Derivative of function value";

            protected
              Real aX "Absolute value of x";
            algorithm
             aX:= abs(x);
             y_der := (b + aX*(2*c + aX*(3*d + aX*(4*e + aX*5*f))))*x_der;
             annotation(smoothOrder=1,
                      derivative(order=2,
                      zeroDerivative=delta,
                      zeroDerivative=deltaInv,
                      zeroDerivative=a,
                      zeroDerivative=b,
                      zeroDerivative=c,
                      zeroDerivative=d,
                      zeroDerivative=e,
                      zeroDerivative=f)=IBPSA.Utilities.Math.Functions.BaseClasses.der_2_smoothTransition,
            Documentation(info="<html>
<p>
This function is the 1st order derivative of
<a href=\"modelica://IBPSA.Utilities.Math.Functions.BaseClasses.smoothTransition\">
IBPSA.Utilities.Math.Functions.BaseClasses.smoothTransition</a>.
</p>
<h4>Implementation</h4>
<p>
For efficiency, the polynomial coefficients
<code>a, b, c, d, e, f</code> and
the inverse of the smoothing parameter <code>deltaInv</code>
are exposed as arguments to this function.
Also,
its derivative is provided in
<a href=\"modelica://IBPSA.Utilities.Math.Functions.BaseClasses.der_2_smoothTransition\">
IBPSA.Utilities.Math.Functions.BaseClasses.der_2__smoothTransition</a>.
</p>
</html>",             revisions="<html>
<ul>
<li>
August 11, 2015, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_smoothTransition;

            function der_spliceFunction "Derivative of splice function"
              extends Modelica.Icons.Function;
                input Real pos;
                input Real neg;
                input Real x;
                input Real deltax=1;
                input Real dpos;
                input Real dneg;
                input Real dx;
                input Real ddeltax=0;
                output Real out;
            protected
                Real scaledX;
                Real scaledX1;
                Real dscaledX1;
                Real y;
                constant Real asin1 = Modelica.Math.asin(1);
            algorithm
                scaledX1 := x/deltax;
                if scaledX1 <= -0.99999999999 then
                  out := dneg;
                elseif scaledX1 >= 0.9999999999 then
                  out := dpos;
                else
                  scaledX := scaledX1*asin1;
                  dscaledX1 := (dx - scaledX1*ddeltax)/deltax;
                  y := (Modelica.Math.tanh(Modelica.Math.tan(scaledX)) + 1)/2;
                  out := dpos*y + (1 - y)*dneg;
                  out := out + (pos - neg)*dscaledX1*asin1/2/(
                    Modelica.Math.cosh(Modelica.Math.tan(scaledX))*Modelica.Math.cos(
                    scaledX))^2;
                end if;

            annotation (
            Documentation(
            info="<html>
<p>
Implementation of the first derivative of the function
<a href=\"modelica://IBPSA.Utilities.Math.Functions.spliceFunction\">
IBPSA.Utilities.Math.Functions.spliceFunction</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
May 10, 2013, by Michael Wetter:<br/>
Reformulated implementation to avoid unrequired computations.
</li>
<li>
April 7, 2009, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end der_spliceFunction;

            function smoothTransition
              "Twice continuously differentiable transition between the regions"
              extends Modelica.Icons.Function;

              // The function that transitions between the regions is implemented
              // using its own function. This allows Dymola 2016 to inline the function
              // inverseXRegularized.

            input Real x "Abscissa value";
            input Real delta(min=Modelica.Constants.eps)
                "Abscissa value below which approximation occurs";
            input Real deltaInv = 1/delta "Inverse value of delta";

            input Real a = -15*deltaInv "Polynomial coefficient";
            input Real b = 119*deltaInv^2 "Polynomial coefficient";
            input Real c = -361*deltaInv^3 "Polynomial coefficient";
            input Real d = 534*deltaInv^4 "Polynomial coefficient";
            input Real e = -380*deltaInv^5 "Polynomial coefficient";
            input Real f = 104*deltaInv^6 "Polynomial coefficient";
            output Real y "Function value";
            protected
              Real aX "Absolute value of x";

            algorithm
             aX:= abs(x);
             y := (if x >= 0 then 1 else -1) * (a + aX*(b + aX*(c + aX*(d + aX*(e + aX*f)))));
            annotation(smoothOrder=2,
              derivative(order=1,
                      zeroDerivative=delta,
                      zeroDerivative=deltaInv,
                      zeroDerivative=a,
                      zeroDerivative=b,
                      zeroDerivative=c,
                      zeroDerivative=d,
                      zeroDerivative=e,
                      zeroDerivative=f)=IBPSA.Utilities.Math.Functions.BaseClasses.der_smoothTransition,
                Documentation(info="<html>
<p>
This function is used by
<a href=\"modelica://IBPSA.Utilities.Math.Functions.inverseXRegularized\">
IBPSA.Utilities.Math.Functions.inverseXRegularized</a>
to provide a twice continuously differentiable transition between
the different regions.
The code has been implemented in a function as this allows
to implement the function
<a href=\"modelica://IBPSA.Utilities.Math.Functions.inverseXRegularized\">
IBPSA.Utilities.Math.Functions.inverseXRegularized</a>
in such a way that Dymola inlines it.
However, this function will not be inlined as its body is too large.
</p>
<h4>Implementation</h4>
<p>
For efficiency, the polynomial coefficients
<code>a, b, c, d, e, f</code> and
the inverse of the smoothing parameter <code>deltaInv</code>
are exposed as arguments to this function.
Also,
derivatives are provided in
<a href=\"modelica://IBPSA.Utilities.Math.Functions.BaseClasses.der_smoothTransition\">
IBPSA.Utilities.Math.Functions.BaseClasses.der_smoothTransition</a>
and in
<a href=\"modelica://IBPSA.Utilities.Math.Functions.BaseClasses.der_2_smoothTransition\">
IBPSA.Utilities.Math.Functions.BaseClasses.der_2__smoothTransition</a>.
</p>
</html>",             revisions="<html>
<ul>
<li>
September 12, 2018, by David Blum:<br/>
Change if-statement to if-expression.  
For issue <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1019\">#1019</a>.
</li>
<li>
August 11, 2015, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
            end smoothTransition;
          annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains base classes that are used to construct the models in
<a href=\"modelica://IBPSA.Utilities.Math.Functions\">IBPSA.Utilities.Math.Functions</a>.
</p>
</html>"));
          end BaseClasses;
        annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains functions for commonly used
mathematical operations. The functions are used in
the blocks
<a href=\"modelica://IBPSA.Utilities.Math\">
IBPSA.Utilities.Math</a>.
</p>
</html>"));
        end Functions;
      annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains blocks and functions for commonly used
mathematical operations.
The classes in this package augment the classes
<a href=\"modelica://Modelica.Blocks\">
Modelica.Blocks</a>.
</p>
</html>"),
      Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                {100,100}}), graphics={Line(points={{-80,0},{-68.7,34.2},{-61.5,53.1},
                  {-55.1,66.4},{-49.4,74.6},{-43.8,79.1},{-38.2,79.8},{-32.6,76.6},{
                  -26.9,69.7},{-21.3,59.4},{-14.9,44.1},{-6.83,21.2},{10.1,-30.8},{17.3,
                  -50.2},{23.7,-64.2},{29.3,-73.1},{35,-78.4},{40.6,-80},{46.2,-77.6},
                  {51.9,-71.5},{57.5,-61.9},{63.9,-47.2},{72,-24.8},{80,0}}, color={
                  0,0,0}, smooth=Smooth.Bezier)}));
      end Math;

      package Psychrometrics "Library with psychrometric functions"
        extends Modelica.Icons.VariantsPackage;

        package Constants "Library of constants for psychometric functions"
          extends Modelica.Icons.Package;

          constant Modelica.SIunits.SpecificHeatCapacity cpAir=1006
            "Specific heat capacity of air";

          constant Modelica.SIunits.SpecificHeatCapacity cpSte=1860
            "Specific heat capacity of water vapor";

          constant Modelica.SIunits.SpecificHeatCapacity cpWatLiq = 4184
            "Specific heat capacity of liquid water";

          constant Modelica.SIunits.SpecificEnthalpy h_fg = 2501014.5
            "Enthalpy of evaporation of water at the reference temperature";

          constant Real k_mair = 0.6219647130774989 "Ratio of molar weights";

          annotation (
            Documentation(info="<html>
<p>
This package provides constants for functions used
in the calculation of thermodynamic properties of moist air.
</p>
</html>",         revisions="<html>
<ul>
<li>
May 24, 2016, by Filip Jorissen:<br/>
Added reference temperature.
</li>
<li>
July 24, 2014, by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"),  Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}), graphics={
              Polygon(
                origin={-9.2597,25.6673},
                fillColor={102,102,102},
                pattern=LinePattern.None,
                fillPattern=FillPattern.Solid,
                points={{48.017,11.336},{48.017,11.336},{10.766,11.336},{-25.684,10.95},{-34.944,-15.111},{-34.944,-15.111},{-32.298,-15.244},{-32.298,-15.244},{-22.112,0.168},{11.292,0.234},{48.267,-0.097},{48.267,-0.097}},
                smooth=Smooth.Bezier),
              Polygon(
                origin={-19.9923,-8.3993},
                fillColor={102,102,102},
                pattern=LinePattern.None,
                fillPattern=FillPattern.Solid,
                points={{3.239,37.343},{3.305,37.343},{-0.399,2.683},{-16.936,-20.071},{-7.808,-28.604},{6.811,-22.519},{9.986,37.145},{9.986,37.145}},
                smooth=Smooth.Bezier),
              Polygon(
                origin={23.753,-11.5422},
                fillColor={102,102,102},
                pattern=LinePattern.None,
                fillPattern=FillPattern.Solid,
                points={{-10.873,41.478},{-10.873,41.478},{-14.048,-4.162},{-9.352,-24.8},{7.912,-24.469},{16.247,0.27},{16.247,0.27},{13.336,0.071},{13.336,0.071},{7.515,-9.983},{-3.134,-7.271},{-2.671,41.214},{-2.671,41.214}},
                smooth=Smooth.Bezier)}));
        end Constants;

        package Functions "Package with psychrometric functions"
          extends Modelica.Icons.Package;

          function X_pTphi
            "Absolute humidity for given pressure, dry bulb temperature and relative humidity"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.Pressure p "Absolute pressure of the medium";
            input Modelica.SIunits.Temperature T "Dry bulb temperature";
            input Real phi(unit="1") "Relative humidity";
            output Modelica.SIunits.MassFraction X_w
              "Water vapor mass fraction per unit mass total air";

          algorithm
            X_w := phi/((p/saturationPressure(T) - phi)/IBPSA.Utilities.Psychrometrics.Constants.k_mair + phi);
            annotation (
              inverse(phi=phi_pTX(p,T,X_w)),
              smoothOrder=1,
              Documentation(info="<html>
<p>
Absolute humidity of air for given
pressure, temperature and relative humidity.
</p>
<p>
Note that the absolute humidity is in <i>kg/kg</i>
total air, and not dry air.
</p>
</html>", revisions="<html>
<ul>
<li>
April 4, 2019 by Filip Jorissen:<br/>
First implementation.
</li>
</ul>
</html>"));
          end X_pTphi;

          function phi_pTX
            "Relative humidity for given pressure, dry bulb temperature and moisture mass fraction"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.Pressure p "Absolute pressure of the medium";
            input Modelica.SIunits.Temperature T "Dry bulb temperature";
            input Modelica.SIunits.MassFraction X_w
              "Water vapor mass fraction per unit mass total air";
            output Real phi(unit="1") "Relative humidity";
          algorithm
            phi := p/saturationPressure(T)*X_w/(X_w + IBPSA.Utilities.Psychrometrics.Constants.k_mair*(1 - X_w));
            annotation (
              inverse(X_w=X_pTphi(p,T,phi)),
              smoothOrder=1,
              Documentation(info="<html>
<p>
Relative humidity of air for given
pressure, temperature and water vapor mass fraction.
</p>
<p>
Note that the water vapor mass fraction must be in <i>kg/kg</i>
total air, and not dry air.
</p>
</html>", revisions="<html>
<ul>
<li>
April 4, 2019 by Filip Jorissen:<br/>
Added inverse annotation
for <a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/1110\">#1110</a>.
</li>
<li>
November 17, 2014 by Michael Wetter:<br/>
Removed test that constrains the saturation pressure to be
lower than <code>p</code>.
I do not see any numerical problems without this test.
</li>
<li>
November 13, 2014 by Michael Wetter:<br/>
First implementation.
</li>
</ul>
</html>"));
          end phi_pTX;

          function saturationPressure
            "Saturation curve valid for 223.16 <= T <= 373.16 (and slightly outside with less accuracy)"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.Temperature TSat(displayUnit="degC",
                                                    nominal=300) "Saturation temperature";
            output Modelica.SIunits.AbsolutePressure pSat(
                                                    displayUnit="Pa",
                                                    nominal=1000) "Saturation pressure";

          algorithm
            pSat := IBPSA.Utilities.Math.Functions.regStep(
                        y1=IBPSA.Utilities.Psychrometrics.Functions.saturationPressureLiquid(TSat),
                        y2=IBPSA.Utilities.Psychrometrics.Functions.sublimationPressureIce(TSat),
                        x=TSat - 273.16,
                        x_small=1.0);
            annotation(Inline=true,
              smoothOrder=1,
              Documentation(info="<html>
<p>
Saturation pressure of water, computed from temperature,
according to Wagner <i>et al.</i> (1993).
The range of validity is between
<i>190</i> and <i>373.16</i> Kelvin.
</p>
<h4>References</h4>
<p>
Wagner W., A. Saul, A. Pruss.
 <i>International equations for the pressure along the melting and along the sublimation curve of ordinary water substance</i>,
equation 3.5. 1993.
<a href=\"http://www.nist.gov/data/PDFfiles/jpcrd477.pdf\">
http://www.nist.gov/data/PDFfiles/jpcrd477.pdf</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
March 15, 2016, by Michael Wetter:<br/>
Replaced <code>spliceFunction</code> with <code>regStep</code>.
This is for
<a href=\"https://github.com/ibpsa/modelica-ibpsa/issues/300\">issue 300</a>.
</li>
<li>
August 19, 2015 by Michael Wetter:<br/>
Changed <code>smoothOrder</code> from <i>5</i> to <i>1</i> as
<a href=\"modelica://IBPSA.Utilities.Math.Functions.spliceFunction\">
IBPSA.Utilities.Math.Functions.spliceFunction</a> is only once
continuously differentiable.
Inlined the function.
</li>
<li>
November 20, 2013 by Michael Wetter:<br/>
First implementation, moved from <code>IBPSA.Media</code>.
</li>
</ul>
</html>"));
          end saturationPressure;

          function saturationPressureLiquid
            "Return saturation pressure of water as a function of temperature T in the range of 273.16 to 373.16 K"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.Temperature TSat(displayUnit="degC",
                                                    nominal=300) "Saturation temperature";
            output Modelica.SIunits.AbsolutePressure pSat(
                                                displayUnit="Pa",
                                                nominal=1000) "Saturation pressure";
          algorithm
            pSat := 611.657*Modelica.Math.exp(17.2799 - 4102.99/(TSat - 35.719));

            annotation (
              smoothOrder=99,
              derivative=IBPSA.Utilities.Psychrometrics.Functions.BaseClasses.der_saturationPressureLiquid,
              Inline=true,
              Documentation(info="<html>
<p>
Saturation pressure of water above the triple point temperature computed from temperature
according to Wagner <i>et al.</i> (1993). The range of validity is between
<i>273.16</i> and <i>373.16</i> Kelvin.
</p>
<h4>References</h4>
<p>
Wagner W., A. Saul, A. Pruss.
 <i>International equations for the pressure along the melting and along the sublimation curve of ordinary water substance</i>,
equation 3.5. 1993.
<a href=\"http://www.nist.gov/data/PDFfiles/jpcrd477.pdf\">
http://www.nist.gov/data/PDFfiles/jpcrd477.pdf</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
November 20, 2013 by Michael Wetter:<br/>
First implementation, moved from <code>IBPSA.Media</code>.
</li>
</ul>
</html>"));
          end saturationPressureLiquid;

          function sublimationPressureIce
            "Return sublimation pressure of water as a function of temperature T between 190 and 273.16 K"
            extends Modelica.Icons.Function;
            input Modelica.SIunits.Temperature TSat(displayUnit="degC",
                                                    nominal=300) "Saturation temperature";
            output Modelica.SIunits.AbsolutePressure pSat(
                                                displayUnit="Pa",
                                                nominal=1000) "Saturation pressure";
          protected
            Modelica.SIunits.Temperature TTriple=273.16 "Triple point temperature";
            Modelica.SIunits.AbsolutePressure pTriple=611.657 "Triple point pressure";
            Real r1=TSat/TTriple "Common subexpression";
            Real a[2]={-13.9281690,34.7078238} "Coefficients a[:]";
            Real n[2]={-1.5,-1.25} "Coefficients n[:]";
          algorithm
            pSat := exp(a[1] - a[1]*r1^n[1] + a[2] - a[2]*r1^n[2])*pTriple;
            annotation (
              Inline=false,
              smoothOrder=5,
              derivative=IBPSA.Utilities.Psychrometrics.Functions.BaseClasses.der_sublimationPressureIce,
              Documentation(info="<html>
<p>
Sublimation pressure of water below the triple point temperature, computed from temperature,
according to Wagner <i>et al.</i> (1993).
The range of validity is between
<i>190</i> and <i>273.16</i> Kelvin.
</p>
<h4>References</h4>
<p>
Wagner W., A. Saul, A. Pruss.
 <i>International equations for the pressure along the melting and along the sublimation curve of ordinary water substance</i>,
equation 3.5. 1993.
<a href=\"http://www.nist.gov/data/PDFfiles/jpcrd477.pdf\">
http://www.nist.gov/data/PDFfiles/jpcrd477.pdf</a>.
</p>
</html>", revisions="<html>
<ul>
<li>
November 20, 2013 by Michael Wetter:<br/>
First implementation, moved from <code>IBPSA.Media</code>.
</li>
</ul>
</html>"));
          end sublimationPressureIce;

          package BaseClasses "Package with base classes for IBPSA.Utilities.Psychrometrics.Functions"
            extends Modelica.Icons.BasesPackage;

            function der_saturationPressureLiquid
              "Derivative of the function saturationPressureLiquid"
              extends Modelica.Icons.Function;
              input Modelica.SIunits.Temperature Tsat "Saturation temperature";
              input Real dTsat(unit="K/s") "Saturation temperature derivative";
              output Real psat_der(unit="Pa/s") "Differential of saturation pressure";

            algorithm
              psat_der:=611.657*Modelica.Math.exp(17.2799 - 4102.99
                        /(Tsat - 35.719))*4102.99*dTsat/(Tsat - 35.719)^2;

              annotation(Inline=false,
                smoothOrder=5,
                Documentation(info="<html>
<p>
Derivative of function
<a href=\"modelica://IBPSA.Utilities.Psychrometrics.Functions.saturationPressureLiquid\">
IBPSA.Utilities.Psychrometrics.Functions.saturationPressureLiquid</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
November 20, 2013 by Michael Wetter:<br/>
First implementation, moved from <code>IBPSA.Media</code>.
</li>
</ul>
</html>"));
            end der_saturationPressureLiquid;

            function der_sublimationPressureIce
              "Derivative of function sublimationPressureIce"
                extends Modelica.Icons.Function;
                input Modelica.SIunits.Temperature TSat(displayUnit="degC",
                                                        nominal=300)
                "Saturation temperature";
                input Real dTsat(unit="K/s") "Sublimation temperature derivative";
                output Real psat_der(unit="Pa/s") "Sublimation pressure derivative";
            protected
                Modelica.SIunits.Temperature TTriple=273.16 "Triple point temperature";
                Modelica.SIunits.AbsolutePressure pTriple=611.657 "Triple point pressure";
                Real r1=TSat/TTriple "Common subexpression 1";
                Real r1_der=dTsat/TTriple "Derivative of common subexpression 1";
                Real a[2]={-13.9281690,34.7078238} "Coefficients a[:]";
                Real n[2]={-1.5,-1.25} "Coefficients n[:]";
            algorithm
                psat_der := exp(a[1] - a[1]*r1^n[1] + a[2] - a[2]*r1^n[2])*pTriple*(-(a[1]
                  *(r1^(n[1] - 1)*n[1]*r1_der)) - (a[2]*(r1^(n[2] - 1)*n[2]*r1_der)));
                annotation (
                  Inline=false,
                  smoothOrder=5,
                  Documentation(info="<html>
<p>
Derivative of function
<a href=\"modelica://IBPSA.Utilities.Psychrometrics.Functions.sublimationPressureIce\">
IBPSA.Utilities.Psychrometrics.Functions.sublimationPressureIce</a>.
</p>
</html>",   revisions="<html>
<ul>
<li>
November 20, 2013 by Michael Wetter:<br/>
First implementation, moved from <code>IBPSA.Media</code>.
</li>
</ul>
</html>"));
            end der_sublimationPressureIce;
          annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains base classes that are used to construct the models in
<a href=\"modelica://IBPSA.Utilities.Psychrometrics.Functions\">IBPSA.Utilities.Psychrometrics.Functions</a>.
</p>
</html>"));
          end BaseClasses;
          annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains functions for psychrometric calculations.
</p>

The nomenclature used in this package is described at
<a href=\"modelica://IBPSA.UsersGuide.Conventions\">
IBPSA.UsersGuide.Conventions</a>.
</html>"));
        end Functions;
      annotation (preferredView="info", Documentation(info="<html>
<p>
This package contains blocks and functions for psychrometric calculations.
</p>
<p>
The nomenclature used in this package is described at
<a href=\"modelica://IBPSA.UsersGuide.Conventions\">
IBPSA.UsersGuide.Conventions</a>.
</p>
</html>"));
      end Psychrometrics;
    annotation (
    preferredView="info", Documentation(info="<html>
<p>
This package contains utility models such as for thermal comfort calculation, input/output, co-simulation, psychrometric calculations and various functions that are used throughout the library.
</p>
</html>"),
    Icon(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}), graphics={
        Polygon(
          origin={1.3835,-4.1418},
          rotation=45.0,
          fillColor={64,64,64},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          points={{-15.0,93.333},{-15.0,68.333},{0.0,58.333},{15.0,68.333},{15.0,93.333},{20.0,93.333},{25.0,83.333},{25.0,58.333},{10.0,43.333},{10.0,-41.667},{25.0,-56.667},{25.0,-76.667},{10.0,-91.667},{0.0,-91.667},{0.0,-81.667},{5.0,-81.667},{15.0,-71.667},{15.0,-61.667},{5.0,-51.667},{-5.0,-51.667},{-15.0,-61.667},{-15.0,-71.667},{-5.0,-81.667},{0.0,-81.667},{0.0,-91.667},{-10.0,-91.667},{-25.0,-76.667},{-25.0,-56.667},{-10.0,-41.667},{-10.0,43.333},{-25.0,58.333},{-25.0,83.333},{-20.0,93.333}}),
        Polygon(
          origin={10.1018,5.218},
          rotation=-45.0,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          points={{-15.0,87.273},{15.0,87.273},{20.0,82.273},{20.0,27.273},{10.0,17.273},{10.0,7.273},{20.0,2.273},{20.0,-2.727},{5.0,-2.727},{5.0,-77.727},{10.0,-87.727},{5.0,-112.727},{-5.0,-112.727},{-10.0,-87.727},{-5.0,-77.727},{-5.0,-2.727},{-20.0,-2.727},{-20.0,2.273},{-10.0,7.273},{-10.0,17.273},{-20.0,27.273},{-20.0,82.273}})}));
    end Utilities;
  annotation (
  versionDate="2018-09-28",
  dateModified = "2018-09-28",
  preferredView="info",
  Documentation(info="<html>
<p>
<img
align=\"right\"
alt=\"Logo of IBPSA\"
src=\"modelica://IBPSA/Resources/Images/IBPSA-logo-text.png\" border=\"1\"/>
The <code>IBPSA</code> library is a free library
that provides more than 300 classes (models, functions, etc.) for the development of
Modelica libraries for building and community energy and control systems.
The library is compatible with models from the Modelica Standard Library,
in particular with models from
<a href=\"modelica://Modelica.Fluid\">Modelica.Fluid</a>
and
<a href=\"modelica://Modelica.Media\">Modelica.Media</a>.
</p>
<p>
The development of the IBPSA library is organized through the
<a href=\"https://ibpsa.github.io/project1\">IBPSA Project 1</a>
of the International Building Performance Simulation Association (IBPSA).
From 2012 to 2017, the development was organized through the
<a href=\"http://www.iea-annex60.org\">Annex 60 project</a>
of the Energy in Buildings and Communities Programme of the International Energy Agency (IEA EBC).
</p>
<p>
The intent of the library is that it will be extended by
implementations of Modelica libraries that are targeted to end-users.
Major goals are
</p>
<ul>
<li>to codify best practice and to provide a solid foundation onto which
other libraries for building and community energy systems can be built, and
</li>
<li>
to avoid a fragmentation of libraries that serve similar purpose but
that cannot share models among each others, thereby duplicating efforts
for model development and validation.
</li>
</ul>
<p>
Hence, this library is typically not used directly by end-users,
but rather by developers of libraries that will be distributed to end-users.
Libraries that are using the <code>IBPSA</code> library as their core, or
that are working on using the <code>IBPSA</code> as their core, include, in
alphabetic order:
</p>
<ul>
<li>
The <code>AixLib</code> library from RWTH Aachen, Germany, available at
<a href=\"https://github.com/RWTH-EBC/AixLib\">https://github.com/RWTH-EBC/AixLib</a>
</li>
<li>
The <code>Buildings</code> library from Lawrence Berkeley National Laboratory, Berkeley, CA, available at
<a href=\"http://simulationresearch.lbl.gov/modelica\">http://simulationresearch.lbl.gov/modelica/</a>.
</li>
<li>
The <code>BuildingSystems</code> library from
Universit&auml;t der K&uuml;nste Berlin, Germany,
available at
<a href=\"http://www.modelica-buildingsystems.de/\">http://www.modelica-buildingsystems.de/</a>.
</li>
<li>
The <code>IDEAS</code> library from KU Leuven, Belgium, available at
<a href=\"https://github.com/open-ideas/IDEAS\">https://github.com/open-ideas/IDEAS</a>.
</li>
</ul>
<p>
The library also contains more than 300 example and validation models. For Dymola,
each of these example and validation models contains a script that simulates it and
plots certain variables of interest.
</p>
<p>
The web page for this library is
<a href=\"https://github.com/ibpsa/modelica\">https://github.com/ibpsa/modelica</a>.
Contributions to further advance the library are welcomed.
Contributions may not only be in the form of model development, but also
through model use, model testing and validation,
requirements definition or providing feedback regarding the model applicability
to solve specific problems.
</p>
</html>"),
      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
          graphics={Bitmap(extent={{-90,-90},{90,90}},
          fileName="modelica://IBPSA/Resources/Images/IBPSA-logo.png")}));
  end IBPSA;

  model Example
    OptimalDesign_FCU optimalDesign_FCU(
      redeclare package MediumAir = MediumA,
      redeclare package MediumHeating = MediumW,
      redeclare package MediumCooling = MediumW,
      TMax=273.15 + 30 + test.y,
      TMin=290.15,
      dT=1,
      mAir_flow_nominal=1,
      deltaTCoo_nominal=10,
      deltaTHea_nominal=20,
      QHea_flow_nominal=4000,
      QCoo_flow_nominal=4000,
      THea_a1_nominal=290.15,
      THea_a2_nominal=348.15,
      TCoo_a1_nominal=298.15,
      TCoo_a2_nominal=283.15,
      dpValve_nominal(displayUnit="Pa") = dpValve_nominal) annotation (Placement(transformation(extent={{-40,18},{-6,52}})));
      import MediumA = HausM.BuildingData.Parameters.Air;
    import MediumW = HausM.BuildingData.Parameters.Water;
    IDEAS.Fluid.Sources.FixedBoundary airOut(
      redeclare package Medium = MediumA,
      p(displayUnit="bar"),
      T=283.15,
      nPorts=1) annotation (Placement(transformation(extent={{96,60},{76,80}})));
    IDEAS.Fluid.Sensors.MassFlowRate massAir(redeclare package Medium = MediumA, allowFlowReversal=false)
                                                                                 annotation (Placement(transformation(extent={{40,60},{60,80}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort TAirOut(
      redeclare package Medium = MediumA,
      allowFlowReversal=false,
      m_flow_nominal=1,
      tau=0,
      T_start=278.15,
      transferHeat=false) annotation (Placement(transformation(extent={{2,60},{22,80}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort TAirIn(
      redeclare package Medium = MediumA,
      allowFlowReversal=false,
      m_flow_nominal=1,
      tau=0,
      T_start=278.15) annotation (Placement(transformation(extent={{-80,60},{-60,80}})));
    IDEAS.Fluid.Sources.FixedBoundary heatIN(
      redeclare package Medium = MediumW,
      p(displayUnit="bar") = 200000,
      T=348.15,
      nPorts=1) annotation (Placement(transformation(extent={{98,-2},{78,18}})));
    IDEAS.Fluid.Sensors.MassFlowRate massWaterHeat(redeclare package Medium = MediumW, allowFlowReversal=false) annotation (Placement(transformation(extent={{60,-2},{40,18}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort THeatIn(
      redeclare package Medium = MediumW,
      allowFlowReversal=false,
      m_flow_nominal=1,
      tau=0) annotation (Placement(transformation(extent={{28,-2},{8,18}})));
    IDEAS.Fluid.Sources.FixedBoundary heatOUT(
      redeclare package Medium = MediumW,
      p(displayUnit="bar") = 100000,
      T=293.15,
      nPorts=1) annotation (Placement(transformation(extent={{98,-40},{78,-20}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort THeatOut(redeclare package Medium = MediumW,
      allowFlowReversal=false,                                                          m_flow_nominal=1,
      tau=0)                                                                                              annotation (Placement(transformation(extent={{8,-40},{28,-20}})));
    IDEAS.Fluid.Sources.FixedBoundary cooIn(
      redeclare package Medium = MediumW,
      p(displayUnit="bar") = 200000,
      T=283.15,
      nPorts=1) annotation (Placement(transformation(extent={{-122,-40},{-102,-20}})));
    IDEAS.Fluid.Sources.FixedBoundary cooOut(
      redeclare package Medium = MediumW,
      p(displayUnit="bar") = 100000,
      T=278.15,
      nPorts=1) annotation (Placement(transformation(extent={{-122,-4},{-102,16}})));
    parameter Modelica.SIunits.Temperature TMax=303.15 "Maximum temperature";
    parameter Modelica.SIunits.Temperature TMin=288.15 "Minimum temperature";
    parameter Modelica.SIunits.TemperatureDifference dT=15 "Actuation range";
    parameter Modelica.SIunits.MassFlowRate mAir_flow_nominal=1 "Nominal mass flow of the cooling coil";
    parameter Modelica.SIunits.PressureDifference dpValve_nominal(displayUnit="Pa")=300   "Nominal pressure drop of fully open valve, used if CvData=IDEAS.Fluid.Types.CvTypes.OpPoint";
    parameter Modelica.SIunits.HeatFlowRate QHea_flow_nominal=4000
                                                                  "Nominal heat transfer of the heating coil"  annotation(evaluate=false);
    parameter Modelica.SIunits.Temperature THea_a1_nominal=278.15                    "Nominal temperature of inlet air in the heating coil";
    parameter Modelica.SIunits.Temperature THea_a2_nominal=348.15 "Nominal temperature of water inlet in the heating coil";
    Modelica.Blocks.Sources.RealExpression energyAirSide(y=massAir.m_flow*(TAirOut.T - TAirIn.T)*1010) annotation (Placement(transformation(extent={{-70,-74},{28,-58}})));
    Modelica.Blocks.Sources.RealExpression energyWaterSideHeating(y=massWaterHeat.m_flow*(THeatIn.T - THeatOut.T)*4180) annotation (Placement(transformation(extent={{-70,-86},{28,-70}})));
    IDEAS.Fluid.Sources.Boundary_pT airIn(
      redeclare package Medium = MediumA,
      use_T_in=true,
      nPorts=1) annotation (Placement(transformation(extent={{-122,60},{-102,80}})));
    Modelica.Blocks.Sources.Sine sine(
      amplitude=10,
      freqHz=1/(12*3600),
      offset=273.15 + 22,
      startTime=3600)
                   annotation (Placement(transformation(extent={{-160,64},{-140,84}})));
    IDEAS.Fluid.Sensors.MassFlowRate massWaterCool(redeclare package Medium = MediumW, allowFlowReversal=false) annotation (Placement(transformation(extent={{-48,-40},{-28,-20}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort TwCooOut(
      redeclare package Medium = MediumW,
      allowFlowReversal=false,
      m_flow_nominal=1,
      tau=0) annotation (Placement(transformation(extent={{-62,-4},{-82,16}})));
    IDEAS.Fluid.Sensors.TemperatureTwoPort TwCooIn(
      redeclare package Medium = MediumW,
      allowFlowReversal=false,
      m_flow_nominal=1,
      tau=0) annotation (Placement(transformation(extent={{-82,-40},{-62,-20}})));
    Modelica.Blocks.Sources.RealExpression test(y=sin(time/1800)) annotation (Placement(transformation(extent={{-160,24},{-128,48}})));
  equation
    connect(massAir.port_b, airOut.ports[1]) annotation (Line(points={{60,70},{68,70},{68,70},{76,70}},
                                                                                        color={0,127,255}));
    connect(TAirIn.port_b, optimalDesign_FCU.port_air_a) annotation (Line(points={{-60,70},{-33.2,70},{-33.2,52}}, color={0,127,255}));
    connect(massWaterHeat.port_a, heatIN.ports[1]) annotation (Line(points={{60,8},{78,8}}, color={0,127,255}));
    connect(massWaterCool.port_b, optimalDesign_FCU.port_coo_a) annotation (Line(points={{-28,-30},{-21.3,-30},{-21.3,18}}, color={0,127,255}));
    connect(airIn.ports[1], TAirIn.port_a) annotation (Line(points={{-102,70},{-92,70},{-92,70},{-80,70}},
                                                                                         color={0,127,255}));
    connect(sine.y, airIn.T_in) annotation (Line(points={{-139,74},{-124,74}}, color={0,0,127}));
    connect(TwCooIn.port_b, massWaterCool.port_a) annotation (Line(points={{-62,-30},{-48,-30}}, color={0,127,255}));
    connect(cooIn.ports[1], TwCooIn.port_a) annotation (Line(points={{-102,-30},{-82,-30}}, color={0,127,255}));
    connect(optimalDesign_FCU.port_coo_b, TwCooOut.port_a) annotation (Line(points={{-28.1,18},{-30,18},{-30,6},{-62,6}}, color={0,127,255}));
    connect(TwCooOut.port_b, cooOut.ports[1]) annotation (Line(points={{-82,6},{-102,6}}, color={0,127,255}));
    connect(THeatIn.port_a, massWaterHeat.port_b) annotation (Line(points={{28,8},{40,8}}, color={0,127,255}));
    connect(THeatIn.port_b, optimalDesign_FCU.port_hea_a) annotation (Line(points={{8,8},{-9.4,8},{-9.4,18}}, color={0,127,255}));
    connect(optimalDesign_FCU.port_hea_b, THeatOut.port_a) annotation (Line(points={{-16.2,18},{-16.2,-30},{8,-30}}, color={0,127,255}));
    connect(THeatOut.port_b, heatOUT.ports[1]) annotation (Line(points={{28,-30},{78,-30}}, color={0,127,255}));
    connect(TAirOut.port_b, massAir.port_a) annotation (Line(points={{22,70},{40,70}}, color={0,127,255}));
    connect(TAirOut.port_a, optimalDesign_FCU.port_air_b) annotation (Line(points={{2,70},{-11.1,70},{-11.1,52}}, color={0,127,255}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics={
          Ellipse(
            extent={{-100,100},{100,-100}},
            lineColor={28,108,200},
            fillColor={255,255,0},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{0,100},{-10,100},{-22,98},{-40,92},{-56,84},{-66,76},{-84,56},{-92,40},{-96,30},{-98,24},{-100,12},{-100,0},{0,0},{0,100}},
            lineColor={28,108,200},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid),
          Polygon(
            points={{50,50},{40,50},{28,48},{10,42},{-6,34},{-16,26},{-34,6},{-42,-10},{-46,-20},{-48,-26},{-50,-38},{-50,-50},{50,-50},{50,50}},
            lineColor={28,108,200},
            fillColor={0,0,0},
            fillPattern=FillPattern.Solid,
            origin={50,-50},
            rotation=180)}),                                       Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-180,-100},{140,100}}), graphics={
          Text(
            extent={{-150,-20},{-126,-44}},
            lineColor={28,108,200},
            textString="%cooIn.T
%cooIn.p"),
          Text(
            extent={{-152,20},{-128,-4}},
            lineColor={28,108,200},
            textString="%cooOut.T
%cooOut.p"),
          Text(
            extent={{104,20},{128,-4}},
            lineColor={28,108,200},
            textString="%heatIN.T
%heatIN.p"),
          Text(
            extent={{104,-20},{128,-44}},
            lineColor={28,108,200},
            textString="%heatOUT.T
%heatOUT.p"),
          Text(
            extent={{100,80},{124,56}},
            lineColor={28,108,200},
            textString="%airOut.T
%airOut.p"),
          Text(
            extent={{-122,64},{-98,40}},
            lineColor={28,108,200},
            textString="%airIn.T
%airIn.p")}),
      experiment(StopTime=86400, Tolerance=1e-06));
  end Example;
end FCU;
