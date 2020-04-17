within INFRAX.Data.Parameters;
record Str1stFlr
  extends Modelica.Icons.Record;

  final constant Real pi=Modelica.Constants.pi;
  parameter Modelica.SIunits.Angle orientation = INFRAX.Data.Orientations.inc;
  parameter Modelica.SIunits.Height WindowHeight = 2.69;
  parameter Modelica.SIunits.Height WindowHeight1stFlr = 2.42;
  parameter Modelica.SIunits.Height Height1stFlr = 2.95;
  //Angle 71degree with HORIZONTAL

  //OuterWalls and Windows
  parameter Modelica.SIunits.Area WindowA = WindowHeight*(0.025+0.08+0.29+0.08+0.055+0.765+0.065);
  parameter Modelica.SIunits.Area WindowB = WindowHeight*(0.025+0.08+0.735+0.08+0.06+0.315+0.07);
  parameter Modelica.SIunits.Area WindowC = WindowHeight*(0.065+1.23+0.065);
  parameter Modelica.SIunits.Area WindowD = WindowHeight*(0.065+0.73+0.065);
  parameter Modelica.SIunits.Area WindowE = WindowHeight1stFlr*(0.07+2.15+0.12+0.08+0.56+0.105);
  parameter Modelica.SIunits.Area WindowF = WindowHeight1stFlr*(0.08+0.1+0.52);
  parameter Modelica.SIunits.Area WindowG = WindowHeight1stFlr*(0.06+0.88+0.08+0.08+0.74+0.1+0.08+2.15+0.08+0.12+0.74+0.1);
  parameter Modelica.SIunits.Area WindowH = WindowHeight*(5.7-0.8-0.41);
  parameter Modelica.SIunits.Area GlazingA = 0.29*(WindowHeight-0.12-0.12)+0.765*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingB = 0.735*(WindowHeight-0.08-0.105)+0.31*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingC = 1.23*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingD = 0.73*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingE = 2.15*(WindowHeight1stFlr-0.05-0.07)+0.56*(WindowHeight1stFlr-0.085-0.11);
  parameter Modelica.SIunits.Area GlazingF = 0.52*(WindowHeight1stFlr-0.075-0.08);
  parameter Modelica.SIunits.Area GlazingG = 2*0.74*(WindowHeight1stFlr-0.085-0.11)+0.88*(WindowHeight1stFlr-0.05-0.07)+2.15*(WindowHeight1stFlr-0.05-0.07);
  parameter Modelica.SIunits.Area GlazingH = (WindowHeight-0.05)*(5.7-0.8-0.41-0.11);

  parameter Modelica.SIunits.Area Roof1stFlr[2] = {Square(7.27+3.18+0.21)*sin(71*pi/180)*cos(71*pi/180)/2, ((5.4+0.3+1.2)*2.7*4+Square(0.55+4.8+0.95+0.84)*sin(71*pi/180)*cos(71*pi/180)/2)-1.2*2.7*3};
  //    NorthZone
  parameter Modelica.SIunits.Length w_1stFlr_NZ = 4.75+1.5 "north zone width, till meeting rooms";
  parameter Modelica.SIunits.Length l_1stFlr_NZ = 10.66+0.08*3+2.63*2+2.56 "north zone length, north facade";
  parameter Modelica.SIunits.Volume Vol_1stFlr_NZ = Height1stFlr*w_1stFlr_NZ*l_1stFlr_NZ "north zone volume";
  parameter Modelica.SIunits.Area AWall_1stFlr_NZ = Height1stFlr*l_1stFlr_NZ - AWindows_1stFlr_NZ "north zone wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_1stFlr_NZ = 7*WindowA;
  parameter Real FrameRatio_1stFlr_NZ = 1-GlazingA/WindowA;

  //    SouthZone1
  parameter Modelica.SIunits.Volume Vol_1stFlr_SZ1= Height1stFlr*((5.4+0.3+1.2)*2.7*4+1.2*2.7+(4.26+0.12+0.12)*1.36+(4.26+0.12*2)*((5.18+(5.3+4.75+0.4)/tan(71*pi/180))/2)) "south zone 1 volume";
  parameter Modelica.SIunits.Area AWall_1stFlr_SZ1[3] = Height1stFlr*{5.7, 2.7*6, 0.55+4.8+0.95+0.84+2/3*7.27} "south zone 1 wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_1stFlr_SZ1[3] = {WindowH, WindowC, WindowF + WindowG}; //windowC south, same height on east, east no frame
  parameter Real FrameRatio_1stFlr_SZ1[3] = {1-GlazingH/WindowH, 1-GlazingC/WindowC, 1-(GlazingF+GlazingG)/(WindowF+WindowG)};
  //frame window east: window west:

  //    SouthZone2
  parameter Modelica.SIunits.Volume Vol_1stFlr_SZ2= Height1stFlr*(24.11*6.8+1.35*3.2+2.65*(3.2+1.1)) "south zone 2 volume";
  parameter Modelica.SIunits.Area AWall_1stFlr_SZ2[2] = Height1stFlr*{6.85+3.2+1.1,27} "south zone 2 wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_1stFlr_SZ2[2] = {2*WindowC+2*WindowB, 4*WindowC+4*WindowA+WindowB}; //4WindowsB, 5windowA+4windowB
  parameter Modelica.SIunits.Area AGlazing_1stFlr_SZ2[2] = {2*GlazingC+2*GlazingB, 4*(GlazingC+GlazingA)+GlazingB};
  parameter Real FrameRatio_1stFlr_SZ2[2] = {1-AGlazing_1stFlr_SZ2[1]/AWindows_1stFlr_SZ2[1], 1-AGlazing_1stFlr_SZ2[2]/AWindows_1stFlr_SZ2[2]};

  //    hall
  parameter Modelica.SIunits.Volume Vol_1stFlr_hall= Height1stFlr*((0.3+0.7+1.1+1.2+2.4+0.4+1.12+1.18+2.65)*(5.3+0.8)+1.1*(4.75-0.4)+Square(5.3+4.75+0.4)/(2*tan(71*pi/180))) "hall volume";
  parameter Modelica.SIunits.Area AWall_1stFlr_hall[2] = Height1stFlr*{1.1+0.65, 7.27+3.18+0.21+(1.68+0.15)/cos(71*pi/180)} "hall wall area, excluding windows";
  parameter Modelica.SIunits.Area AWindows_1stFlr_hall[2] = {WindowD, WindowE};
  parameter Real FrameRatio_1stFlr_hall[2] = {1-GlazingD/WindowD, 1-GlazingE/WindowE};

  //InnerWalls
  parameter Modelica.SIunits.Area AinternalWallsNZ[2] = Height1stFlr*{0.08+2.51+0.3+2.51+0.08+2.56, 3*(4.75+0.4)};
  parameter Modelica.SIunits.Area AinternalWallsSZ2[2] = Height1stFlr*{3.49+4.84, 3.2*2};
  parameter Modelica.SIunits.Area AinternalWall_NZSZ2 = Height1stFlr*(3.49+4.84);
  parameter Modelica.SIunits.Area AinternalWall_hallSZ1 = Height1stFlr*5.18;

  //RectangularZones
  //    CopyRooms
  parameter Modelica.SIunits.Length l_1stFlr_CPR = 3.49+4.84;
  parameter Modelica.SIunits.Length w_1stFlr_CPR = 3.2;
  parameter Modelica.SIunits.Volume Vol_1stFlr_CPR = w_1stFlr_CPR*l_1stFlr_CPR*Height1stFlr;
  //    MeetingRoom1
  parameter Modelica.SIunits.Length l_1stFlr_MTR1 = 3.84;
  parameter Modelica.SIunits.Length w_1stFlr_MTR1 = 3.2;
  parameter Modelica.SIunits.Volume Vol_1stFlr_MTR1 = w_1stFlr_MTR1*l_1stFlr_MTR1*Height1stFlr;
  //    MeetingRoom2
  parameter Modelica.SIunits.Length l_1stFlr_MTR2 = 3.84;
  parameter Modelica.SIunits.Length w_1stFlr_MTR2 = 3.2;
  parameter Modelica.SIunits.Volume Vol_1stFlr_MTR2 = w_1stFlr_MTR2*l_1stFlr_MTR2*Height1stFlr;
  //    BathroomZone
  parameter Modelica.SIunits.Length l_1stFlr_BRZ = 3.55;
  parameter Modelica.SIunits.Length w_1stFlr_BRZ = 4.2+0.1;
  parameter Modelica.SIunits.Volume Vol_1stFlr_BRZ = l_1stFlr_BRZ*w_1stFlr_BRZ*Height1stFlr;

  //GlassHollow
  parameter Modelica.SIunits.Length l_1stFlr_GH = 6.75;
  parameter Modelica.SIunits.Length w_1stFlr_GH = 4.5;
  parameter Modelica.SIunits.Volume Vol_1stFlr_GH = l_1stFlr_GH*w_1stFlr_GH*Height1stFlr;

  parameter Modelica.SIunits.Volume Flr1st_TotalVol = Vol_1stFlr_BRZ+Vol_1stFlr_CPR+Vol_1stFlr_GH+Vol_1stFlr_hall+Vol_1stFlr_MTR1+Vol_1stFlr_MTR2+Vol_1stFlr_NZ+Vol_1stFlr_SZ1+Vol_1stFlr_SZ2;

  //Function Square declaration
  function Square
    input Real x;
    output Real y;
  algorithm
    y := x*x;
  end Square;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Str1stFlr;
