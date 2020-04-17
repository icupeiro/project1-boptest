within INFRAX.Media;
package Brine30 "Mix 70% water + 30% glycol"
  extends Modelica.Media.Incompressible.TableBased(
    mediumName="Brine30",
    T_min = Modelica.SIunits.Conversions.from_degC(-12.78), T_max = Modelica.SIunits.Conversions.from_degC(100),
    TinK = false, T0=273.15,
    tableDensity=
      [-12.78, 1034.5; -10, 1034; 0, 1031.3; 10, 1028; 20, 1023.8; 40, 1013.5;
       60, 1001.1; 80, 987.7; 100, 973.1],
    tableHeatCapacity=
      [-12.78, 3770; -10, 3775; 0, 3800; 10, 3825; 20, 3855; 40, 3910;
       60, 3960; 80, 4010; 100, 4060],
    tableConductivity=
      [-12.78, 0.418; -10, 0.420; 0, 0.428; 10, 0.436; 20, 0.445; 40, 0.461;
       60, 0.477; 80, 0.492; 100, 0.507],
    tableViscosity=
      [-12.78, 0.015; -10, 0.0125; 0, 0.007; 10, 0.0046; 20, 0.00301; 40, 0.00156;
       60, 0.00099; 80, 0.00069; 100, 0.00053],
    tableVaporPressure=
      [60, 10e3; 80, 20e3; 100, 50e3]);
end Brine30;
