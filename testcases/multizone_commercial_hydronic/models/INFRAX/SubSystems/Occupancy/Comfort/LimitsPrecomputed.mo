within INFRAX.SubSystems.Occupancy.Comfort;
model LimitsPrecomputed
  Modelica.Blocks.Sources.RealExpression realExpression(y=(TSoftUp + TSoftDown)
        /2) annotation (Placement(transformation(extent={{38,-14},{62,8}})));
  Modelica.Blocks.Interfaces.RealOutput THardUp(each unit="K", each displayUnit=
       "degC")                                                                          "Upper hard limit" annotation (Placement(transformation(extent={{100,78},
            {130,108}})));
  Modelica.Blocks.Interfaces.RealOutput TSoftUp(each unit="K", each displayUnit=
       "degC")
    "Upper soft limit"                                                                                     annotation (Placement(transformation(extent={{100,12},
            {130,42}}),                                                                                                                                                     iconTransformation(extent={{100,12},
            {130,42}})));
  Modelica.Blocks.Interfaces.RealOutput TSoftDown(each unit="K", each
      displayUnit="degC")                                                                 "Lower soft limit" annotation (Placement(transformation(extent={{100,-48},
            {130,-18}}),                                                                                                                                                         iconTransformation(extent={{100,-48},
            {130,-18}})));
  Modelica.Blocks.Interfaces.RealOutput THardDown(each unit="K", each
      displayUnit="degC")                                                                 "Lower hard limit" annotation (Placement(transformation(extent={{100,
            -108},{130,-78}}),                                                                                                                                                    iconTransformation(extent={{100,
            -108},{130,-78}})));
  Modelica.Blocks.Interfaces.RealOutput Tavg(each unit="K", each displayUnit=
        "degC") "Average setpoint" annotation (Placement(transformation(extent={{100,-18},
            {130,12}}),           iconTransformation(extent={{140,-20},{158,-2}})));
  Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(
    tableOnFile=true,
    tableName="data",
    fileName=Modelica.Utilities.Files.loadResource(
        "modelica://INFRAX/hG_comfortLimits.txt"),
    columns={2,3,4,5},
    smoothness=Modelica.Blocks.Types.Smoothness.ConstantSegments,
    extrapolation=Modelica.Blocks.Types.Extrapolation.Periodic)
    annotation (Placement(transformation(extent={{-30,-10},{-10,10}})));
equation
  connect(Tavg,realExpression. y) annotation (Line(points={{115,-3},{63.2,-3}},
                                  color={0,0,127}));
  connect(combiTimeTable.y[1], TSoftUp) annotation (Line(points={{-9,0},{20,0},
          {20,27},{115,27}}, color={0,0,127}));
  connect(combiTimeTable.y[2], TSoftDown) annotation (Line(points={{-9,0},{20,0},
          {20,-34},{115,-34},{115,-33}}, color={0,0,127}));
  connect(combiTimeTable.y[3], THardUp) annotation (Line(points={{-9,0},{20,0},
          {20,92},{115,92},{115,93}}, color={0,0,127}));
  connect(combiTimeTable.y[4], THardDown) annotation (Line(points={{-9,0},{20,0},
          {20,-92},{115,-92},{115,-93}}, color={0,0,127}));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LimitsPrecomputed;
