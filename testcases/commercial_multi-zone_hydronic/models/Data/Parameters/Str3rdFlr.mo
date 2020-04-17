within INFRAX.Data.Parameters;
record Str3rdFlr
  extends Modelica.Icons.Record;

  //OuterWalls and Windows
  parameter Modelica.SIunits.Height WindowHeight = 2.69;
  parameter Modelica.SIunits.Height Height3rdFlr = 2.95;
  parameter Modelica.SIunits.Angle inc_roof = 9.32*Modelica.Constants.pi/180;
  parameter Modelica.SIunits.Area WindowA = WindowHeight*(0.025+0.08+0.29+0.08+0.055+0.765+0.065);
  parameter Modelica.SIunits.Area WindowB = WindowHeight*(0.025+0.08+0.735+0.08+0.06+0.315+0.07);
  parameter Modelica.SIunits.Area WindowC = WindowHeight*(0.065+1.23+0.065);
  parameter Modelica.SIunits.Area WindowD = WindowHeight*(0.065+0.73+0.065);
  parameter Modelica.SIunits.Area GlazingA = 0.29*(WindowHeight-0.12-0.12)+0.765*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingB = 0.735*(WindowHeight-0.08-0.105)+0.31*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingC = 1.23*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingD = 0.73*(WindowHeight-0.05-0.075);

  //    SouthZone
  parameter Modelica.SIunits.Volume Vol_3rdFlr_SZ = Height3rdFlr*(11*32.3+(4.75+0.4)*1.1)+32.3*(11*1.77/2);
  parameter Modelica.SIunits.Area A_3rdFlr_SZ = (11*32.3+(4.75+0.4)*1.1);
  parameter Modelica.SIunits.Area AWall_3rdFlr_SZ[4] = {Height3rdFlr*1.9, Height3rdFlr*11+11*1.77/2, Height3rdFlr*32.3, Height3rdFlr*11+11*1.77/2+Height3rdFlr*(4.75+0.4)}-AWindows_3rdFlr_SZ;
  parameter Modelica.SIunits.Area AWindows_3rdFlr_SZ[4] = {WindowD, 3*WindowC+WindowB, 11*WindowB, 4*WindowB};
  parameter Modelica.SIunits.Area AGlazing_3rdFlr_SZ[4] = {GlazingD, 3*GlazingD+GlazingB, 11*GlazingB, 4*GlazingB};
  parameter Real FrameRatio_3rdFlr_SZ[4] = {1- AGlazing_3rdFlr_SZ[1]/AWindows_3rdFlr_SZ[1], 1- AGlazing_3rdFlr_SZ[2]/AWindows_3rdFlr_SZ[2], 1- AGlazing_3rdFlr_SZ[3]/AWindows_3rdFlr_SZ[3], 1- AGlazing_3rdFlr_SZ[4]/AWindows_3rdFlr_SZ[4]};
  parameter Modelica.SIunits.Angle azi_3rdFlr_SZ[4] = {INFRAX.Data.Orientations.N,
      INFRAX.Data.Orientations.E,INFRAX.Data.Orientations.S,INFRAX.Data.Orientations.W};
  parameter Modelica.SIunits.Angle inc_3rdFlr_SZ[4] = {IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall};
      //High level windows
  parameter Modelica.SIunits.Area AWindoiws_3rdFlr_HW = 32.2*0.8;
  parameter Real FrameRatio_3rdFlr_HW = 0.08;

  //RectangularZones
  //    SouthZone
  //parameter Modelica.SIunits.Length l_3rdFlr_SZ = 32.3;
  //parameter Modelica.SIunits.Length w_3rdFlr_SZ = 11;
  //    BathroomZone
  parameter Modelica.SIunits.Length l_3rdFlr_BRZ = 3.55;
  parameter Modelica.SIunits.Length w_3rdFlr_BRZ = 4.2+0.4;
  parameter Modelica.SIunits.Volume Vol_3rdFlr_BRZ = l_3rdFlr_BRZ*w_3rdFlr_BRZ*Height3rdFlr;
  //    CopyRoom
  parameter Modelica.SIunits.Length l_3rdFlr_CPR = 5.15;
  parameter Modelica.SIunits.Length w_3rdFlr_CPR = 4.2+0.4;
  parameter Modelica.SIunits.Volume Vol_3rdFlr_CPR = l_3rdFlr_CPR*w_3rdFlr_CPR*Height3rdFlr;
  parameter Modelica.SIunits.Area AWindows_3rdFlr_CPR = 2*WindowA;
  parameter Real FrameRatio_3rdFlr_CPR = 1 - GlazingA/WindowA;
  //    MeetingRoom
  parameter Modelica.SIunits.Length l_3rdFlr_MTR = 7.8;
  parameter Modelica.SIunits.Length w_3rdFlr_MTR = 5.0;
  parameter Modelica.SIunits.Volume Vol_3rdFlr_MTR = l_3rdFlr_MTR*w_3rdFlr_MTR*Height3rdFlr;
  parameter Modelica.SIunits.Area AWindows_3rdFlr_MTR = 3*WindowA;
  parameter Real FrameRatio_3rdFlr_MTR = 1 - GlazingA/WindowA;
  //    SmallRoom
  parameter Modelica.SIunits.Length l_3rdFlr_SmaR = 2.63;
  parameter Modelica.SIunits.Length w_3rdFlr_SmaR = 5.0;
  parameter Modelica.SIunits.Volume Vol_3rdFlr_SmaR = l_3rdFlr_SmaR*w_3rdFlr_SmaR*Height3rdFlr;
  parameter Modelica.SIunits.Area AWindows_3rdFlr_SmaR = WindowA;
  parameter Real FrameRatio_3rdFlr_SmaR = 1 - GlazingA/WindowA;
  //    StorageRoom
  parameter Modelica.SIunits.Length l_3rdFlr_StoR = 2.56;
  parameter Modelica.SIunits.Length w_3rdFlr_StoR = 5.0;
  parameter Modelica.SIunits.Volume Vol_3rdFlr_StoR = w_3rdFlr_StoR*l_3rdFlr_StoR*Height3rdFlr;
  parameter Modelica.SIunits.Area AWindows_3rdFlr_StoR = WindowA;
  parameter Real FrameRatio_3rdFlr_StoR = 1 - GlazingA/WindowA;

  parameter Modelica.SIunits.Volume Flr3rd_TotalVol = Vol_3rdFlr_BRZ+Vol_3rdFlr_CPR+Vol_3rdFlr_MTR+Vol_3rdFlr_SmaR+Vol_3rdFlr_StoR+Vol_3rdFlr_SZ;

  //Floor area
    //Floor area
  parameter Modelica.SIunits.Area Atotal3rdFlr = Vol_3rdFlr_SZ/Height3rdFlr + l_3rdFlr_BRZ*w_3rdFlr_BRZ + l_3rdFlr_CPR*w_3rdFlr_CPR + l_3rdFlr_MTR*w_3rdFlr_MTR + l_3rdFlr_SmaR*w_3rdFlr_SmaR + l_3rdFlr_StoR*w_3rdFlr_StoR;
  parameter Modelica.SIunits.Area A_3rdFlr[5] = {Vol_3rdFlr_SZ/Height3rdFlr, l_3rdFlr_BRZ*w_3rdFlr_BRZ, l_3rdFlr_CPR*w_3rdFlr_CPR, l_3rdFlr_MTR*w_3rdFlr_MTR, l_3rdFlr_SmaR*w_3rdFlr_SmaR + l_3rdFlr_StoR*w_3rdFlr_StoR};

  parameter Modelica.SIunits.Area CCA3rdFlr = Atotal3rdFlr - l_3rdFlr_BRZ*w_3rdFlr_BRZ;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Str3rdFlr;
