within INFRAX.Data.Parameters;
record NonGEOTABS "parameters for air system"
  extends Modelica.Icons.Record;


//FCUs
parameter Modelica.SIunits.MassFlowRate[22] mAirFCU_nominal = {
                                            550*6,
                                            550*2,
                                            550*2,
                                            550*2,
                                            550*5,
                                            550*7,
                                            245,
                                            245,
                                            550*3,
                                            550*3,
                                            550*3,
                                            245+550/2,
                                            245+550/2,
                                            245,
                                            550*3,
                                            550*4,
                                            550*3,
                                            550*4,
                                            550,
                                            550,
                                            550*3,
                                            245*2}*1.225/3600;
parameter Modelica.SIunits.HeatFlowRate[22] QFCUHea_nominal = {
                                            1823*6,
                                            406*2,
                                            422*2,
                                            790*2,
                                            524*5,
                                            1207*7,
                                            1e-3,
                                            1e-3,
                                            940*3,
                                            1639*3,
                                            1107*3,
                                            1e-3,
                                            1e-3,
                                            143,
                                            1317*3,
                                            480*4,
                                            1011*3,
                                            1573*4,
                                            2017,
                                            1800,
                                            516*3,
                                            717*2};


parameter Modelica.SIunits.HeatFlowRate[22] QFCUCoo_nominal = {
                                            1865*6,
                                            1183*2,
                                            1026*2,
                                            1502*2,
                                            1600*5,
                                            1827*7,
                                            535,
                                            535,
                                            1511*3,
                                            1397*3,
                                            1920*3,
                                            535+1632/2,
                                            535+1632/2,
                                            165,
                                            1851*3,
                                            1441*4,
                                            1775*3,
                                            1587*4,
                                            1e-3,
                                            1e-3,
                                            3*1861,
                                            586 + 622};           //missing hall 3*1861
                                                 //missing storage room 586+622

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end NonGEOTABS;
