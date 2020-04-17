within INFRAX.Data.Parameters;
record Str2ndFlr
  extends Modelica.Icons.Record;

  //OuterWalls and Windows
  parameter Modelica.SIunits.Height WindowHeight = 2.69;
  parameter Modelica.SIunits.Height Height2ndFlr = 2.95;
  parameter Modelica.SIunits.Area WindowA = WindowHeight*(0.025+0.08+0.29+0.08+0.055+0.765+0.065);
  parameter Modelica.SIunits.Area WindowB = WindowHeight*(0.025+0.08+0.735+0.08+0.06+0.315+0.07);
  parameter Modelica.SIunits.Area WindowC = WindowHeight*(0.065+1.23+0.065);
  parameter Modelica.SIunits.Area WindowD = WindowHeight*(0.065+0.73+0.065);
  parameter Modelica.SIunits.Area GlazingA = 0.29*(WindowHeight-0.12-0.12)+0.765*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingB = 0.735*(WindowHeight-0.08-0.105)+0.31*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingC = 1.23*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingD = 0.73*(WindowHeight-0.05-0.075);
  //    NorthZone
  parameter Modelica.SIunits.Length w_2ndFlr_NZ = 4.75+1.5 "north zone width, till meeting rooms";
  parameter Modelica.SIunits.Length l_2ndFlr_NZ = 5.15+0.3+7.8+0.3+5.15 "north zone length, north facade";
  parameter Modelica.SIunits.Volume Vol_2ndFlr_NZ = Height2ndFlr*w_2ndFlr_NZ*l_2ndFlr_NZ "north zone volume";
  parameter Modelica.SIunits.Area AWall_2ndFlr_NZ = Height2ndFlr*l_2ndFlr_NZ - AWindows_2ndFlr_NZ "north zone wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_2ndFlr_NZ = 7*WindowA;
  parameter Real FrameRatio_2ndFlr_NZ = 1-GlazingA/WindowA;
  //    SouthZone
  parameter Real azi_2ndFlr_SZ[4] = {INFRAX.Data.Orientations.N,INFRAX.Data.Orientations.E,
      INFRAX.Data.Orientations.S,INFRAX.Data.Orientations.W};
  parameter Real inc_2ndFlr_SZ[4] = {IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall,IDEAS.Types.Tilt.Wall};
  parameter Modelica.SIunits.Volume Vol_2ndFlr_SZ = Height2ndFlr*(11*2.65+1.35*3.2+6.8*(5.15+0.3+7.8+0.3+5.15+0.16+0.16)+11*(0.7+1.1+1.2+2.4+0.4+1.12+1.18+2.65)+1.1*(4.75+0.4));
  parameter Modelica.SIunits.Volume Vol_2ndFlr_SZ2 = Vol_2ndFlr_SZ + 3.2*(4.84+3.49)*Height2ndFlr;
  parameter Modelica.SIunits.Area AWall_2ndFlr_SZ[4] = Height2ndFlr*{1.9, 11, 32.3, 11+4.75+0.4} - AWindows_2ndFlr_SZ;
  parameter Modelica.SIunits.Area AWindows_2ndFlr_SZ[4] = {WindowD, 3*WindowC+WindowB, 5*(WindowC+WindowA)+WindowC, 2*(WindowC+WindowB)};
  parameter Modelica.SIunits.Area AGlazing_2ndFlr_SZ[4] = {GlazingD, 3*GlazingC+GlazingB, 5*(GlazingC+GlazingA)+GlazingC, 2*(GlazingC+GlazingB)};
  parameter Real FrameRatio_2ndFlr_SZ[4] = {1 - AGlazing_2ndFlr_SZ[1]/AWindows_2ndFlr_SZ[1], 1 - AGlazing_2ndFlr_SZ[2]/AWindows_2ndFlr_SZ[2],  1 - AGlazing_2ndFlr_SZ[3]/AWindows_2ndFlr_SZ[3], 1 - AGlazing_2ndFlr_SZ[4]/AWindows_2ndFlr_SZ[4]};

  //InnerWalls
  parameter Modelica.SIunits.Area AglassWall = 3.2*2*Height2ndFlr;
  parameter Modelica.SIunits.Area AinternalWalls[2] = Height2ndFlr*{4.84+3.49, 3.2*2};
  parameter Modelica.SIunits.Area Awall_NZSZ = Height2ndFlr*(4.84+3.49);

  //RectangularZones
  //    BathroomZone
  parameter Modelica.SIunits.Length l_2ndFlr_BRZ = 3.55;
  parameter Modelica.SIunits.Length w_2ndFlr_BRZ = 2.25+0.2+1.65+0.2;
  parameter Modelica.SIunits.Volume Vol_2ndFlr_BRZ = l_2ndFlr_BRZ*w_2ndFlr_BRZ*Height2ndFlr;
  //    MeetingRoom1
  parameter Modelica.SIunits.Length l_2ndFlr_MTR1 = 3.84;
  parameter Modelica.SIunits.Length w_2ndFlr_MTR1 = 3.2;
  parameter Modelica.SIunits.Volume Vol_2ndFlr_MTR1 = w_2ndFlr_MTR1*l_2ndFlr_MTR1*Height2ndFlr;
  parameter Modelica.SIunits.Area AWindows_2ndFlr_MTR1 = 2*1*Height2ndFlr;
  parameter Modelica.SIunits.Area AGlazing_2ndFlr_MTR1 = 2*0.9*(Height2ndFlr-0.1);
  parameter Real FrameRatio_2ndFlr_MTR1 = 1 - AGlazing_2ndFlr_MTR1/AWindows_2ndFlr_MTR1;
  //    MeetingRoom2
  parameter Modelica.SIunits.Length l_2ndFlr_MTR2 = 3.84;
  parameter Modelica.SIunits.Length w_2ndFlr_MTR2 = 3.2;
  parameter Modelica.SIunits.Volume Vol_2ndFlr_MTR2 = w_2ndFlr_MTR2*l_2ndFlr_MTR2*Height2ndFlr;
  parameter Modelica.SIunits.Area AWindows_2ndFlr_MTR2 = 2*1*Height2ndFlr;
  parameter Modelica.SIunits.Area AGlazing_2ndFlr_MTR2 = 2*0.9*(Height2ndFlr-0.1);
  parameter Real FrameRatio_2ndFlr_MTR2 = 1 - AGlazing_2ndFlr_MTR1/AWindows_2ndFlr_MTR1;
  //    CopyRooms
  parameter Modelica.SIunits.Length l_2ndFlr_CPR = 4.84+3.49;
  parameter Modelica.SIunits.Length w_2ndFlr_CPR = 3.2;
  parameter Modelica.SIunits.Volume Vol_2ndFlr_CPR = l_2ndFlr_CPR*w_2ndFlr_CPR*Height2ndFlr;

  parameter Modelica.SIunits.Volume Flr2nd_TotalVol = Vol_2ndFlr_BRZ+Vol_2ndFlr_CPR+Vol_2ndFlr_MTR1+Vol_2ndFlr_MTR2+Vol_2ndFlr_NZ+Vol_2ndFlr_SZ2;

  //Floor area
  parameter Modelica.SIunits.Area Atotal2ndFlr = l_2ndFlr_CPR*w_2ndFlr_CPR + l_2ndFlr_BRZ*w_2ndFlr_BRZ + l_2ndFlr_MTR1*w_2ndFlr_MTR1 + l_2ndFlr_MTR2*w_2ndFlr_MTR2 + Vol_2ndFlr_SZ/Height2ndFlr + Vol_2ndFlr_NZ/Height2ndFlr;
  parameter Modelica.SIunits.Area A_2ndFlr[6] = {Vol_2ndFlr_NZ/Height2ndFlr, Vol_2ndFlr_SZ/Height2ndFlr, l_2ndFlr_MTR1*w_2ndFlr_MTR1, l_2ndFlr_MTR2*w_2ndFlr_MTR2, l_2ndFlr_CPR*w_2ndFlr_CPR, l_2ndFlr_BRZ*w_2ndFlr_BRZ};
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Str2ndFlr;
