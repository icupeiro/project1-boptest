within INFRAX.Air.Comfort;
model CtrlLimits "1 = Temp limits EN16798, 2 = Office - Frequency analysis, 3 = Libeznice, 4 = Ter Poterie"
  IDEAS.Controls.ControlHeating.RunningMeanTemperatureEN15251 rmot annotation (Placement(transformation(extent={{-100,0},{-60,20}})));
  outer IDEAS.BoundaryConditions.SimInfoManager                 sim annotation (Placement(transformation(extent={{-88,70},{-68,90}})));
  Modelica.Blocks.Interfaces.RealOutput limValue[4,4](each unit="K",each displayUnit = "degC") "Each type of limit has 4: TMaxSoft, TMaxHard, TminHard, TminSoft"
                                                                                               annotation (Placement(transformation(extent={{100,-90},{120,-70}})));
  parameter Real minOT(each unit="K",each displayUnit = "degC")=10+273.15 "Minimum outside temperature";
  parameter Real maxOT(each unit="K",each displayUnit = "degC")=15+273.15 "Maximum outside temperature";
  parameter Real limits[4,8](each unit="K",each displayUnit = "degC")=
       [24, 23, 21, 20, 25.5, 25, 23.5, 23;
        23.5, 23, 21, 20.5, 26, 25.5, 23.5, 23;
        24.5, 24, 22, 21.5, 27, 26.5, 24.5, 24;
        24.5, 24, 22, 21.5, 26, 25.5, 23.5, 23].+273.15 "Limits winter and summer: WMs, WMh, Wmh, Wms, SMs, SMh, Smh, Sms";
  Modelica.Blocks.Interfaces.RealOutput RMOT(each unit="K", each displayUnit="degC") "Running mean outdoor temperature"
                                                                                     annotation (Placement(transformation(extent={{100,50},{120,70}})));
equation
  for i in 1:4 loop // i = type of limit (1 = Temp limits EN16798, 2 = Office - Frequency analysis, 3 = Libeznice, 4 = Ter Poterie)
    for j in 1:4 loop // j = curves. Each type of limit has 4: TMaxSoft, TMaxHard, TminHard, TminSoft.
       if rmot.TRm <= minOT then
        limValue[i,j]=limits[i,j];
       elseif rmot.TRm >= maxOT then
        limValue[i,j]=limits[i,j+4];
       else
        limValue[i,j]=limits[i,j]+(limits[i,j+4]-limits[i,j])*(rmot.TRm-minOT)/(maxOT-minOT);
       end if;
    end for;
  end for;
  RMOT=rmot.TRm;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,80}}), graphics={Rectangle(
          extent={{-100,80},{100,-100}},
          pattern=LinePattern.None,
          lineColor={0,0,0},
          fillColor={215,215,215},
          fillPattern=FillPattern.Solid), Text(
          extent={{-100,80},{100,-100}},
          lineColor={28,108,200},
          textString="Ctrl",
          fontName="monospace",
          textStyle={TextStyle.Bold})}),                                                        Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,100}})),
    experiment(StopTime=94694400));
end CtrlLimits;
