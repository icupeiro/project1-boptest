within INFRAX.SubSystems.Controllers;
package RBC_detailed
  "RBC with the detailed changes concerning implementation in TACO"

  package Valves

    model TwoWayValvesTABS
      TwoWayValveCCA3 twoWayValveCCA3_1
        annotation (Placement(transformation(extent={{-10,50},{10,70}})));
      TwoWayValveCCA2 twoWayValveCCA2_1
        annotation (Placement(transformation(extent={{-10,10},{10,30}})));
      TwoWayValveCCA1 twoWayValveCCA1_1
        annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
      TwoWayValveCCA0 twoWayValveCCA0_1
        annotation (Placement(transformation(extent={{-10,-70},{10,-50}})));
      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
    equation
      connect(dataBus, twoWayValveCCA3_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,60},{-10,60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA2_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,20},{-10,20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA1_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-20},{-10,-20}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus, twoWayValveCCA0_1.dataBus) annotation (Line(
          points={{-100,0},{-56,0},{-56,-60},{-10,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(twoWayValveCCA3_1.signalBus, signalBus) annotation (Line(
          points={{10.2,60},{52,60},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA2_1.signalBus, signalBus) annotation (Line(
          points={{10.2,20},{52,20},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA1_1.signalBus, signalBus) annotation (Line(
          points={{10.2,-20},{52,-20},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(twoWayValveCCA0_1.signalBus, signalBus) annotation (Line(
          points={{10.2,-60},{52,-60},{52,0},{100,0}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValvesTABS;

    model TwoWayValveCCA3
      "controller of two-way valve in the third floor"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,23.5;
            26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2) annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-32,-74},{-12,-54}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-74,36},{-54,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-32,-100},{-12,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{0,-86},{20,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.3)
        annotation (Placement(transformation(extent={{10,-32},{30,-12}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-26,20},{-26,8}},       color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-26,-16},{-26,
              -4}},     color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{-3,2},{2,2}},  color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{30,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-58},{-34,-58}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.TretCCA3, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,-70},{-34,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(points={{-79.4,
              60},{-78,60},{-78,52},{-76,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-76,40}},
                         color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-53,46},
              {-52,46},{-52,20}},         color={0,0,127}));
      connect(dataBus.TretCCA3, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-86},{-99.9,-84},{-34,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-34,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-11,-64},{-8,-64},{
              -8,-68},{-2,-68}}, color={0,0,127}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-11,-90},{-8,-90},{
              -8,-84},{-2,-84}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{21,-76},{42,-76},
              {42,-50},{42,-10}}, color={0,0,127}));

      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-100},{-10,-100},{-10,-76},{-2,
              -76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{52,-60},
              {46,-60},{46,-30},{58,-30}}, color={255,0,255}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{31,-22},{34,
              -22},{34,-38},{58,-38}}, color={0,0,127}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{54,2},
              {54,-22},{58,-22}}, color={0,0,127}));
      connect(add1.u1, dataBus.Tavg_3rdFlr) annotation (Line(points={{-52,-10},{-72,
              -10},{-99.9,-10},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(restSelect.y, signalBus.CCA3_val) annotation (Line(points={{81,
              -30},{90,-30},{90,0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, add1.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,-22},{-52,-22}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA3;

    model TwoWayValveCCA2
      "controller of the two way valve in the second floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-32,-76},{-12,-56}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-32,-100},{-12,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{8,-86},{28,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-26,20},{-26,18},{-26,8}},   color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-26,-16},{-26,
              -4}},         color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{-3,2},{2,2}},  color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{30,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-60},{-34,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,44},{-52,20}},     color={0,0,127}));
      connect(dataBus.TretCCA2, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-72},{-34,-72}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-34,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-11,-90},{-6,-90},{
              -6,-84},{6,-84}}, color={0,0,127}));
      connect(dataBus.TretCCA2, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-88},{-99.9,-84},{-34,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1)
        annotation (Line(points={{-11,-66},{6,-66},{6,-68}}, color={0,0,127}));

      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{29,-76},{42,-76},
              {42,-10}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{54,-60},
              {48,-60},{48,-30},{58,-30}}, color={255,0,255}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{54,2},
              {54,-22},{58,-22}}, color={0,0,127}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{21,-30},{38,
              -30},{38,-38},{58,-38}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100.1,0.1},{100.1,-100},{0,-100},{0,-76},{6,-76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add1.u1, dataBus.Tavg_2ndFlr) annotation (Line(points={{-52,-10},
              {-76,-10},{-99.9,-10},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(restSelect.y, signalBus.CCA2_val) annotation (Line(points={{81,
              -30},{90,-30},{90,0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, add1.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,-22},{-52,-22},{-52,-22}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA2;

    model TwoWayValveCCA1
      "controller of the two way valve in the first floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-50,10},{-30,30}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-24,-8},{-4,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{4,-8},{24,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{32,-8},{52,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-42,-72},{-22,-52}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-40,-100},{-20,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{4,-86},{24,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{0,-40},{20,-20}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-29,20},
              {-24,20},{-24,18},{-24,8},{-26,8}},
                                            color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-24,-16},{-24,
              -4},{-26,-4}},color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-3,2},{0,2},{2,2}},   color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{25,2},{25,2},{30,2}},
                                                 color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-56},{-44,-56}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,20}},              color={0,0,127}));
      connect(dataBus.TretCCA1, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-68},{-44,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-42,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-19,-90},{-8,-90},{
              -8,-84},{2,-84}}, color={0,0,127}));
      connect(dataBus.TretCCA1, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-82},{-42,-82},{-42,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-21,-62},{-10,-62},{
              -10,-68},{2,-68}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{25,-76},{34,-76},
              {34,-10},{42,-10}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{40,-60},
              {40,-30},{58,-30}}, color={255,0,255}));
      connect(valvePID.y, restSelect.u1) annotation (Line(points={{53,2},{56,2},
              {56,-22},{58,-22}}, color={0,0,127}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{21,-30},{44,
              -30},{44,-38},{58,-38}}, color={0,0,127}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-98},{100.1,-100},{-16,-100},{
              -16,-76},{2,-76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add1.u1, dataBus.Tavg_1stFlr) annotation (Line(points={{-52,-10},
              {-99.9,-10},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(restSelect.y, signalBus.CCA1_val) annotation (Line(points={{81,
              -30},{100.1,-30},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, add1.u2) annotation (Line(points={{-79,34},{-79,-22},{
              -52,-22}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA1;

    model TwoWayValveCCA0
      "controller of the two way valve in the ground floor of TABS"
      import INFRAX;

      DataBus dataBus annotation (Placement(transformation(extent={{-120,-20},{
                -80,20}}), iconTransformation(extent={{-110,-10},{-90,10}})));
      SignalBus signalBus annotation (Placement(transformation(extent={{80,-20},{
                120,20}}), iconTransformation(extent={{92,-10},{112,10}})));
      inner IDEAS.BoundaryConditions.SimInfoManager sim(incAndAziInBus={{IDEAS.Types.Tilt.Ceiling,
            0},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.S},{IDEAS.Types.Tilt.Wall,
            IDEAS.Types.Azimuth.W},{IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.N},{
            IDEAS.Types.Tilt.Wall,IDEAS.Types.Azimuth.E}})
        annotation (Placement(transformation(extent={{-100,80},{-80,100}})));
      Components.RunningMeanTemperature8hours runningMeanTemperature8hours
        annotation (Placement(transformation(extent={{-100,50},{-80,70}})));
      Modelica.Blocks.Tables.CombiTable1D buildingBaseSetpoint(table=[20,23; 24,
            23.5; 26,23.8; 28,24.4; 35,26]) "building base setpoint table"
        annotation (Placement(transformation(extent={{-52,10},{-32,30}})));
      Modelica.Blocks.Math.Add add(k2=-1)
        annotation (Placement(transformation(extent={{-22,-8},{-2,12}})));
      Modelica.Blocks.Math.Add add1(k2=-1)
        annotation (Placement(transformation(extent={{-50,-26},{-30,-6}})));
      Modelica.Blocks.Tables.CombiTable1D floorSetPoint(table=[1,3; 2,2; 3,1])
        "building base setpoint table"
        annotation (Placement(transformation(extent={{6,-8},{26,12}})));
      IDEAS.Controls.Continuous.LimPID valvePID(
        controllerType=Modelica.Blocks.Types.SimpleController.PI,
        k=1,
        Ti(displayUnit="min") = 1800,
        yMin=0.2)
        annotation (Placement(transformation(extent={{34,-8},{54,12}})));
      Modelica.Blocks.Math.Add add2(k2=-1)
        annotation (Placement(transformation(extent={{-36,-74},{-16,-54}})));
      Modelica.Blocks.Math.Add add3(k2=-1)
        annotation (Placement(transformation(extent={{-72,36},{-52,56}})));
      Modelica.Blocks.Sources.Constant const1(k=273.15)
        annotation (Placement(transformation(extent={{-100,24},{-80,44}})));
      INFRAX.Data.Parameters.Structure structure
        annotation (Placement(transformation(extent={{40,80},{60,100}})));
      Modelica.Blocks.Math.Add add4(k2=-1)
        annotation (Placement(transformation(extent={{-36,-100},{-16,-80}})));
      Modelica.Blocks.Logical.Switch heaCoo
        annotation (Placement(transformation(extent={{0,-86},{20,-66}})));
      Modelica.Blocks.Logical.Switch restSelect
        annotation (Placement(transformation(extent={{60,-40},{80,-20}})));
      Modelica.Blocks.Sources.Constant const2(k=0.2)
        annotation (Placement(transformation(extent={{0,-48},{20,-28}})));
      Modelica.Blocks.Logical.Or or1
        annotation (Placement(transformation(extent={{80,-70},{60,-50}})));
    equation
      connect(buildingBaseSetpoint.y[1], add.u1) annotation (Line(points={{-31,20},
              {-28,20},{-28,18},{-28,8},{-24,8}},
                                            color={0,0,127}));
      connect(add1.y, add.u2) annotation (Line(points={{-29,-16},{-28,-16},{-28,
              -4},{-24,-4}},color={0,0,127}));
      connect(add.y, floorSetPoint.u[1])
        annotation (Line(points={{-1,2},{4,2}},         color={0,0,127}));
      connect(floorSetPoint.y[1], valvePID.u_s)
        annotation (Line(points={{27,2},{32,2}}, color={0,0,127}));
      connect(dataBus.T24, add2.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-66},{-99.9,-58},{-38,-58}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(runningMeanTemperature8hours.TRm, add3.u1) annotation (Line(
            points={{-79.4,60},{-78,60},{-78,52},{-74,52}}, color={0,0,127}));
      connect(const1.y, add3.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,40},{-74,40}}, color={0,0,127}));
      connect(add3.y, buildingBaseSetpoint.u[1]) annotation (Line(points={{-51,46},
              {-52,46},{-52,20},{-54,20}},     color={0,0,127}));
      connect(dataBus.TretCCA0, add2.u2) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-70},{-38,-70}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));

      connect(dataBus.TretCCA3, add4.u1) annotation (Line(
          points={{-99.9,0.1},{-99.9,0.1},{-99.9,-86},{-99.9,-84},{-38,-84}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(dataBus.T24, add4.u2) annotation (Line(
          points={{-99.9,0.1},{-100,0.1},{-100,-96},{-38,-96}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(add4.y, heaCoo.u3) annotation (Line(points={{-15,-90},{-8,-90},{
              -8,-84},{-2,-84}}, color={0,0,127}));
      connect(add2.y, heaCoo.u1) annotation (Line(points={{-15,-64},{-10,-64},{
              -10,-68},{-2,-68}}, color={0,0,127}));
      connect(heaCoo.y, valvePID.u_m) annotation (Line(points={{21,-76},{44,-76},
              {44,-10}}, color={0,0,127}));

      connect(signalBus.TABSheatingDemand, or1.u1) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-58},{82,-58},{82,-60}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(signalBus.TABScoolingDemand, or1.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-68},{82,-68}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(or1.y, restSelect.u2) annotation (Line(points={{59,-60},{52,-60},
              {48,-60},{48,-30},{58,-30}}, color={255,0,255}));
      connect(signalBus.TABSheatingDemand, heaCoo.u2) annotation (Line(
          points={{100.1,0.1},{100.1,0.1},{100.1,-100},{-12,-100},{-12,-76},{-2,
              -76}},
          color={255,204,51},
          thickness=0.5), Text(
          string="%first",
          index=-1,
          extent={{-6,3},{-6,3}}));
      connect(const2.y, restSelect.u3) annotation (Line(points={{21,-38},{40,
              -38},{58,-38}},          color={0,0,127}));
      connect(valvePID.y, restSelect.u1)
        annotation (Line(points={{55,2},{58,2},{58,-22}}, color={0,0,127}));
      connect(add1.u1, dataBus.Tavg_GndFlr) annotation (Line(points={{-52,-10},
              {-99.9,-10},{-99.9,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(restSelect.y, signalBus.CCA0_val) annotation (Line(points={{81,
              -30},{90,-30},{90,0.1},{100.1,0.1}}, color={0,0,127}), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(const1.y, add1.u2) annotation (Line(points={{-79,34},{-78,34},{
              -78,-22},{-52,-22},{-52,-22}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end TwoWayValveCCA0;
  end Valves;
end RBC_detailed;
