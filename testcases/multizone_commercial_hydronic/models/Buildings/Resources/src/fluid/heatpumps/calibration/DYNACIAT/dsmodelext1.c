#include <moutil.c>
PreNonAliasDef(6)
PreNonAliasDef(7)
PreNonAliasDef(8)
PreNonAliasDef(9)
PreNonAliasDef(10)
StartNonAlias(5)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.z[9]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
79.9, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.z[10]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
89.3, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.dT_dz", \
"NOT YET SUPPORTED. Vertical temperature gradient of the undisturbed soil for h below z0 [K/m]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.rExt", \
"Radius of the soil used for the external boundary condition [m]", 3.0, 0.0,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt0_start", \
"Initial far field temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[1]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[2]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[3]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[4]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[5]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[6]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[7]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[8]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[9]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TExt_start[10]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.TFil0_start", \
"Initial temperature of the filling material for h = 0...z0 [K|degC]", 288.15, \
0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.allowFlowReversal",\
 "True to allow flow reversal, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.p_constant", \
"[Pa|bar]", 101300.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.gen.volOneLegSeg", \
"Volume of brine in one leg of a segment [m3]", 0.007559928561598477, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dynFil", \
"Set to false to remove the dynamics of the filling material. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.T_start", \
"Initial temperature of the filling material [K|degC]", 288.15, 0.0,1E+100,300.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.port.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.allowFlowReversal1", \
"= true to allow flow reversal in medium 1, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.allowFlowReversal2", \
"= true to allow flow reversal in medium 2, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.allowFlowReversal3", \
"= true to allow flow reversal in medium 3, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.allowFlowReversal4", \
"= true to allow flow reversal in medium 4, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_a1_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_b1_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_a2_start", \
"Start value for enthalpy flowing out of port a2 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_b2_start", \
"Start value for enthalpy flowing out of port b2 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_a3_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_b3_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_a4_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h_outflow_b4_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a1.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b1.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a2.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b2.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a3.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b3.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a4.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_a4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b4.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.port_b4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m1_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m2_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m3_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m4_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m1_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m2_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m3_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.m4_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.m1_flow", \
"Mass flow rate from port_a1 to port_b1 (m1_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp1", "Pressure difference between port_a1 and port_b1 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.m2_flow", \
"Mass flow rate from port_a2 to port_b2 (m2_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp2", "Pressure difference between port_a2 and port_b2 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.m3_flow", \
"Mass flow rate from port_a3 to port_b3 (m3_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp3", "Pressure difference between port_a3 and port_b3 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.m4_flow", \
"Mass flow rate from port_a4 to port_b4 (m4_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp4", "Pressure difference between port_a4 and port_b4 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a1.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a1.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b1.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b1.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a2.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a2.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b2.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b2.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a3.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a3.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b3.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b3.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a4.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_a4.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b4.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta_b4.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_a4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.state_b4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.computeFlowResistance1",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.from_dp1", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp1_nominal", \
"Pressure [Pa|Pa]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.linearizeFlowResistance1",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.deltaM1", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.computeFlowResistance2",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.from_dp2", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp2_nominal", \
"Pressure [Pa|Pa]", 0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.linearizeFlowResistance2",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.deltaM2", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.computeFlowResistance3",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.from_dp3", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp3_nominal", \
"Pressure [Pa|Pa]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.linearizeFlowResistance3",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.deltaM3", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.computeFlowResistance4",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.from_dp4", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.dp4_nominal", \
"Pressure [Pa|Pa]", 0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.linearizeFlowResistance4",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.deltaM4", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.tau1", "Time constant at nominal flow [s]",\
 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.tau2", "Time constant at nominal flow [s]",\
 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.tau3", "Time constant at nominal flow [s]",\
 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.tau4", "Time constant at nominal flow [s]",\
 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.p1_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.T1_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.X1_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.p2_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.T2_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.X2_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.p3_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.T3_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.X3_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.p4_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.T4_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.X4_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", \
"Heat flow rate into medium 1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", \
"Heat flow rate into medium 2 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", \
"Heat flow rate into medium 1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", \
"Heat flow rate into medium 2 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1, 5, 7286, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.T", "Temperature of the fluid [K|degC]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", 1, 5, 7307, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.U", "Internal energy of the component [J]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.U", 1, 1, 175, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.p", "Pressure of the fluid [Pa|bar]",\
 "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1,\
 5, 7286, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", 1,\
 5, 7307, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1, 5, 7286, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", 1, 5, 7307, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", 1,\
 5, 7307, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1, 5, 7287, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.T", "Temperature of the fluid [K|degC]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", 1, 5, 7333, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.U", "Internal energy of the component [J]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.U", 1, 1, 176, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.p", "Pressure of the fluid [Pa|bar]",\
 "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1,\
 5, 7287, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", 1,\
 5, 7333, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1, 5, 7287, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", 1, 5, 7333, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", 1,\
 5, 7333, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1, 5, 7288, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.T", "Temperature of the fluid [K|degC]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", 1, 5, 7359, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.U", "Internal energy of the component [J]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.U", 1, 1, 177, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.p", "Pressure of the fluid [Pa|bar]",\
 "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1,\
 5, 7288, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", 1,\
 5, 7359, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1, 5, 7288, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", 1, 5, 7359, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", 1,\
 5, 7359, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1, 5, 7289, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.T", "Temperature of the fluid [K|degC]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", 1, 5, 7385, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.U", "Internal energy of the component [J]",\
 "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.U", 1, 1, 178, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.p", "Pressure of the fluid [Pa|bar]",\
 "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.state_default.p", \
"Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.state_default.T", \
"Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1,\
 5, 7289, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", 1,\
 5, 7385, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1, 5, 7289, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", 1, 5, 7385, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", 1,\
 5, 7385, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a1.h_outflow", 1, 5, 6295, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 288, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.sta_default.T",\
 "Temperature of medium [K|degC]", 289, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro1.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 290, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.sta_default.T",\
 "Temperature of medium [K|degC]", 291, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro2.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a3.h_outflow", 1, 5, 6297, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 292, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.sta_default.T",\
 "Temperature of medium [K|degC]", 293, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro3.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 294, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.sta_default.T",\
 "Temperature of medium [K|degC]", 295, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.preDro4.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta1_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 296, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta1_nominal.T", \
"Temperature of medium [K|degC]", 297, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.rho1_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta2_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 298, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta2_nominal.T", \
"Temperature of medium [K|degC]", 299, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.rho2_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta3_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 300, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta3_nominal.T", \
"Temperature of medium [K|degC]", 301, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.rho3_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta4_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 302, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.sta4_nominal.T", \
"Temperature of medium [K|degC]", 303, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.rho4_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta1_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta1_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h1_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta2_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta2_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h2_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta3_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta3_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h3_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta4_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.sta4_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.h4_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1,\
 5, 7286, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1, 5, 7286, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.heatPort.T", 1,\
 5, 7307, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", -1, 5, 7286, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1,\
 5, 7287, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1, 5, 7287, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.heatPort.T", 1,\
 5, 7333, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", -1, 5, 7287, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1,\
 5, 7288, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1, 5, 7288, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.heatPort.T", 1,\
 5, 7359, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", -1, 5, 7288, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1,\
 5, 7289, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1, 5, 7289, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.heatPort.T", 1,\
 5, 7385, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", -1, 5, 7289, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", -1,\
 5, 7286, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.solid.T", 1,\
 5, 7484, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", -1, 5, 7286, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1, 5, 7286, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg1.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.Q_flow", 1, 5, 7496, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.port.T", 1,\
 5, 7204, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.Q_flow", -1, 5, 7496, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb1.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", -1,\
 5, 7287, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.solid.T", 1,\
 5, 7487, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", -1, 5, 7287, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1, 5, 7287, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg2.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.Q_flow", 1, 5, 7501, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.port.T", 1,\
 5, 7204, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.Q_flow", -1, 5, 7501, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb2.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", -1,\
 5, 7288, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.solid.T", 1,\
 5, 7490, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", -1, 5, 7288, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1, 5, 7288, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg3.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.Q_flow", 1, 5, 7506, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.port.T", 1,\
 5, 7204, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.Q_flow", -1, 5, 7506, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb3.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", -1,\
 5, 7289, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.solid.T", 1,\
 5, 7493, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", -1, 5, 7289, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1, 5, 7289, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rpg4.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.Q_flow", 1, 5, 7511, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.port.T", 1,\
 5, 7204, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.Q_flow", -1, 5, 7511, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb4.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.Q_flow", 1, 5, 7514, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.Q_flow", -1, 5, 7514, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg11.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.Q_flow", 1, 5, 7517, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.Q_flow", -1, 5, 7517, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg21.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.Q_flow", 1, 5, 7520, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.Q_flow", -1, 5, 7520, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg12.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.Q_flow", 1, 5, 7523, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.Q_flow", -1, 5, 7523, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg22.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.Q_flow", 1, 5, 7526, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.Q_flow", -1, 5, 7526, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg14.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.Q_flow", 1, 5, 7529, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.Q_flow", -1, 5, 7529, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg24.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.Q_flow", 1, 5, 7532, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.Q_flow", -1, 5, 7532, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg13.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.Q_flow", 1, 5, 7535, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.Q_flow", -1, 5, 7535, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg23.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", \
