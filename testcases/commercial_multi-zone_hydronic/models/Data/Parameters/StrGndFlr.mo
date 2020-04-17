within INFRAX.Data.Parameters;
record StrGndFlr
  extends Modelica.Icons.Record;

  final constant Real pi=Modelica.Constants.pi;
  parameter Modelica.SIunits.Angle orientation = INFRAX.Data.Orientations.inc;
  parameter Modelica.SIunits.Height WindowHeight = 3.25;
  parameter Modelica.SIunits.Height WindowGndHeight = 2.04;
  parameter Modelica.SIunits.Height HeightGndFlr = 3.5;
  //Angle 71degree with HORIZONTAL

  //OuterWalls and Windows
  parameter Modelica.SIunits.Area WindowA = WindowHeight*(0.025+0.08+0.29+0.08+0.055+0.765+0.065);
  parameter Modelica.SIunits.Area WindowB = WindowHeight*(0.025+0.08+0.735+0.08+0.06+0.315+0.07);
  parameter Modelica.SIunits.Area WindowC = WindowHeight*(0.065+1.23+0.065);
  parameter Modelica.SIunits.Area WindowD = WindowHeight*(0.065+0.73+0.065);
  parameter Modelica.SIunits.Area WindowF = WindowGndHeight*(0.08+0.1+0.52);
  parameter Modelica.SIunits.Area WindowG = WindowGndHeight*(0.06+0.88+0.08+0.08+0.74+0.1+0.08+2.15+0.08+0.12+0.74+0.1);
  parameter Modelica.SIunits.Area WindowH = WindowHeight*(5.7-0.8-0.41);
  parameter Modelica.SIunits.Area WindowI = WindowHeight*(0.05+0.97+0.05+1.6+0.05);
  parameter Modelica.SIunits.Area GlazingA = 0.29*(WindowHeight-0.12-0.12)+0.765*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingB = 0.735*(WindowHeight-0.08-0.105)+0.31*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingC = 1.23*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingD = 0.73*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingE = 2.15*(WindowGndHeight-0.05-0.07)+0.56*(WindowGndHeight-0.085-0.11);
  parameter Modelica.SIunits.Area GlazingF = 0.52*(WindowGndHeight-0.075-0.08);
  parameter Modelica.SIunits.Area GlazingG = 2*0.74*(WindowGndHeight-0.085-0.11)+0.88*(WindowGndHeight-0.05-0.07)+2.15*(WindowGndHeight-0.05-0.07);
  parameter Modelica.SIunits.Area GlazingH = (WindowHeight-0.05)*(5.7-0.8-0.41-0.11);
  parameter Modelica.SIunits.Area GlazingI = (WindowHeight-0.1)*(0.97+1.6);

  //    Kitchen Lunchroom
  parameter Modelica.SIunits.Volume Vol_GndFlr_KT = HeightGndFlr*A_GndFlr_KT "kitchenlunchroom volume";
  parameter Modelica.SIunits.Area A_GndFlr_KT = 2*2.7*2.7+2.7*(4*1.47+3*1.23+1.58)+9.05*2.7*3 "kitchenlunchroom area";
  parameter Modelica.SIunits.Area AWall_GndFlr_KT[2] = HeightGndFlr*{(3*1.23+1.58), (0.67+2.7)} "kitchen lunchroom wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_GndFlr_KT[2] = {3*WindowA+WindowC, 3*WindowI};
  parameter Real FrameRatio_GndFlr_KT[2] = {1-(3*GlazingA+GlazingC)/(3*WindowA+WindowC), 1-GlazingI/WindowI};
  //    Hall Reception
  parameter Modelica.SIunits.Volume Vol_GndFlr_HR = (A_GndFlr_HR - 6.75*4.50)*HeightGndFlr + 6.75*4.50*(HeightGndFlr+2.95+0.37+0.45+0.05) "hall and reception volume";
  parameter Modelica.SIunits.Area A_GndFlr_HR = 4*2.7*2.05+2*2.7*2.6+2.7*(0.45+1.22+1.18)+2.7*(0.55+0.33+1.02)+(4*2.7+2.11)*9.25+(0.34+0.15)*3.95+3.95*4.18*cos(71/180*pi)+(3.78+1.02)*(0.5+2.7/2)+(3.78+1.02)*2.7/4 "hall and reception area";
  parameter Modelica.SIunits.Area AWalls_GndFlr_HR= 9.25/sin(71*pi/180)*HeightGndFlr - AWindows_GndFlr_HR[2];
  parameter Modelica.SIunits.Area AWindows_GndFlr_HR[2] = {2.7*3, 3.18*WindowGndHeight+WindowD/WindowHeight}*WindowGndHeight "hall and reception window area";
  //parameter Real FrameRatio_GndFlr_HR "hall and reception frame ratio";
  //    Servers room
  parameter Modelica.SIunits.Volume Vol_GndFlr_SV = A_GndFlr_SV*HeightGndFlr "volume of server rooms";
  parameter Modelica.SIunits.Area A_GndFlr_SV = 9.28*4.3 + 5.25*(7-4.3) "server rooms area";
  parameter Modelica.SIunits.Area AWall_GndFlr_SV = 9.28*HeightGndFlr "server room wall area (no windows)";
  //    MeetingRoom1
  parameter Modelica.SIunits.Volume Vol_GndFlr_MT1 = A_GndFlr_MT1*HeightGndFlr;
  parameter Modelica.SIunits.Area A_GndFlr_MT1 = 5.24*3*2.7+2.7*5.24/2;
  parameter Modelica.SIunits.Area AWall_GndFlr_MT1[3] = {0.8, 5*2.7, 1.13}*HeightGndFlr;
  parameter Modelica.SIunits.Area AWindows_GndFlr_MT1[2] = {(5.24-0.8)*WindowHeight,4.8*WindowGndHeight};
  //    Storage room
  parameter Modelica.SIunits.Volume Vol_GndFlr_Sto = HeightGndFlr*A_GndFlr_Sto "volume of storage rooms";
  parameter Modelica.SIunits.Area A_GndFlr_Sto = 7.0*3.9+5.23*4.15 "area of storage rooms";
  parameter Modelica.SIunits.Area AWall_GndFlr_Sto = (3.9+5.23+0.15)*HeightGndFlr "storage rooms wall area (no windows)";

  //InnerWalls
  parameter Modelica.SIunits.Area AinternalWall_HRSV = HeightGndFlr*5.25;
  parameter Modelica.SIunits.Area AinternalWall_KTSto = 3*2.7*HeightGndFlr;
  parameter Modelica.SIunits.Area AinternalWall_SVSto = 7*HeightGndFlr;
  parameter Modelica.SIunits.Area AinternalWall_HRMT1 = 3*2.7*HeightGndFlr;
  parameter Modelica.SIunits.Area AinternalWall_kitchen_hallway = 2.5*HeightGndFlr;

  //RectangularZones
  //    MeetingRoom2
  parameter Modelica.SIunits.Length l_GndFlr_MT2 = 4*2.7;
  parameter Modelica.SIunits.Length w_GndFlr_MT2 = 6.75;
  parameter Modelica.SIunits.Volume Vol_GndFlr_MT2 = l_GndFlr_MT2*w_GndFlr_MT2*HeightGndFlr;
  parameter Modelica.SIunits.Area AWindows_GndFlr_MT2 = 4*2.7-2*1*HeightGndFlr;
  //    FirstAid Room
  parameter Modelica.SIunits.Length l_GndFlr_1stAid = 3.90;
  parameter Modelica.SIunits.Length w_GndFlr_1stAid = 2.55;
  parameter Modelica.SIunits.Volume Vol_GndFlr_1stAid = l_GndFlr_1stAid*w_GndFlr_1stAid*HeightGndFlr;
  //    BathroomZone
  parameter Modelica.SIunits.Length l_GndFlr_BRZ = 2.30+2.35+0.15;
  parameter Modelica.SIunits.Length w_GndFlr_BRZ = 4.3;
  parameter Modelica.SIunits.Volume Vol_GndFlr_BRZ = w_GndFlr_BRZ*l_GndFlr_BRZ*HeightGndFlr;

  parameter Modelica.SIunits.Volume FlrGnd_TotalVol = Vol_GndFlr_1stAid+Vol_GndFlr_BRZ+Vol_GndFlr_HR+Vol_GndFlr_KT+Vol_GndFlr_MT1+Vol_GndFlr_MT2+Vol_GndFlr_Sto+Vol_GndFlr_SV;

  //    Areas
  parameter Modelica.SIunits.Area Areas_GndFlr[8] = {A_GndFlr_HR, A_GndFlr_MT1, l_GndFlr_MT2*w_GndFlr_MT2, A_GndFlr_KT, A_GndFlr_SV, l_GndFlr_1stAid*w_GndFlr_1stAid, l_GndFlr_BRZ*w_GndFlr_BRZ,A_GndFlr_Sto};

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end StrGndFlr;
