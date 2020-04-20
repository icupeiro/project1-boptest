within INFRAX.SubSystems.Controllers;
model OverwriteInteger
  IBPSA.Utilities.IO.SignalExchange.Overwrite overwrite(description=description,
      u(min=min, max=max, unit=unit))
    annotation (Placement(transformation(extent={{-12,-10},{8,10}})));
  Modelica.Blocks.Math.RealToInteger realToInteger1
    annotation (Placement(transformation(extent={{62,-10},{82,10}})));
  Modelica.Blocks.Math.IntegerToReal integerToReal
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Modelica.Blocks.Interfaces.IntegerInput u
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
  Modelica.Blocks.Interfaces.IntegerOutput y
    annotation (Placement(transformation(extent={{100,-20},{140,20}})));
  parameter String description "Description of the signal being overwritten";

  parameter Real min "signal minimum";
  parameter Real max "signal maximum";
  parameter String unit "signal units";

equation
  connect(overwrite.y, realToInteger1.u)
    annotation (Line(points={{9,0},{60,0}}, color={0,0,127}));
  connect(integerToReal.y, overwrite.u)
    annotation (Line(points={{-59,0},{-14,0}}, color={0,0,127}));
  connect(u, integerToReal.u)
    annotation (Line(points={{-120,0},{-82,0}}, color={255,127,0}));
  connect(realToInteger1.y, y)
    annotation (Line(points={{83,0},{120,0}}, color={255,127,0}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                                Rectangle(
        extent={{-100,-100},{100,100}},
        lineColor={0,0,127},
        fillColor={255,255,255},
        fillPattern=FillPattern.Solid),
        Line(points={{100,0},{42,0}}, color={0,0,127}),
        Line(points={{42,0},{-20,60}},
        color={0,0,127}),
        Line(points={{42,0},{-20,0}},
        color = DynamicSelect({235,235,235}, if activate.y then {235,235,235}
                    else {0,0,0})),
        Line(points={{-100,0},{-20,0}}, color={0,0,127}),
        Line(points={{-62,60},{-20,60}},  color={0,0,127}),
        Polygon(
          points={{-58,70},{-28,60},{-58,50},{-58,70}},
          lineColor={0,0,127},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-22,62},{-18,58}},
          lineColor={0,0,127},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-22,2},{-18,-2}},
          lineColor={0,0,127},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{40,2},{44,-2}},
          lineColor={0,0,127},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid),
        Line(points={{-16,0},{16,0}},     color={0,0,127},
          origin={-62,60},
          rotation=90),
        Line(points={{-16,0},{16,0}},     color={0,0,127},
          origin={-66,60},
          rotation=90),
        Line(points={{-16,0},{16,0}},     color={0,0,127},
          origin={-70,60},
          rotation=90),
        Ellipse(
          extent={{-77,67},{-91,53}},
          fillPattern=FillPattern.Solid,
          lineColor=DynamicSelect({235,235,235}, if activate.y then {0,255,0}
                    else {235,235,235}),
          fillColor=DynamicSelect({235,235,235}, if activate.y then {0,255,0}
                    else {235,235,235}))}),                      Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end OverwriteInteger;