"Temperature of element [K|degC]", 125, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.der(T)", 1,\
 6, 125, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.T", 1,\
 1, 125, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil1.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", \
"Temperature of element [K|degC]", 126, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.der(T)", 1,\
 6, 126, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.T", 1,\
 1, 126, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil2.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", \
"Temperature of element [K|degC]", 127, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.der(T)", 1,\
 6, 127, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.T", 1,\
 1, 127, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil3.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", \
"Temperature of element [K|degC]", 128, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.der(T)", 1,\
 6, 128, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.T", 1,\
 1, 128, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.capFil4.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Co_fil", \
"Heat capacity of the whole filling material [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.cpMed", \
"Specific heat capacity of the fluid [J/(kg.K)]", 304, 4184, 0.0,0.0,0.0,0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.kMed", \
"Thermal conductivity of the fluid [W/(m.K)]", 305, 0.598, 0.0,0.0,0.0,0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[9].intHEX.mueMed", \
"Dynamic viscosity of the fluid [Pa.s]", 306, 0.001, 0.0,1E+100,0.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.x", "", 0.0, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgb_val", "[K/W]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg1_val", "[K/W]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.Rgg2_val", "[K/W]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.RCondGro_val", "[K/W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RVol1.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv1.Rc", 1,\
 5, 7483, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RVol2.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv2.Rc", 1,\
 5, 7486, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RVol3.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv3.Rc", 1,\
 5, 7489, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.RVol4.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[9].intHEX.RConv4.Rc", 1,\
 5, 7492, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soi.k", "Thermal conductivity [W/(m.K)]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soi.c", "Specific heat capacity [J/(kg.K)]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soi.d", "Mass density [kg/m3|g/cm3]",\
 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soi.steadyState", \
"Flag, if true, then material is computed using steady-state heat conduction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soi.alp", "[m2/s]", \
3.443579266569013E-007, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].fil.k", "Thermal conductivity [W/(m.K)]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].fil.c", "Specific heat capacity [J/(kg.K)]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].fil.d", "Mass density [kg/m3|g/cm3]",\
 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].fil.steadyState", \
"Flag, if true, then material is computed using steady-state heat conduction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].fil.alp", "Heat diffusion coefficient of the filling material [m2/s]",\
 1.8775966762543943E-006, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.singleUTube", \
