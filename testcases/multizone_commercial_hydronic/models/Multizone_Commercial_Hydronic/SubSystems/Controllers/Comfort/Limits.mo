within Multizone_Commercial_Hydronic.SubSystems.Controllers.Comfort;
model Limits
  parameter Integer nZones=13;
  parameter Integer typeLimit=1 "1 = Temp limits EN16798, 2 = Office - Frequency analysis, 3 = Libeznice, 4 = Ter Poterie";
  Modelica.Blocks.Interfaces.RealOutput THardUp(each unit="K", each displayUnit="degC") "Upper hard limit" annotation (Placement(transformation(extent={{140,70},{170,100}})));
  Modelica.Blocks.Interfaces.RealOutput TSoftUp(each unit="K", each displayUnit="degC")
    "Upper soft limit"                                                                                     annotation (Placement(transformation(extent={{140,4},{170,34}}), iconTransformation(extent={{140,4},{170,34}})));
  Modelica.Blocks.Interfaces.RealOutput TSoftDown(each unit="K", each displayUnit="degC") "Lower soft limit" annotation (Placement(transformation(extent={{140,-56},{170,-26}}), iconTransformation(extent={{140,-56},{170,-26}})));
  Modelica.Blocks.Interfaces.RealOutput THardDown(each unit="K", each displayUnit="degC") "Lower hard limit" annotation (Placement(transformation(extent={{140,
            -116},{170,-86}}),                                                                                                                                                    iconTransformation(extent={{140,
            -116},{170,-86}})));
  CtrlLimits ctrlLimits(minOT=minOT, maxOT=maxOT)               annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
  outer IDEAS.BoundaryConditions.SimInfoManager
                                              sim annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
  Modelica.Blocks.Interfaces.RealInput TSensor[nZones](each unit="K",each displayUnit = "degC") "Operative temperature from zones"    annotation (Placement(transformation(extent={{-140,-60},{-100,-20}}), iconTransformation(extent={{-140,-60},{-100,-20}})));
  Real intOverh[nZones] "DeltadegC*hour out of the hard limit (forbidden zone, overheat)";
  Real intOverhSoft[nZones] "DeltadegC*hour between the soft limit and the hard limit (only accepted overheat)";
  Real intUnderSoft[nZones] "DeltadegC*hour out of the soft limit and the hard limit (only accepted underheat)";
  Real intUnder[nZones] "DeltadegC*hour out of the hard limit (forbidden zone, underheat)";
  Modelica.Blocks.Interfaces.RealOutput totalOverHeat "DeltadegC*hour out of the hard limit (forbidden zone, overheat)" annotation (Placement(transformation(extent={{-100,40},{-120,60}})));
  Modelica.Blocks.Interfaces.RealOutput totalOverhSoft "DeltadegC*hour between the soft limit and the hard limit (only accepted overheat)" annotation (Placement(transformation(extent={{-100,0},{-120,20}})));
  Modelica.Blocks.Interfaces.RealOutput totalUndeHeatSoft "DeltadegC*hour out of the soft limit and the hard limit (only accepted underheat)" annotation (Placement(transformation(extent={{-100,-90},{-120,-70}}), iconTransformation(extent={{-100,-90},{-120,-70}})));
  Modelica.Blocks.Interfaces.RealOutput totalUnderHeat "DeltadegC*hour out of the hard limit (forbidden zone, underheat)" annotation (Placement(transformation(extent={{-100,-120},{-120,-100}}), iconTransformation(extent={{-100,-120},{-120,-100}})));
  parameter Real minOT=10 + 273.15 "Minimum outside temperature";
  parameter Real maxOT=15 + 273.15 "Maximum outside temperature";
  Modelica.Blocks.Interfaces.RealOutput Tavg(each unit="K", each displayUnit=
        "degC") "Average setpoint" annotation (Placement(transformation(extent=
            {{140,-26},{170,4}}), iconTransformation(extent={{140,-20},{158,-2}})));
  Modelica.Blocks.Sources.RealExpression realExpression(y=(TSoftUp + TSoftDown)
        /2) annotation (Placement(transformation(extent={{78,-22},{102,0}})));
  Multizone_Commercial_Hydronic.SubSystems.Controllers.Components.Clock
                             clock
    annotation (Placement(transformation(extent={{0,60},{20,80}})));
equation
  for i in 1:nZones loop
    if TSensor[i]>THardUp then
      der(intOverh[i])=(TSensor[i]-THardUp)/3600;
      der(intOverhSoft[i])=0;
      der(intUnderSoft[i])=0;
      der(intUnder[i])=0;
    elseif TSensor[i]>TSoftUp then
      der(intOverh[i])=0;
      der(intOverhSoft[i])=(TSensor[i]-TSoftUp)/3600;
      der(intUnderSoft[i])=0;
      der(intUnder[i])=0;
    elseif TSensor[i]<THardDown then
      der(intOverh[i])=0;
      der(intOverhSoft[i])=0;
      der(intUnderSoft[i])=0;
      der(intUnder[i])=(THardDown-TSensor[i])/3600;
    elseif TSensor[i]<TSoftDown then
      der(intOverh[i])=0;
      der(intOverhSoft[i])=0;
      der(intUnderSoft[i])=(TSoftDown-TSensor[i])/3600;
      der(intUnder[i])=0;
    else
      der(intOverh[i])=0;
      der(intOverhSoft[i])=0;
      der(intUnderSoft[i])=0;
      der(intUnder[i])=0;
    end if;
  end for;

  totalOverHeat = sum(intOverh[:]);
  totalOverhSoft = sum(intOverhSoft[:]);
  totalUndeHeatSoft = sum(intUnderSoft[:]);
  totalUnderHeat=sum(intUnder[:]);

  // Set the values for the different kinds of control
  THardUp = if (clock.hour >= 7 and clock.hour < 19) and (clock.weekDay) < 6 then ctrlLimits.limValue[typeLimit, 1] else ctrlLimits.limValue[typeLimit, 1] + 5;
  TSoftUp = if (clock.hour >= 7 and clock.hour < 19) and (clock.weekDay) < 6 then ctrlLimits.limValue[typeLimit, 2] else ctrlLimits.limValue[typeLimit, 2] + 5;
  TSoftDown = if (clock.hour >= 7 and clock.hour < 19) and (clock.weekDay) < 6 then ctrlLimits.limValue[typeLimit, 3] else ctrlLimits.limValue[typeLimit, 3] - 5;
  THardDown = if (clock.hour >= 7 and clock.hour < 19) and (clock.weekDay) < 6 then ctrlLimits.limValue[typeLimit, 4] else ctrlLimits.limValue[typeLimit, 4] - 5;
  //limits = if ctrlLimits.RMOT < (273.15 + (10 + 15)/2) then ctrlLimits.limValue[typeLimit, 3] else ctrlLimits.limValue[typeLimit, 2];
  connect(Tavg, realExpression.y) annotation (Line(points={{155,-11},{130,-11},
          {130,-11},{103.2,-11}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-160},{140,100}}),
                                                                graphics={
        Rectangle(
          heaSys.e005.port_a2.extent),
        Polygon(
          heaSys.e005.port_a2.points),
        Polygon(
          heaSys.e005.port_a2.points),
        Polygon(
          heaSys.e005.port_a2.points),
        Polygon(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Polygon(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Ellipse(
          heaSys.e005.port_a2.extent),
        Line(
          heaSys.e005.port_a2.points),
        Line(
          heaSys.e005.port_a2.points)}),                         Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-160},{140,100}})));
end Limits;
