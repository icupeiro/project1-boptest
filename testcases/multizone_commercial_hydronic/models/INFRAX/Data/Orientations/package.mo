within INFRAX.Data;
package Orientations "INFRAX Types"
   extends Modelica.Icons.TypesPackage;
   constant Modelica.SIunits.Angle shift = Modelica.Constants.pi*33/180
   "INFRAX orientation shift with respect to north";
   constant Modelica.SIunits.Angle E = IDEAS.Types.Azimuth.E + shift
   "INFRAX fake east orientation";
   constant Modelica.SIunits.Angle N = IDEAS.Types.Azimuth.N + shift
   "INFRAX fake north orientation";
   constant Modelica.SIunits.Angle S = IDEAS.Types.Azimuth.S + shift
   "INFRAX fake south orientation";
   constant Modelica.SIunits.Angle W = IDEAS.Types.Azimuth.W + shift
   "INFRAX fake west orientation";
   constant Modelica.SIunits.Angle inc = IDEAS.Types.Azimuth.N + shift - 71/180*
   Modelica.Constants.pi
   "INFRAX inc orientation gnd and 1st floor";
   ////// OPTIMAL DESIGN ORIENTATIONS   
   constant Modelica.SIunits.Angle shiftOptDes = Modelica.Constants.pi*
   (33+OptimalDesign.Constants.shift)/180
   "INFRAX orientation shift with respect to north";
   constant Modelica.SIunits.Angle EOptDes = IDEAS.Types.Azimuth.E + shiftOptDes
   "INFRAX fake east orientation";
   constant Modelica.SIunits.Angle NOptDes = IDEAS.Types.Azimuth.N + shiftOptDes
   "INFRAX fake north orientation";
   constant Modelica.SIunits.Angle SOptDes = IDEAS.Types.Azimuth.S + shiftOptDes
   "INFRAX fake south orientation";
   constant Modelica.SIunits.Angle WOptDes = IDEAS.Types.Azimuth.W + shiftOptDes
   "INFRAX fake west orientation";
   constant Modelica.SIunits.Angle incOptDes = IDEAS.Types.Azimuth.N +
   shiftOptDes - 71/180*Modelica.Constants.pi
   "INFRAX inc orientation gnd and 1st floor";

end Orientations;