"True if use single U-tube, false if use double U-tube [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].gen.parallel2UTube", \
"True if the double u-tube is connected in parallel in each borehole. [:#(type=Boolean)]",\
 307, true, 0.0,0.0,0.0,0,562)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.use_Rb", "True if the value borehole thermal resistance Rb should be given and used [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.Rb", "Borehole thermal resistance Rb. Only to fill in if known [(m.K)/W]",\
 0.094, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.T_start", \
"Initial temperature of the borefield (grout and soil) [K|degC]", 288.15, 0.0,\
1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.m_flow_nominal_bh", \
"Nominal mass flow rate per borehole [kg/s]", 0.27763157894736845, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.dp_nominal", \
"Pressure losses for the entire borefield [Pa|bar]", 50000.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.hBor", "Total height of the borehole [m]",\
 94.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.rBor", "Radius of the borehole [m]",\
 0.075, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.nbBh", "Total number of boreholes [:#(type=Integer)]",\
 38, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.nbSer", "[:#(type=Integer)]",\
 0, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[1, 1]", \
"Cartesian coordinates of the boreholes in meters.", 3.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[1, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[2, 1]", \
"Cartesian coordinates of the boreholes in meters.", 9.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[2, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[3, 1]", \
"Cartesian coordinates of the boreholes in meters.", 15.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[3, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[4, 1]", \
"Cartesian coordinates of the boreholes in meters.", 21.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[4, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[5, 1]", \
"Cartesian coordinates of the boreholes in meters.", 27.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[5, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[6, 1]", \
"Cartesian coordinates of the boreholes in meters.", 33.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[6, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[7, 1]", \
"Cartesian coordinates of the boreholes in meters.", 39.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[7, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[8, 1]", \
"Cartesian coordinates of the boreholes in meters.", 45.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[8, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[9, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[9, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[10, 1]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[10, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[11, 1]", \
"Cartesian coordinates of the boreholes in meters.", 6.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[11, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[12, 1]", \
"Cartesian coordinates of the boreholes in meters.", 12.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[12, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[13, 1]", \
"Cartesian coordinates of the boreholes in meters.", 18.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[13, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[14, 1]", \
"Cartesian coordinates of the boreholes in meters.", 24.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[14, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[15, 1]", \
"Cartesian coordinates of the boreholes in meters.", 36.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[15, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[16, 1]", \
"Cartesian coordinates of the boreholes in meters.", 42.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[16, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[17, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[17, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[18, 1]", \
"Cartesian coordinates of the boreholes in meters.", 54.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[18, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[19, 1]", \
"Cartesian coordinates of the boreholes in meters.", 3.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[19, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[20, 1]", \
"Cartesian coordinates of the boreholes in meters.", 9.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[20, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[21, 1]", \
"Cartesian coordinates of the boreholes in meters.", 15.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[21, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[22, 1]", \
"Cartesian coordinates of the boreholes in meters.", 21.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[22, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[23, 1]", \
"Cartesian coordinates of the boreholes in meters.", 27.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[23, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[24, 1]", \
"Cartesian coordinates of the boreholes in meters.", 33.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[24, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[25, 1]", \
"Cartesian coordinates of the boreholes in meters.", 39.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[25, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[26, 1]", \
"Cartesian coordinates of the boreholes in meters.", 45.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[26, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[27, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[27, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[28, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[28, 2]", \
"Cartesian coordinates of the boreholes in meters.", 20.12461179749811, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[29, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[29, 2]", \
"Cartesian coordinates of the boreholes in meters.", 26.832815729997478, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[30, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[30, 2]", \
"Cartesian coordinates of the boreholes in meters.", 33.54101966249685, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[31, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[31, 2]", \
"Cartesian coordinates of the boreholes in meters.", 40.24922359499622, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[32, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[32, 2]", \
"Cartesian coordinates of the boreholes in meters.", 46.95742752749558, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[33, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[33, 2]", \
"Cartesian coordinates of the boreholes in meters.", 53.665631459994955, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[34, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[34, 2]", \
"Cartesian coordinates of the boreholes in meters.", 60.37383539249433, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[35, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[35, 2]", \
"Cartesian coordinates of the boreholes in meters.", 67.0820393249937, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[36, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[36, 2]", \
"Cartesian coordinates of the boreholes in meters.", 73.79024325749306, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[37, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[37, 2]", \
"Cartesian coordinates of the boreholes in meters.", 80.49844718999243, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[38, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.cooBh[38, 2]", \
"Cartesian coordinates of the boreholes in meters.", 87.2066511224918, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.rTub", "Outer radius of the tubes [m]",\
 0.016, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.kTub", "Thermal conductivity of the tube [W/(m.K)]",\
 0.42, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.eTub", "Thickness of a tube [m]",\
 0.003, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.xC", "Shank spacing, defined as the distance between the center of a pipe and the center of the borehole [m]",\
 0.022627416997969524, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.tStep", "Time resolution of the step-response [s] [s]",\
 3600.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.tSteSta_d", \
"Discrete time to reach steady state [-] (default = 30 years) [:#(type=Integer)]",\
 262800, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.tBre_d", "Discrete time upper boundary for saving results [-] (tBre_d * tStep) should be >= 150 hours [:#(type=Integer)]",\
 150, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.q_ste", "Power per length borehole of step load input [W/m]",\
 30.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.nVer", "[:#(type=Integer)]",\
 10, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.nHor", "Number of state variables in each horizontal layer of the soil [:#(type=Integer)]",\
 10, 1.0,1E+100,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.hSeg", "Height of horizontal element [m]",\
 9.4, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 2.7763157894736848E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z0", "NOT YET SUPPORTED. Depth below which the temperature gradient starts [m]",\
 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[1]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 4.7, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[2]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 14.1, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[3]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 23.5, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[4]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 32.9, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[5]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 42.3, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[6]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 51.7, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[7]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 61.1, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[8]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 70.5, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[9]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 79.9, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.z[10]", "NOT YET SUPPORTED. Distance from the surface to the considered segment [m]",\
 89.3, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.dT_dz", "NOT YET SUPPORTED. Vertical temperature gradient of the undisturbed soil for h below z0 [K/m]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.rExt", "Radius of the soil used for the external boundary condition [m]",\
 3.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt0_start", \
"Initial far field temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[1]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[2]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[3]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[4]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[5]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[6]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[7]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[8]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[9]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TExt_start[10]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.TFil0_start", \
"Initial temperature of the filling material for h = 0...z0 [K|degC]", 288.15, \
0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.allowFlowReversal", \
"True to allow flow reversal, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.p_constant", "[Pa|bar]", \
101300.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].gen.volOneLegSeg", \
"Volume of brine in one leg of a segment [m3]", 0.007559928561598477, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dynFil", "Set to false to remove the dynamics of the filling material. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].computeFlowResistance", \
"=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].from_dp", "= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dp_nominal", "Pressure difference [Pa|Pa]",\
 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].linearizeFlowResistance", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].deltaM", "Fraction of nominal flow rate where flow transitions to laminar [1]",\
 0.1, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].substanceDynamics", \
"Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].p_start", "Start value of pressure [Pa|bar]",\
 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].T_start", "Start value of temperature [K|degC]",\
 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].X_start[1]", "Start value of mass fractions m_i/m [kg/kg]",\
 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].mSenFac", "Factor for scaling the sensible thermal mass of the volume [1]",\
 1.0, 0.1,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].use_TWall", "Set to true if an input is used for the borehole wall temperature instead of computing it wihtin the model. [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].TExt_start", "Initial far field temperature [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].TFil_start", "Initial far field temperature [K|degC]",\
 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].realExpression.y", \
"Value of Real output [K]", 288.15, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].TBouCon.port.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,521)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].TBouCon.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].TBouCon.T", "[K]", 288.15, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.material.k", \
"Thermal conductivity [W/(m.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.material.c", \
"Specific heat capacity [J/(kg.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.material.d", \
"Mass density [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.material.steadyState",\
 "Flag, if true, then material is computed using steady-state heat conduction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.material.alp", \
"[m2/s]", 3.443579266569013E-007, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.h", "Height of the cylinder [m]",\
 9.4, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r_a", \
"Internal radius [m]", 0.075, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r_b", \
"External radius [m]", 3.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.nSta", \
"Number of state variables [:#(type=Integer)]", 10, 1.0,1E+100,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.TInt_start", \
"Initial temperature at port_a, used if steadyStateInitial = false [K|degC]", \
288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.TExt_start", \
"Initial temperature at port_b, used if steadyStateInitial = false [K|degC]", \
288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.steadyStateInitial", \
"true initializes dT(0)/dt=0, false initializes T(0) at fixed temperature using T_a_start and T_b_start [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].soilLay.gridFac", \
"Grid factor for spacing", 308, 2, 1.0,1E+100,0.0,0,560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.dT", "port_a.T - port_b.T [K,]",\
 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].soilLay.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", 1,\
 5, 7948, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].soilLay.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.port.Q_flow", -1, 5, 7949, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.port_b.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,521)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].soilLay.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].TBouCon.port.Q_flow", -1, 5, 7707, 132)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[1]", "Temperature of the states [K|degC]",\
 129, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[1])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[2]", "Temperature of the states [K|degC]",\
 130, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[2])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[3]", "Temperature of the states [K|degC]",\
 131, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[3])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[4]", "Temperature of the states [K|degC]",\
 132, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[4])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[5]", "Temperature of the states [K|degC]",\
 133, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[5])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[6]", "Temperature of the states [K|degC]",\
 134, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[6])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[7]", "Temperature of the states [K|degC]",\
 135, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[7])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[8]", "Temperature of the states [K|degC]",\
 136, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[8])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[9]", "Temperature of the states [K|degC]",\
 137, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[9])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareState("borHolSer.borHol[1].borHolSeg[10].soilLay.T[10]", "Temperature of the states [K|degC]",\
 138, 288.15, 0.0,1E+100,300.0,0,544)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].soilLay.der(T[10])", \
"der(Temperature of the states) [K/s]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[1]", \
"Heat flow rate from state i to i+1 [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.Q_flow", -1,\
 5, 7949, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[2]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[3]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[4]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[5]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[6]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[7]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[8]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[9]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[10]", \
"Heat flow rate from state i to i+1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].soilLay.Q_flow[11]", \
"Heat flow rate from state i to i+1 [W]", "borHolSer.borHol[1].borHolSeg[10].TBouCon.port.Q_flow", 1,\
 5, 7707, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[1]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[2]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[3]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[4]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[5]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[6]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[7]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[8]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[9]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[10]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.r[11]", \
"Radius to the boundary of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[1]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[2]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[3]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[4]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[5]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[6]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[7]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[8]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[9]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.rC[10]", \
"Radius to the center of the i-th domain [m]", 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.c", "Specific heat capacity [J/(kg.K)]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.k", "Thermal conductivity of the material [W/(m.K)]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.d", "Density of the material [kg/m3|g/cm3]",\
 0.0, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[1]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[2]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[3]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[4]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[5]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[6]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[7]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[8]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[9]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[10]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.G[11]", \
"Heat conductance between the temperature nodes [W/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[1]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[2]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[3]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[4]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[5]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[6]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[7]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[8]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[9]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.C[10]", \
"Heat capacity of each state [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.gridFac_sum", "", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].soilLay.gridFac_sum_old", "",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].allowFlowReversal1", \
"= true to allow flow reversal in medium 1, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].allowFlowReversal2", \
"= true to allow flow reversal in medium 2, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].allowFlowReversal3", \
"= true to allow flow reversal in medium 3, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].allowFlowReversal4", \
"= true to allow flow reversal in medium 4, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_a1_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 309, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_b1_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 310, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_a2_start", \
"Start value for enthalpy flowing out of port a2 [J/kg]", 311, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_b2_start", \
"Start value for enthalpy flowing out of port b2 [J/kg]", 312, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_a3_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 313, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_b3_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 314, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_a4_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 315, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].h_outflow_b4_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 316, 83680.0, 0.0,0.0,\
0.0,0,560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a1.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 0.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b1.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a2.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 0.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b2.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a3.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 0.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b3.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_a4.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 0.0, -10000000000.0,10000000000.0,1000000.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b4.p", "Thermodynamic pressure in the connection point [Pa|bar]",\
 "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].port_b4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m1_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m2_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m3_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m4_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m1_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m2_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m3_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].m4_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].show_T", "= true, if actual temperature at port is computed [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].m1_flow", "Mass flow rate from port_a1 to port_b1 (m1_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dp1", "Pressure difference between port_a1 and port_b1 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].m2_flow", "Mass flow rate from port_a2 to port_b2 (m2_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dp2", "Pressure difference between port_a2 and port_b2 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].m3_flow", "Mass flow rate from port_a3 to port_b3 (m3_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dp3", "Pressure difference between port_a3 and port_b3 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].m4_flow", "Mass flow rate from port_a4 to port_b4 (m4_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].dp4", "Pressure difference between port_a4 and port_b4 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_a1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_a1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_b1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_b1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_a2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_a2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_b2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_b2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_a3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_a3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_b3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_b3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_a4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_a4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].state_b4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].state_b4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.soi.k", \
"Thermal conductivity [W/(m.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.soi.c", \
"Specific heat capacity [J/(kg.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.soi.d", \
"Mass density [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.soi.steadyState", \
"Flag, if true, then material is computed using steady-state heat conduction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.soi.alp", "[m2/s]", \
3.443579266569013E-007, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.fil.k", \
"Thermal conductivity [W/(m.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.fil.c", \
"Specific heat capacity [J/(kg.K)]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.fil.d", \
"Mass density [kg/m3|g/cm3]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.fil.steadyState", \
"Flag, if true, then material is computed using steady-state heat conduction [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.fil.alp", \
"Heat diffusion coefficient of the filling material [m2/s]", 1.8775966762543943E-006,\
 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.singleUTube", \
"True if use single U-tube, false if use double U-tube [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.parallel2UTube", \
"True if the double u-tube is connected in parallel in each borehole. [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.use_Rb", \
"True if the value borehole thermal resistance Rb should be given and used [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.Rb", \
"Borehole thermal resistance Rb. Only to fill in if known [(m.K)/W]", 0.094, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.T_start", \
"Initial temperature of the borefield (grout and soil) [K|degC]", 288.15, 0.0,\
1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.m_flow_nominal_bh",\
 "Nominal mass flow rate per borehole [kg/s]", 0.27763157894736845, 0.0,0.0,0.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.dp_nominal", \
"Pressure losses for the entire borefield [Pa|bar]", 50000.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.hBor", \
"Total height of the borehole [m]", 94.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.rBor", \
"Radius of the borehole [m]", 0.075, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.nbBh", \
"Total number of boreholes [:#(type=Integer)]", 38, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.nbSer", \
"[:#(type=Integer)]", 0, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[1, 1]", \
"Cartesian coordinates of the boreholes in meters.", 3.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[1, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[2, 1]", \
"Cartesian coordinates of the boreholes in meters.", 9.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[2, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[3, 1]", \
"Cartesian coordinates of the boreholes in meters.", 15.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[3, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[4, 1]", \
"Cartesian coordinates of the boreholes in meters.", 21.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[4, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[5, 1]", \
"Cartesian coordinates of the boreholes in meters.", 27.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[5, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[6, 1]", \
"Cartesian coordinates of the boreholes in meters.", 33.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[6, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[7, 1]", \
"Cartesian coordinates of the boreholes in meters.", 39.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[7, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[8, 1]", \
"Cartesian coordinates of the boreholes in meters.", 45.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[8, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[9, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[9, 2]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[10, 1]", \
"Cartesian coordinates of the boreholes in meters.", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[10, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[11, 1]", \
"Cartesian coordinates of the boreholes in meters.", 6.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[11, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[12, 1]", \
"Cartesian coordinates of the boreholes in meters.", 12.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[12, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[13, 1]", \
"Cartesian coordinates of the boreholes in meters.", 18.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[13, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[14, 1]", \
"Cartesian coordinates of the boreholes in meters.", 24.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[14, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[15, 1]", \
"Cartesian coordinates of the boreholes in meters.", 36.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[15, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[16, 1]", \
"Cartesian coordinates of the boreholes in meters.", 42.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[16, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[17, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[17, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[18, 1]", \
"Cartesian coordinates of the boreholes in meters.", 54.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[18, 2]", \
"Cartesian coordinates of the boreholes in meters.", 6.708203932499369, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[19, 1]", \
"Cartesian coordinates of the boreholes in meters.", 3.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[19, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[20, 1]", \
"Cartesian coordinates of the boreholes in meters.", 9.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[20, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[21, 1]", \
"Cartesian coordinates of the boreholes in meters.", 15.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[21, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[22, 1]", \
"Cartesian coordinates of the boreholes in meters.", 21.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[22, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[23, 1]", \
"Cartesian coordinates of the boreholes in meters.", 27.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[23, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[24, 1]", \
"Cartesian coordinates of the boreholes in meters.", 33.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[24, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[25, 1]", \
"Cartesian coordinates of the boreholes in meters.", 39.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[25, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[26, 1]", \
"Cartesian coordinates of the boreholes in meters.", 45.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[26, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[27, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[27, 2]", \
"Cartesian coordinates of the boreholes in meters.", 13.416407864998739, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[28, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[28, 2]", \
"Cartesian coordinates of the boreholes in meters.", 20.12461179749811, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[29, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[29, 2]", \
"Cartesian coordinates of the boreholes in meters.", 26.832815729997478, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[30, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[30, 2]", \
"Cartesian coordinates of the boreholes in meters.", 33.54101966249685, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[31, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[31, 2]", \
"Cartesian coordinates of the boreholes in meters.", 40.24922359499622, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[32, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[32, 2]", \
"Cartesian coordinates of the boreholes in meters.", 46.95742752749558, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[33, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[33, 2]", \
"Cartesian coordinates of the boreholes in meters.", 53.665631459994955, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[34, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[34, 2]", \
"Cartesian coordinates of the boreholes in meters.", 60.37383539249433, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[35, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[35, 2]", \
"Cartesian coordinates of the boreholes in meters.", 67.0820393249937, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[36, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[36, 2]", \
"Cartesian coordinates of the boreholes in meters.", 73.79024325749306, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[37, 1]", \
"Cartesian coordinates of the boreholes in meters.", 51.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[37, 2]", \
"Cartesian coordinates of the boreholes in meters.", 80.49844718999243, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[38, 1]", \
"Cartesian coordinates of the boreholes in meters.", 48.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.cooBh[38, 2]", \
"Cartesian coordinates of the boreholes in meters.", 87.2066511224918, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.rTub", \
"Outer radius of the tubes [m]", 0.016, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.kTub", \
"Thermal conductivity of the tube [W/(m.K)]", 0.42, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.eTub", \
"Thickness of a tube [m]", 0.003, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.xC", \
"Shank spacing, defined as the distance between the center of a pipe and the center of the borehole [m]",\
 0.022627416997969524, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.tStep", \
"Time resolution of the step-response [s] [s]", 3600.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.tSteSta_d", \
"Discrete time to reach steady state [-] (default = 30 years) [:#(type=Integer)]",\
 262800, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.tBre_d", \
"Discrete time upper boundary for saving results [-] (tBre_d * tStep) should be >= 150 hours [:#(type=Integer)]",\
 150, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.q_ste", \
"Power per length borehole of step load input [W/m]", 30.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.nVer", \
"[:#(type=Integer)]", 10, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.nHor", \
"Number of state variables in each horizontal layer of the soil [:#(type=Integer)]",\
 10, 1.0,1E+100,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.hSeg", \
"Height of horizontal element [m]", 9.4, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 2.7763157894736848E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z0", \
"NOT YET SUPPORTED. Depth below which the temperature gradient starts [m]", 0.0,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[1]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
4.7, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[2]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
14.1, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[3]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
23.5, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[4]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
32.9, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[5]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
42.3, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[6]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
51.7, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[7]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
61.1, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[8]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
70.5, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[9]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
79.9, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.z[10]", \
"NOT YET SUPPORTED. Distance from the surface to the considered segment [m]", \
89.3, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.dT_dz", \
"NOT YET SUPPORTED. Vertical temperature gradient of the undisturbed soil for h below z0 [K/m]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.rExt", \
"Radius of the soil used for the external boundary condition [m]", 3.0, 0.0,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt0_start", \
"Initial far field temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[1]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[2]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[3]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[4]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[5]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[6]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[7]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[8]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[9]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TExt_start[10]", \
"Temperature of the undisturbed ground [K|degC]", 288.15, 0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.TFil0_start", \
"Initial temperature of the filling material for h = 0...z0 [K|degC]", 288.15, \
0.0,1E+100,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.allowFlowReversal",\
 "True to allow flow reversal, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.p_constant", \
"[Pa|bar]", 101300.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.gen.volOneLegSeg", \
"Volume of brine in one leg of a segment [m3]", 0.007559928561598477, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dynFil", \
"Set to false to remove the dynamics of the filling material. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.T_start", \
"Initial temperature of the filling material [K|degC]", 288.15, 0.0,1E+100,300.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.0,0.0,\
0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.allowFlowReversal1", \
"= true to allow flow reversal in medium 1, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.allowFlowReversal2", \
"= true to allow flow reversal in medium 2, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.allowFlowReversal3", \
"= true to allow flow reversal in medium 3, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.allowFlowReversal4", \
"= true to allow flow reversal in medium 4, false restricts to design direction (port_a -> port_b) [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_a1_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_b1_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_a2_start", \
"Start value for enthalpy flowing out of port a2 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_b2_start", \
"Start value for enthalpy flowing out of port b2 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_a3_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_b3_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_a4_start", \
"Start value for enthalpy flowing out of port a1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h_outflow_b4_start", \
"Start value for enthalpy flowing out of port b1 [J/kg]", 62760.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a1.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b1.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b1.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b1.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a2.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b2.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b2.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b2.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a3.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b3.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b3.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b3.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a4.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_a4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b4.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b4.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.port_b4.h_outflow", \
"Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m1_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m2_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m3_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m4_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m1_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m2_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m3_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.m4_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,100000.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", true, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.m1_flow", \
"Mass flow rate from port_a1 to port_b1 (m1_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp1", "Pressure difference between port_a1 and port_b1 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.m2_flow", \
"Mass flow rate from port_a2 to port_b2 (m2_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp2", "Pressure difference between port_a2 and port_b2 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.m3_flow", \
"Mass flow rate from port_a3 to port_b3 (m3_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp3", "Pressure difference between port_a3 and port_b3 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.m4_flow", \
"Mass flow rate from port_a4 to port_b4 (m4_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp4", "Pressure difference between port_a4 and port_b4 [Pa|Pa]",\
 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a1.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a1.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b1.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b1.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a2.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a2.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b2.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b2.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a3.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a3.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b3.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b3.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a4.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_a4.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b4.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta_b4.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b1_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b1_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b2_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b2_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b3_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b3_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_a4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b4_inflow.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.state_b4_inflow.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.computeFlowResistance1",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.from_dp1", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp1_nominal", \
"Pressure [Pa|Pa]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.linearizeFlowResistance1",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.deltaM1", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.computeFlowResistance2",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.from_dp2", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp2_nominal", \
"Pressure [Pa|Pa]", 0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.linearizeFlowResistance2",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.deltaM2", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.computeFlowResistance3",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.from_dp3", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp3_nominal", \
"Pressure [Pa|Pa]", 0.0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.linearizeFlowResistance3",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.deltaM3", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.computeFlowResistance4",\
 "=true, compute flow resistance. Set to false to assume no friction [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.from_dp4", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.dp4_nominal", \
"Pressure [Pa|Pa]", 0, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.linearizeFlowResistance4",\
 "= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.deltaM4", \
"Fraction of nominal flow rate where flow transitions to laminar [1]", 0.1, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.tau1", \
"Time constant at nominal flow [s]", 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.tau2", \
"Time constant at nominal flow [s]", 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.tau3", \
"Time constant at nominal flow [s]", 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.tau4", \
"Time constant at nominal flow [s]", 54.21976178260628, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.energyDynamics", \
"Formulation of energy balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.massDynamics", \
"Formulation of mass balance [:#(type=Modelica.Fluid.Types.Dynamics)]", 1, 1.0,\
4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.p1_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.T1_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.X1_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.p2_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.T2_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.X2_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.p3_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.T3_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.X3_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.p4_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.T4_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.X4_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", \
"Heat flow rate into medium 1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", \
"Heat flow rate into medium 2 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", \
"Heat flow rate into medium 1 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", \
"Heat flow rate into medium 2 [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1, 5, 8030, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.T", \
"Temperature of the fluid [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", 1,\
 5, 8051, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.U", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.U", 1,\
 1, 179, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.p", \
"Pressure of the fluid [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1,\
 5, 8030, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", 1,\
 5, 8051, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1, 5, 8030, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", 1, 5, 8051, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", 1,\
 5, 8051, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1, 5, 8031, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.T", \
"Temperature of the fluid [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", 1,\
 5, 8077, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.U", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.U", 1,\
 1, 180, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.p", \
"Pressure of the fluid [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1,\
 5, 8031, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", 1,\
 5, 8077, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1, 5, 8031, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", 1, 5, 8077, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", 1,\
 5, 8077, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1, 5, 8032, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.T", \
"Temperature of the fluid [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", 1,\
 5, 8103, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.U", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.U", 1,\
 1, 181, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.p", \
"Pressure of the fluid [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1,\
 5, 8032, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", 1,\
 5, 8103, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1, 5, 8032, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", 1, 5, 8103, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", 1,\
 5, 8103, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.energyDynamics", \
"Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.massDynamics", \
"Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.traceDynamics", \
"Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.X_start[1]", \
"Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.initialize_p", \
"= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.prescribedHeatFlowRate",\
 "Set to true if the model has a prescribed heat flow at its heatPort. If the heat flow rate at the heatPort is only based on temperature difference, then set to false [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.use_C_flow", \
"Set to true to enable input connector for trace substance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.m_flow_nominal", \
"Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.m_flow_small", \
"Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal. Used only if model has two ports. [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.V", "Volume [m3]",\
 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[1].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[2].m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", \
"Port temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1, 5, 8033, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.T", \
"Temperature of the fluid [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", 1,\
 5, 8129, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.U", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.U", 1,\
 1, 182, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.p", \
"Pressure of the fluid [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.m", \
"Mass of the component [kg]", 7.526559036927582, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.rho_start", \
"Density, used to compute start and guess values [kg/m3|g/cm3]", 995.586, 0.0,\
1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.rho_default", \
"Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.state_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.state_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.useSteadyStateTwoPort",\
 "Flag, true if the model has two ports only and uses a steady state balance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,2563)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.hOut_internal", \
"Internal connector for leaving temperature of the component [J/kg]", \
"borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.QSen_flow.y", \
"Value of Real output [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1,\
 5, 8033, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.preTem.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", 1,\
 5, 8129, 1028)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.preTem.port.Q_flow",\
 "Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1, 5, 8033, 1156)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.preTem.T", "[K]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", 1, 5, 8129, 1024)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.portT.y", \
"Value of Real output [K]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", 1,\
 5, 8129, 1024)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.m_flow_small",\
 "Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 317, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.sta_default.T",\
 "Temperature of medium [K|degC]", 318, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro1.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.m_flow_small",\
 "Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 319, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.sta_default.T",\
 "Temperature of medium [K|degC]", 320, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro2.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.m_flow_small",\
 "Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 321, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.sta_default.T",\
 "Temperature of medium [K|degC]", 322, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro3.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.allowFlowReversal",\
 "= false to simplify equations, assuming, but not enforcing, no flow reversal [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_a.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_a.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_a.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_b.m_flow", \
"Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_b.p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.port_b.h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.m_flow_nominal",\
 "Nominal mass flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.m_flow_small",\
 "Small mass flow rate for regularization of zero flow [kg/s]", 1.3881578947368424E-005,\
 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.show_T", \
"= true, if actual temperature at port is computed [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.m_flow", \
"Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction) [kg/s]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.dp", \
"Pressure difference between port_a and port_b [Pa|Pa]", 0, 0.0,0.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4._m_flow_start",\
 "Start value for m_flow, used to avoid a warning if not set in m_flow, and to avoid m_flow.start in parameter window [kg/s]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4._dp_start", \
"Start value for dp, used to avoid a warning if not set in dp, and to avoid dp.start in parameter window [Pa|Pa]",\
 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.from_dp", \
"= true, use m_flow = f(dp) else dp = f(m_flow) [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.dp_nominal", \
"Pressure drop at nominal mass flow rate [Pa|Pa]", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.homotopyInitialization",\
 "= true, use homotopy method [:#(type=Boolean)]", true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.linearized", \
"= true, use linear relation between m_flow and dp for any flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.m_flow_turbulent",\
 "Turbulent flow if |m_flow| >= m_flow_turbulent [kg/s]", 0, 0.0,1E+100,0.0,0,513)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.sta_default.p",\
 "Absolute pressure of medium [Pa|bar]", 323, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.sta_default.T",\
 "Temperature of medium [K|degC]", 324, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.eta_default", \
"Dynamic viscosity, used to compute transition to turbulent flow regime [Pa.s]",\
 0.001, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.m_flow_nominal_pos",\
 "Absolute value of nominal flow rate [kg/s]", 0.13881578947368423, 0.0,0.0,0.0,\
0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.dp_nominal_pos",\
 "Absolute value of nominal pressure difference [Pa|Pa]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.deltaM", \
"Fraction of nominal mass flow rate where transition to turbulent occurs [1]", \
0.1, 0.01,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.k", \
"Flow coefficient, k=m_flow/sqrt(dp), with unit=(kg.m)^(1/2)", 0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.preDro4.computeFlowResistance",\
 "Flag to enable/disable computation of flow resistance [:#(type=Boolean)]", \
false, 0.0,0.0,0.0,0,2563)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta1_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 325, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta1_nominal.T", \
"Temperature of medium [K|degC]", 326, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.rho1_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta2_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 327, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta2_nominal.T", \
"Temperature of medium [K|degC]", 328, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.rho2_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta3_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 329, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta3_nominal.T", \
"Temperature of medium [K|degC]", 330, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.rho3_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta4_nominal.p", \
"Absolute pressure of medium [Pa|bar]", 331, 101325.0, 0.0,100000000.0,100000.0,\
0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.sta4_nominal.T", \
"Temperature of medium [K|degC]", 332, 293.15, 1.0,10000.0,300.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.rho4_nominal", \
"Density, used to compute fluid volume [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta1_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta1_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h1_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta2_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta2_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h2_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta3_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta3_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h3_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta4_start.p", \
"Absolute pressure of medium [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.sta4_start.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.h4_outflow_start", \
"Start value for outflowing enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1,\
 5, 8030, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1, 5, 8030, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.heatPort.T", 1,\
 5, 8051, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", -1, 5, 8030, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1,\
 5, 8031, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1, 5, 8031, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.heatPort.T", 1,\
 5, 8077, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", -1, 5, 8031, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1,\
 5, 8032, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1, 5, 8032, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.heatPort.T", 1,\
 5, 8103, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", -1, 5, 8032, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.Q_flow", \
"Heat flow rate from solid -> fluid [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1,\
 5, 8033, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.dT", \
"= solid.T - fluid.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.Rc", \
"Signal representing the convective thermal resistance in [K/W] [K/W]", 0.0, \
0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.solid.T", \
"Port temperature [K|degC]", 288.15, 0.0,1E+100,300.0,0,520)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.solid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1, 5, 8033, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.fluid.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.heatPort.T", 1,\
 5, 8129, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.fluid.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", -1, 5, 8033, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", -1,\
 5, 8030, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.solid.T", 1,\
 5, 8228, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", -1, 5, 8030, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1, 5, 8030, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg1.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.Q_flow", 1, 5, 8240, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", 1,\
 5, 7948, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.Q_flow", -1, 5, 8240, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb1.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", -1,\
 5, 8031, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.solid.T", 1,\
 5, 8231, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", -1, 5, 8031, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1, 5, 8031, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg2.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.Q_flow", 1, 5, 8245, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", 1,\
 5, 7948, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.Q_flow", -1, 5, 8245, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb2.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", -1,\
 5, 8032, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.solid.T", 1,\
 5, 8234, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", -1, 5, 8032, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1, 5, 8032, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg3.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.Q_flow", 1, 5, 8250, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", 1,\
 5, 7948, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.Q_flow", -1, 5, 8250, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb3.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", -1,\
 5, 8033, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.solid.T", 1,\
 5, 8237, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", -1, 5, 8033, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1, 5, 8033, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rpg4.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.Q_flow", 1, 5, 8255, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.port.T", 1,\
 5, 7948, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.Q_flow", -1, 5, 8255, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb4.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.Q_flow", 1, 5, 8258, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.Q_flow", -1, 5, 8258, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg11.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.Q_flow", 1, 5, 8261, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.Q_flow", -1, 5, 8261, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg21.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.Q_flow", 1, 5, 8264, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.Q_flow", -1, 5, 8264, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg12.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.Q_flow", 1, 5, 8267, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.Q_flow", -1, 5, 8267, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg22.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.Q_flow", 1, 5, 8270, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.Q_flow", -1, 5, 8270, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg14.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.Q_flow", 1, 5, 8273, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.Q_flow", -1, 5, 8273, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg24.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.Q_flow", 1, 5, 8276, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.Q_flow", -1, 5, 8276, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg13.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.Q_flow", \
"Heat flow rate from port_a -> port_b [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.dT", \
"port_a.T - port_b.T [K,]", 0.0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.port_a.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.port_a.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.Q_flow", 1, 5, 8279, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.port_b.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.port_b.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.Q_flow", -1, 5, 8279, 132)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg23.R", \
"Constant thermal resistance of material [K/W]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", \
"Temperature of element [K|degC]", 139, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.der(T)", 1,\
 6, 139, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.T", 1,\
 1, 139, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil1.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", \
"Temperature of element [K|degC]", 140, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.der(T)", 1,\
 6, 140, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.T", 1,\
 1, 140, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil2.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", \
"Temperature of element [K|degC]", 141, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.der(T)", 1,\
 6, 141, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.T", 1,\
 1, 141, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil3.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.C", \
"Heat capacity of element (= cp*m) [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", \
"Temperature of element [K|degC]", 142, 288.15, 0.0,1E+100,300.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.der(T)", \
"der(Temperature of element) [K/s]", 0, 0.0,0.0,0.0,0,512)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.der_T", \
"Time derivative of temperature (= der(T)) [K/s]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.der(T)", 1,\
 6, 142, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.port.T", \
"Port temperature [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.T", 1,\
 1, 142, 4)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.capFil4.port.Q_flow", \
"Heat flow rate (positive if flowing from outside into the component) [W]", 0.0,\
 0.0,0.0,0.0,0,776)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Co_fil", \
"Heat capacity of the whole filling material [J/K]", 0.0, 0.0,0.0,0.0,0,2561)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.cpMed", \
"Specific heat capacity of the fluid [J/(kg.K)]", 333, 4184, 0.0,0.0,0.0,0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.kMed", \
"Thermal conductivity of the fluid [W/(m.K)]", 334, 0.598, 0.0,0.0,0.0,0,2608)
DeclareParameter("borHolSer.borHol[1].borHolSeg[10].intHEX.mueMed", \
"Dynamic viscosity of the fluid [Pa.s]", 335, 0.001, 0.0,1E+100,0.0,0,2608)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.x", "", 0.0, 0.0,0.0,\
0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgb_val", "[K/W]", 0.0,\
 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg1_val", "[K/W]", \
0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.Rgg2_val", "[K/W]", \
0.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.RCondGro_val", "[K/W]",\
 0.0, 0.0,0.0,0.0,0,2561)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RVol1.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv1.Rc", 1,\
 5, 8227, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RVol2.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv2.Rc", 1,\
 5, 8230, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RVol3.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv3.Rc", 1,\
 5, 8233, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.RVol4.y", \
"Value of Real output [K/W]", "borHolSer.borHol[1].borHolSeg[10].intHEX.RConv4.Rc", 1,\
 5, 8236, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[1].intHEX.Q1_flow", 1, 5, 1332, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a1.h_outflow", 1,\
 5, 1084, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.U", 1,\
 1, 143, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.h_outflow", 1, 5, 1084, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a1.h_outflow", 1, 5, 1084, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a1.h_outflow", 1,\
 5, 1084, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.T", 1,\
 5, 8311, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 143, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[1].intHEX.Q2_flow", 1, 5, 1333, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a2.h_outflow", 1,\
 5, 1085, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.U", 1,\
 1, 144, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a2.h_outflow", 1, 5, 1085, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a2.h_outflow", 1, 5, 1085, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a2.h_outflow", 1,\
 5, 1085, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.T", 1,\
 5, 8351, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 144, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[1].intHEX.Q3_flow", 1, 5, 1334, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a3.h_outflow", 1,\
 5, 1087, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.U", 1,\
 1, 145, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.h_outflow", 1, 5, 1087, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a3.h_outflow", 1, 5, 1087, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a3.h_outflow", 1,\
 5, 1087, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.T", 1,\
 5, 8391, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 145, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[1].intHEX.Q4_flow", 1, 5, 1335, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a4.h_outflow", 1,\
 5, 1088, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.U", 1,\
 1, 146, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a4.h_outflow", 1, 5, 1088, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[1].port_a4.h_outflow", 1, 5, 1088, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[1].port_a4.h_outflow", 1,\
 5, 1088, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.T", 1,\
 5, 8431, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 146, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[1].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[2].intHEX.Q1_flow", 1, 5, 2078, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a1.h_outflow", 1,\
 5, 1831, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.U", 1,\
 1, 147, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a1.h_outflow", 1, 5, 1831, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a1.h_outflow", 1, 5, 1831, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a1.h_outflow", 1,\
 5, 1831, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.T", 1,\
 5, 8471, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 147, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[2].intHEX.Q2_flow", 1, 5, 2079, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a2.h_outflow", 1,\
 5, 1832, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.U", 1,\
 1, 148, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a2.h_outflow", 1, 5, 1832, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a2.h_outflow", 1, 5, 1832, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a2.h_outflow", 1,\
 5, 1832, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
EndNonAlias(5)
PreNonAliasNew(6)
StartNonAlias(6)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.T", 1,\
 5, 8511, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 148, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[2].intHEX.Q3_flow", 1, 5, 2080, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a3.h_outflow", 1,\
 5, 1833, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.U", 1,\
 1, 149, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a3.h_outflow", 1, 5, 1833, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a3.h_outflow", 1, 5, 1833, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a3.h_outflow", 1,\
 5, 1833, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.T", 1,\
 5, 8551, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 149, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[2].intHEX.Q4_flow", 1, 5, 2081, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a4.h_outflow", 1,\
 5, 1834, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.U", 1,\
 1, 150, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a4.h_outflow", 1, 5, 1834, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[2].port_a4.h_outflow", 1, 5, 1834, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[2].port_a4.h_outflow", 1,\
 5, 1834, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.T", 1,\
 5, 8591, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 150, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[2].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[3].intHEX.Q1_flow", 1, 5, 2822, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a1.h_outflow", 1,\
 5, 2575, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.U", 1,\
 1, 151, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a1.h_outflow", 1, 5, 2575, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a1.h_outflow", 1, 5, 2575, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a1.h_outflow", 1,\
 5, 2575, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.T", 1,\
 5, 8631, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 151, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[3].intHEX.Q2_flow", 1, 5, 2823, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a2.h_outflow", 1,\
 5, 2576, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.U", 1,\
 1, 152, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a2.h_outflow", 1, 5, 2576, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a2.h_outflow", 1, 5, 2576, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a2.h_outflow", 1,\
 5, 2576, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.T", 1,\
 5, 8671, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 152, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[3].intHEX.Q3_flow", 1, 5, 2824, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a3.h_outflow", 1,\
 5, 2577, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.U", 1,\
 1, 153, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a3.h_outflow", 1, 5, 2577, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a3.h_outflow", 1, 5, 2577, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a3.h_outflow", 1,\
 5, 2577, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.T", 1,\
 5, 8711, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 153, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[3].intHEX.Q4_flow", 1, 5, 2825, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a4.h_outflow", 1,\
 5, 2578, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.U", 1,\
 1, 154, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a4.h_outflow", 1, 5, 2578, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[3].port_a4.h_outflow", 1, 5, 2578, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[3].port_a4.h_outflow", 1,\
 5, 2578, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.T", 1,\
 5, 8751, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 154, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[3].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[4].intHEX.Q1_flow", 1, 5, 3566, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a1.h_outflow", 1,\
 5, 3319, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.U", 1,\
 1, 155, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a1.h_outflow", 1, 5, 3319, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a1.h_outflow", 1, 5, 3319, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a1.h_outflow", 1,\
 5, 3319, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.T", 1,\
 5, 8791, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 155, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[4].intHEX.Q2_flow", 1, 5, 3567, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a2.h_outflow", 1,\
 5, 3320, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.U", 1,\
 1, 156, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a2.h_outflow", 1, 5, 3320, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a2.h_outflow", 1, 5, 3320, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a2.h_outflow", 1,\
 5, 3320, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.T", 1,\
 5, 8831, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 156, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[4].intHEX.Q3_flow", 1, 5, 3568, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a3.h_outflow", 1,\
 5, 3321, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.U", 1,\
 1, 157, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a3.h_outflow", 1, 5, 3321, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a3.h_outflow", 1, 5, 3321, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a3.h_outflow", 1,\
 5, 3321, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.T", 1,\
 5, 8871, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 157, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[4].intHEX.Q4_flow", 1, 5, 3569, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a4.h_outflow", 1,\
 5, 3322, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.U", 1,\
 1, 158, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a4.h_outflow", 1, 5, 3322, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[4].port_a4.h_outflow", 1, 5, 3322, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[4].port_a4.h_outflow", 1,\
 5, 3322, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.T", 1,\
 5, 8911, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 158, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[4].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[5].intHEX.Q1_flow", 1, 5, 4310, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a1.h_outflow", 1,\
 5, 4063, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.U", 1,\
 1, 159, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a1.h_outflow", 1, 5, 4063, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a1.h_outflow", 1, 5, 4063, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a1.h_outflow", 1,\
 5, 4063, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.T", 1,\
 5, 8951, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 159, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[5].intHEX.Q2_flow", 1, 5, 4311, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a2.h_outflow", 1,\
 5, 4064, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.U", 1,\
 1, 160, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a2.h_outflow", 1, 5, 4064, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a2.h_outflow", 1, 5, 4064, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a2.h_outflow", 1,\
 5, 4064, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.T", 1,\
 5, 8991, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 160, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[5].intHEX.Q3_flow", 1, 5, 4312, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a3.h_outflow", 1,\
 5, 4065, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.U", 1,\
 1, 161, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a3.h_outflow", 1, 5, 4065, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a3.h_outflow", 1, 5, 4065, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a3.h_outflow", 1,\
 5, 4065, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9031, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 161, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[5].intHEX.Q4_flow", 1, 5, 4313, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a4.h_outflow", 1,\
 5, 4066, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.U", 1,\
 1, 162, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a4.h_outflow", 1, 5, 4066, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[5].port_a4.h_outflow", 1, 5, 4066, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[5].port_a4.h_outflow", 1,\
 5, 4066, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9071, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 162, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[5].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[6].intHEX.Q1_flow", 1, 5, 5054, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a1.h_outflow", 1,\
 5, 4807, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.U", 1,\
 1, 163, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a1.h_outflow", 1, 5, 4807, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a1.h_outflow", 1, 5, 4807, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a1.h_outflow", 1,\
 5, 4807, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.T", 1,\
 5, 9111, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 163, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[6].intHEX.Q2_flow", 1, 5, 5055, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a2.h_outflow", 1,\
 5, 4808, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.U", 1,\
 1, 164, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a2.h_outflow", 1, 5, 4808, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a2.h_outflow", 1, 5, 4808, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a2.h_outflow", 1,\
 5, 4808, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.T", 1,\
 5, 9151, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 164, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[6].intHEX.Q3_flow", 1, 5, 5056, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a3.h_outflow", 1,\
 5, 4809, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.U", 1,\
 1, 165, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a3.h_outflow", 1, 5, 4809, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a3.h_outflow", 1, 5, 4809, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a3.h_outflow", 1,\
 5, 4809, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9191, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 165, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[6].intHEX.Q4_flow", 1, 5, 5057, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a4.h_outflow", 1,\
 5, 4810, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.U", 1,\
 1, 166, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a4.h_outflow", 1, 5, 4810, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[6].port_a4.h_outflow", 1, 5, 4810, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[6].port_a4.h_outflow", 1,\
 5, 4810, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9231, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 166, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[6].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[7].intHEX.Q1_flow", 1, 5, 5798, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a1.h_outflow", 1,\
 5, 5551, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.U", 1,\
 1, 167, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a1.h_outflow", 1, 5, 5551, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a1.h_outflow", 1, 5, 5551, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a1.h_outflow", 1,\
 5, 5551, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.T", 1,\
 5, 9271, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 167, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[7].intHEX.Q2_flow", 1, 5, 5799, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a2.h_outflow", 1,\
 5, 5552, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.U", 1,\
 1, 168, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a2.h_outflow", 1, 5, 5552, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a2.h_outflow", 1, 5, 5552, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a2.h_outflow", 1,\
 5, 5552, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.T", 1,\
 5, 9311, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 168, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[7].intHEX.Q3_flow", 1, 5, 5800, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a3.h_outflow", 1,\
 5, 5553, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.U", 1,\
 1, 169, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a3.h_outflow", 1, 5, 5553, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a3.h_outflow", 1, 5, 5553, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a3.h_outflow", 1,\
 5, 5553, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9351, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 169, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[7].intHEX.Q4_flow", 1, 5, 5801, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a4.h_outflow", 1,\
 5, 5554, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.U", 1,\
 1, 170, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a4.h_outflow", 1, 5, 5554, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[7].port_a4.h_outflow", 1, 5, 5554, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[7].port_a4.h_outflow", 1,\
 5, 5554, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9391, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 170, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[7].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[8].intHEX.Q1_flow", 1, 5, 6542, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a1.h_outflow", 1,\
 5, 6295, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.U", 1,\
 1, 171, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a1.h_outflow", 1, 5, 6295, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a1.h_outflow", 1, 5, 6295, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a1.h_outflow", 1,\
 5, 6295, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.T", 1,\
 5, 9431, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 171, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[8].intHEX.Q2_flow", 1, 5, 6543, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a2.h_outflow", 1,\
 5, 6296, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.U", 1,\
 1, 172, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a2.h_outflow", 1, 5, 6296, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a2.h_outflow", 1, 5, 6296, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a2.h_outflow", 1,\
 5, 6296, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.T", 1,\
 5, 9471, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 172, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[8].intHEX.Q3_flow", 1, 5, 6544, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a3.h_outflow", 1,\
 5, 6297, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.U", 1,\
 1, 173, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a3.h_outflow", 1, 5, 6297, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a3.h_outflow", 1, 5, 6297, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a3.h_outflow", 1,\
 5, 6297, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9511, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 173, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[8].intHEX.Q4_flow", 1, 5, 6545, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a4.h_outflow", 1,\
 5, 6298, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.U", 1,\
 1, 174, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a4.h_outflow", 1, 5, 6298, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[8].port_a4.h_outflow", 1, 5, 6298, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[8].port_a4.h_outflow", 1,\
 5, 6298, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9551, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 174, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[8].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q1_flow", 1, 5, 7286, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1,\
 5, 7039, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.U", 1,\
 1, 175, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1, 5, 7039, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a1.h_outflow", 1,\
 5, 7039, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.T", 1,\
 5, 9591, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 175, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q2_flow", 1, 5, 7287, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1,\
 5, 7040, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.U", 1,\
 1, 176, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1, 5, 7040, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a2.h_outflow", 1,\
 5, 7040, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.T", 1,\
 5, 9631, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 176, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q3_flow", 1, 5, 7288, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1,\
 5, 7041, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.U", 1,\
 1, 177, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1, 5, 7041, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a3.h_outflow", 1,\
 5, 7041, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9671, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 177, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[9].intHEX.Q4_flow", 1, 5, 7289, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1,\
 5, 7042, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.U", 1,\
 1, 178, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[1].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[2].p", \
"Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1, 5, 7042, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[9].port_a4.h_outflow", 1,\
 5, 7042, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.d", \
"Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.T", \
"Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.u", \
"Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.R", \
"Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9711, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 178, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.der(U)", \
"der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[9].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q1_flow", 1, 5, 8030, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1,\
 5, 7783, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.U", 1,\
 1, 179, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1, 5, 7783, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a1.h_outflow", 1,\
 5, 7783, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.T", 1,\
 5, 9751, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.U", \
"Internal energy of fluid [J]", 179, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol1.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q2_flow", 1, 5, 8031, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1,\
 5, 7784, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.U", 1,\
 1, 180, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", -1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a1.m_flow", 1, 5, 1083, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1, 5, 7784, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a2.h_outflow", 1,\
 5, 7784, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.T", 1,\
 5, 9791, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.U", \
"Internal energy of fluid [J]", 180, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol2.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q3_flow", 1, 5, 8032, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1,\
 5, 7785, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.U", 1,\
 1, 181, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1, 5, 7785, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a3.h_outflow", 1,\
 5, 7785, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.T", 1,\
 5, 9831, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.U", \
"Internal energy of fluid [J]", 181, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol3.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.energyDynamics",\
 "Type of energy balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.massDynamics",\
 "Type of mass balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.substanceDynamics",\
 "Type of independent mass fraction balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.traceDynamics",\
 "Type of trace substance balance: dynamic (3 initialization options) or steady state [:#(type=Modelica.Fluid.Types.Dynamics)]",\
 1, 1.0,4.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.p_start", \
"Start value of pressure [Pa|bar]", 100000.0, 0.0,100000000.0,100000.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.T_start", \
"Start value of temperature [K|degC]", 288.15, 1.0,10000.0,300.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.X_start[1]",\
 "Start value of mass fractions m_i/m [kg/kg]", 0.0, 0.0,1.0,0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.mSenFac", \
"Factor for scaling the sensible thermal mass of the volume [1]", 1.0, 0.1,\
1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.initialize_p",\
 "= true to set up initial equations for pressure [:#(type=Boolean)]", false, \
0.0,0.0,0.0,0,1539)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.simplify_mWat_flow",\
 "Set to true to cause port_a.m_flow + port_b.m_flow = 0 even if mWat_flow is non-zero [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.nPorts", \
"Number of ports [:#(type=Integer)]", 2, 0.0,0.0,0.0,0,517)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.use_mWat_flow",\
 "Set to true to enable input connector for moisture mass flow rate [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.use_C_flow",\
 "Set to true to enable input connector for trace substance [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.Q_flow", \
"Sensible plus latent heat flow rate transferred into the medium [W]", \
"borHolSer.borHol[1].borHolSeg[10].intHEX.Q4_flow", 1, 5, 8033, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.hOut", \
"Leaving specific enthalpy of the component [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1,\
 5, 7786, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.UOut", \
"Internal energy of the component [J]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.U", 1,\
 1, 182, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.mOut", \
"Mass of the component [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[1].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", 1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[1].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[1].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[2].m_flow",\
 "Mass flow rate from the connection point into the component [kg/s]", \
"borHolSer.borHol[1].borHolSeg[1].port_a3.m_flow", -1, 5, 1086, 132)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[2].p",\
 "Thermodynamic pressure in the connection point [Pa|bar]", "sin.p", 1, 7, 6, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports[2].h_outflow",\
 "Specific thermodynamic enthalpy close to the connection point if m_flow < 0 [J/kg]",\
 "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1, 5, 7786, 4)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.p", \
"Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.h", \
"Specific enthalpy of medium [J/kg]", "borHolSer.borHol[1].borHolSeg[10].port_a4.h_outflow", 1,\
 5, 7786, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.d",\
 "Density of medium [kg/m3|g/cm3]", 995.586, 0.0,100000.0,1.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.T",\
 "Temperature of medium [K|degC]", 288.15, 1.0,10000.0,300.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.X[1]",\
 "Mass fractions (= (component mass)/total mass  m_i/m) [kg/kg]", 1.0, 0.0,1.0,\
0.1,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.u",\
 "Specific internal energy of medium [J/kg]", 0.0, -100000000.0,100000000.0,\
1000000.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.R",\
 "Gas constant (of mixture if applicable) [J/(kg.K)]", 0, 0.0,10000000.0,1000.0,\
0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.MM",\
 "Molar mass (of mixture or single fluid) [kg/mol]", 0.018015268, 0.001,0.25,\
0.032,0,513)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.state.p",\
 "Absolute pressure of medium [Pa|bar]", "sin.p", 1, 7, 6, 0)
DeclareAlias2("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.state.T",\
 "Temperature of medium [K|degC]", "borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.T", 1,\
 5, 9871, 0)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.preferredMediumStates",\
 "= true if StateSelect.prefer shall be used for the independent property variables of the medium [:#(type=Boolean)]",\
 false, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.standardOrderComponents",\
 "If true, and reducedX = true, the last element of X will be computed from the other ones [:#(type=Boolean)]",\
 true, 0.0,0.0,0.0,0,515)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.T_degC",\
 "Temperature of medium in [degC] [degC;]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.medium.p_bar",\
 "Absolute pressure of medium in [bar] [bar]", 0.0, 0.0,0.0,0.0,0,513)
DeclareState("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.U", \
"Internal energy of fluid [J]", 182, 472366.84515757504, 0.0,0.0,100000.0,0,560)
DeclareDerivative("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.der(U)",\
 "der(Internal energy of fluid) [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.m", \
"Mass of fluid [kg]", 7.526559036927582, 0.0,1E+100,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.der(m)", \
"der(Mass of fluid) [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.mb_flow", \
"Mass flows across boundaries [kg/s]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.Hb_flow", \
"Enthalpy flow across boundaries or energy source/sink [W]", 0.0, 0.0,0.0,0.0,0,512)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.fluidVolume",\
 "Volume [m3]", 0.007559928561598477, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.CSen", \
"Aditional heat capacity for implementing mFactor [J/K]", 0.0, 0.0,0.0,0.0,0,513)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports_H_flow[1]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.ports_H_flow[2]",\
 "[W]", 0.0, -100000000.0,100000000.0,1000.0,0,2560)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.cp_default",\
 "Heat capacity, to compute additional dry mass [J/(kg.K)]", 4184, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.rho_start",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.computeCSen",\
 "[:#(type=Boolean)]", false, 0.0,0.0,0.0,0,2563)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.state_default.p",\
 "Absolute pressure of medium [Pa|bar]", 101325.0, 0.0,100000000.0,100000.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.state_default.T",\
 "Temperature of medium [K|degC]", 293.15, 1.0,10000.0,300.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.rho_default",\
 "Density, used to compute fluid mass [kg/m3|g/cm3]", 995.586, 0.0,1E+100,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.hStart", \
"Start value for specific enthalpy [J/kg]", 62760.0, 0.0,0.0,0.0,0,2561)
DeclareVariable("borHolSer.borHol[1].borHolSeg[10].intHEX.vol4.dynBal.mWat_flow_internal",\
 "Needed to connect to conditional connector [kg/s]", 0, 0.0,0.0,0.0,0,2561)
EndNonAlias(6)
PreNonAliasNew(7)
