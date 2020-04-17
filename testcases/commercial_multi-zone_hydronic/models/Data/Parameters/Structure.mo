within INFRAX.Data.Parameters;
record Structure
  extends Modelica.Icons.Record;

  final constant Real pi=Modelica.Constants.pi;
  //Total building height
  parameter Modelica.SIunits.Height h = 15;

  //Windows
  parameter Modelica.SIunits.Height WindowHeight = 2.69;
  parameter Modelica.SIunits.Area WindowA = WindowHeight*(0.025+0.08+0.29+0.08+0.055+0.765+0.065);
  parameter Modelica.SIunits.Area WindowB = WindowHeight*(0.025+0.08+0.735+0.08+0.06+0.315+0.07);
  parameter Modelica.SIunits.Area WindowC = WindowHeight*(0.065+1.23+0.065);
  parameter Modelica.SIunits.Area WindowD = WindowHeight*(0.065+0.73+0.065);
  parameter Modelica.SIunits.Area GlazingA = 0.29*(WindowHeight-0.12-0.12)+0.765*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingB = 0.735*(WindowHeight-0.08-0.105)+0.31*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingC = 1.23*(WindowHeight-0.05-0.075);
  parameter Modelica.SIunits.Area GlazingD = 0.73*(WindowHeight-0.05-0.075);

  //Stairs areas
  parameter Modelica.SIunits.Area A_westStair = 4.8*4.85 "area of the western stairs";
  parameter Modelica.SIunits.Area A_eastStair = 5*2.55 "area of the eastern stairs";
  parameter Modelica.SIunits.Area AWindows_westStair = 3*WindowD + 2.1*2.04;
  parameter Modelica.SIunits.Area AWindows_eastStair = 1.8*(4.35+2.91);
  parameter Modelica.SIunits.Volume Vol_westStair = A_westStair*h;
  parameter Modelica.SIunits.Volume Vol_eastStair = A_eastStair*h;

  //Basement parameters (garage)
  parameter Modelica.SIunits.Height HeightFlr = 2.60;
  parameter Modelica.SIunits.Area A_Grg = 28.8*32.6+13.08*(32.6+5.7)/2;
  parameter Modelica.SIunits.Area A_Grg_OutRoof = 28.8*16.3+5.4*16.3/2 "area of the garage roof facing the exterior";
  parameter Modelica.SIunits.Area AWall_Grg_Soil = (13.08+5.7+28.8+32.6+28.8)*HeightFlr "wall of the basement in contact with the soil";
  parameter Modelica.SIunits.Area AWall_Grg_Out = 40.47*HeightFlr
                                                                 "wall of the basement facing the west outdoor";

  //koepels
  parameter Modelica.SIunits.Area A_stairs_koepel = 1.3*0.8;

  //Areas between floors (TABS loops)
  //   Floor 3 loops
  parameter Modelica.SIunits.Area A_3rdFlr_SZ = (11*32.3+(4.75+0.4)*1.1);
  parameter Modelica.SIunits.Area A_3rdFlr_CPR = 5.15*(4.2+0.4);
  parameter Modelica.SIunits.Area A_3rdFlr_MTR = 7.8*5.0;
  parameter Modelica.SIunits.Area A_3rdFlr_SmaR = 2.63*5.0;
  //   Floor 2 and 3
  parameter Modelica.SIunits.Area A_2NZ_3SZ = 1.25*(5.15+0.3+7.8+0.3+5.15);
  parameter Modelica.SIunits.Area A_2NZ_3CPR = 5.15*4.8;
  parameter Modelica.SIunits.Area A_2NZ_3MTR = 5*7.8;
  parameter Modelica.SIunits.Area A_2NZ_3SmaR = 2.63*5;
  parameter Modelica.SIunits.Area A_2NZ_3StoR = 5*2.56;
  parameter Modelica.SIunits.Area A_2SZ_3SZ = (4.6*1.9+(16.2-4.6)*10.75+18.85*6.75+1.35*3.294+2.65*4.347);
  parameter Modelica.SIunits.Area A_2MT1_3SZ = 3.84*3.2;
  parameter Modelica.SIunits.Area A_2MT2_3SZ = 3.84*3.2;
  parameter Modelica.SIunits.Area A_2CPR_3SZ = 3.2*(3.49+4.84);
  parameter Modelica.SIunits.Area A_2BRZ_3BRZ = 3.55*4.3;
  //    Floor 1 and 2
  parameter Modelica.SIunits.Area A_1NZ_2NZ = 18.7*(4.75+1.5) "same as area of NZ 1 and 2";
  parameter Modelica.SIunits.Area A_1SZ1_2SZ = 1.2*2.7*3 "width 1.2 length three times 2.7";
  parameter Modelica.SIunits.Area A_1SZ2_2SZ = 24.11*6.8+1.35*3.2+2.65*(3.2+1.1)+1.2*2.7 "same as total area of 1stFlr SZ2";
  parameter Modelica.SIunits.Area A_1MT1_2MT1 = 3.84*3.2  "same as area of MT1 in 1 and 2 floors";
  parameter Modelica.SIunits.Area A_1MT2_2MT2 = 3.84*3.2  "same as area of MT2 in 1 and 2 floors";
  parameter Modelica.SIunits.Area A_1BRZ_2BRZ = 3.55*4.3  "same as area of the bathrooms";
  parameter Modelica.SIunits.Area A_1HALL_2SZ = ((1.68+0.3+0.7+1.1+1.2+2.4+0.4+1.12+1.18+2.65)*(4.25+0.12+0.12+5.3+0.8)+1.1*(4.75-0.4)+(4.26+0.12+0.12)*1.36)
                                                                                                                                                             "same as hall area (str1stFlr) withouth the triangle part";
  //    Floor 0 and 2
  parameter Modelica.SIunits.Area A_hall_2SZ = 6.75*4.50 "glass hollow";

  //    Floor 1 external
  parameter Modelica.SIunits.Area A_Roof1stFlr_hall = Square(7.27+3.18+0.21)*sin(71*pi/180)*cos(71*pi/180)/2;
  parameter Modelica.SIunits.Area A_Roof1stFlr_SZ1 = ((5.4+0.3+1.2)*2.7*4+Square(0.55+4.8+0.95+0.84)*sin(71*pi/180)*cos(71*pi/180)/2)-1.2*2.7*3;

  //    Floor 0 and 1
  parameter Modelica.SIunits.Area A_hall_1SZ2 = 2.05*(4*2.7-3.84)+2.7*6.8;
  parameter Modelica.SIunits.Area A_hall_1hall = ((0.3+0.7+1.1+1.2+2.4+0.4+1.12+1.18+2.65)*(5.3+0.8)+1.1*(4.75-0.4)+Square(5.3+4.75+0.4)/(2*tan(71*pi/180))) "same as 1st Flr hall";
  parameter Modelica.SIunits.Area A_hall_1MT1 = 3.84*2.05;
  parameter Modelica.SIunits.Area A_hall_1SZ1 = ((5.4+0.3+1.2)*2.7*4+1.2*2.7+(4.26+0.12+0.12)*1.36+(4.26+0.12*2)*((5.18+(5.3+4.75+0.4)/tan(71*pi/180))/2))-5.24*3*2.7+2.7*5.24/2;
  parameter Modelica.SIunits.Area A_KT_1SZ2 = 2*2.7*2.7+2.7*(4*1.47+3*1.23+1.58)+9.05*2.7*3-3.84*3.2-5.23*(2.7-(2.55-(3.2-2.05)));
  parameter Modelica.SIunits.Area A_KT_1MT2 = 3.84*3.2 "same as total area of 1st Flr MT2";
  parameter Modelica.SIunits.Area A_KT_1NZ = 5.23*(2.7-(2.55-(3.2-2.05)));
  parameter Modelica.SIunits.Area A_SV_1SZ2 = 5.25*(2.55-(3.2-2.05));
  parameter Modelica.SIunits.Area A_SV_1NZ = 9.28*4.3 + 5.25*(7-4.3)-5.25*(2.55-(3.2-2.05));
  parameter Modelica.SIunits.Area A_Sto_1SZ2 = 3.9*(2.55-(3.2-2.05));
  parameter Modelica.SIunits.Area A_Sto_1NZ = 7.0*3.9+5.23*4.15-3.9*(2.55-(3.2-2.05));
  parameter Modelica.SIunits.Area A_MT1_1SZ1 = 5.24*3*2.7+2.7*5.24/2 "same as total area of Gnd Flr MT1";
  parameter Modelica.SIunits.Area A_MT2_1SZ2 = 4*2.7*6.75 "same as total area of GndFlr MT2";
  parameter Modelica.SIunits.Area A_FirstAid_1NZ1 = 3.84*(2.55-(3.2-2.05));
  parameter Modelica.SIunits.Area A_FirstAid_1MT1 = 3.84*(3.2-2.05);
  parameter Modelica.SIunits.Area A_BRZ_1BRZ = (2.30+2.35+0.15)*4.3;

  parameter Modelica.SIunits.Area A_2Flr_3Flr[8] = {A_2NZ_3SZ,  A_2SZ_3SZ, A_2MT1_3SZ, A_2MT2_3SZ, A_2BRZ_3BRZ, A_2NZ_3CPR, A_2NZ_3MTR, A_2NZ_3SmaR+A_2NZ_3StoR};
  parameter Modelica.SIunits.Area A_1Flr_2Flr[7] = {A_1NZ_2NZ, A_1SZ1_2SZ, A_1SZ2_2SZ, A_1MT1_2MT1, A_1MT2_2MT2, A_1BRZ_2BRZ, A_1HALL_2SZ};
  parameter Modelica.SIunits.Area A_GndFlr_1stFlr[16] = {A_hall_1SZ2, A_hall_1hall, A_hall_1MT1, A_hall_1SZ1, A_KT_1SZ2, A_KT_1MT2, A_KT_1NZ, A_SV_1SZ2, A_SV_1NZ, A_Sto_1SZ2, A_Sto_1NZ, A_MT1_1SZ1, A_MT2_1SZ2, A_FirstAid_1NZ1, A_FirstAid_1MT1, A_BRZ_1BRZ};

  //CCA Areas
  parameter Modelica.SIunits.Area CCA_Areas[35] = {A_3rdFlr_SZ, A_3rdFlr_CPR, A_3rdFlr_MTR, A_3rdFlr_SmaR,
                                                   A_2NZ_3SZ,  A_2SZ_3SZ, A_2MT1_3SZ, A_2MT2_3SZ, A_2NZ_3CPR, A_2NZ_3MTR, A_2NZ_3SmaR+A_2NZ_3StoR,
                                                   A_1NZ_2NZ, A_1SZ1_2SZ, A_1SZ2_2SZ, A_1MT1_2MT1, A_1MT2_2MT2, A_1HALL_2SZ, A_hall_2SZ, A_Roof1stFlr_hall, A_Roof1stFlr_SZ1,
                                                   A_hall_1SZ2, A_hall_1hall, A_hall_1MT1, A_hall_1SZ1, A_KT_1SZ2, A_KT_1MT2, A_KT_1NZ, A_SV_1SZ2, A_SV_1NZ, A_Sto_1SZ2, A_Sto_1NZ, A_MT1_1SZ1, A_MT2_1SZ2, A_FirstAid_1NZ1, A_FirstAid_1MT1};
  parameter Real CCA_paralel_circuits[35] = {46, 3, 5, 3,
                                             7, 43, 4, 4, 3, 5, 3,
                                            16, 4, 31, 4, 4, 10, 8, 12, 4,
                                             8, 9, 4, 6, 14, 4, 2, 2, 3, 2, 5, 6, 10, 2, 2};
  parameter Modelica.SIunits.Area total_CCA_Areas[4] = {sum(CCA_Areas[1:4]), sum(CCA_Areas[5:11]), sum(CCA_Areas[12:20]),sum(CCA_Areas[21:35])};
  parameter Real splitEmb_perFloor[35] = {A_3rdFlr_SZ/total_CCA_Areas[1], A_3rdFlr_CPR/total_CCA_Areas[1], A_3rdFlr_MTR/total_CCA_Areas[1], A_3rdFlr_SmaR/total_CCA_Areas[1],
                                 A_2NZ_3SZ/total_CCA_Areas[2],  A_2SZ_3SZ/total_CCA_Areas[2], A_2MT1_3SZ/total_CCA_Areas[2], A_2MT2_3SZ/total_CCA_Areas[2],
                                 A_2NZ_3CPR/total_CCA_Areas[2], A_2NZ_3MTR/total_CCA_Areas[2], (A_2NZ_3SmaR+A_2NZ_3StoR)/total_CCA_Areas[2],
                                 A_1NZ_2NZ/total_CCA_Areas[3], A_1SZ1_2SZ/total_CCA_Areas[3], A_1SZ2_2SZ/total_CCA_Areas[3], A_1MT1_2MT1/total_CCA_Areas[3],
                                 A_1MT2_2MT2/total_CCA_Areas[3], A_1HALL_2SZ/total_CCA_Areas[3], A_hall_2SZ/total_CCA_Areas[3], A_Roof1stFlr_hall/total_CCA_Areas[3], A_Roof1stFlr_SZ1/total_CCA_Areas[3],
                                 A_hall_1SZ2/total_CCA_Areas[4], A_hall_1hall/total_CCA_Areas[4], A_hall_1MT1/total_CCA_Areas[4], A_hall_1SZ1/total_CCA_Areas[4], A_KT_1SZ2/total_CCA_Areas[4],
                                 A_KT_1MT2/total_CCA_Areas[4], A_KT_1NZ/total_CCA_Areas[4], A_SV_1SZ2/total_CCA_Areas[4], A_SV_1NZ/total_CCA_Areas[4], A_Sto_1SZ2/total_CCA_Areas[4],
                                 A_Sto_1NZ/total_CCA_Areas[4], A_MT1_1SZ1/total_CCA_Areas[4], A_MT2_1SZ2/total_CCA_Areas[4], A_FirstAid_1NZ1/total_CCA_Areas[4], A_FirstAid_1MT1/total_CCA_Areas[4]};
  parameter Modelica.SIunits.Area totalCCA = sum(CCA_Areas);
  parameter Real splitEmb[35] = {A_3rdFlr_SZ/totalCCA,  A_3rdFlr_CPR/totalCCA,  A_3rdFlr_MTR/totalCCA,  A_3rdFlr_SmaR/totalCCA,
                                 A_2NZ_3SZ/totalCCA,   A_2SZ_3SZ/totalCCA,  A_2MT1_3SZ/totalCCA,  A_2MT2_3SZ/totalCCA,
                                 A_2NZ_3CPR/totalCCA,  A_2NZ_3MTR/totalCCA,  (A_2NZ_3SmaR+A_2NZ_3StoR)/totalCCA,
                                 A_1NZ_2NZ/totalCCA,  A_1SZ1_2SZ/totalCCA,  A_1SZ2_2SZ/totalCCA,  A_1MT1_2MT1/totalCCA,
                                 A_1MT2_2MT2/totalCCA,  A_1HALL_2SZ/totalCCA,  A_hall_2SZ/totalCCA,  A_Roof1stFlr_hall/totalCCA,  A_Roof1stFlr_SZ1/totalCCA,
                                 A_hall_1SZ2/totalCCA,  A_hall_1hall/totalCCA,  A_hall_1MT1/totalCCA,  A_hall_1SZ1/totalCCA,  A_KT_1SZ2/totalCCA,
                                 A_KT_1MT2/totalCCA,  A_KT_1NZ/totalCCA,  A_SV_1SZ2/totalCCA,  A_SV_1NZ/totalCCA,  A_Sto_1SZ2/totalCCA,
                                 A_Sto_1NZ/totalCCA,  A_MT1_1SZ1/totalCCA,  A_MT2_1SZ2/totalCCA,  A_FirstAid_1NZ1/totalCCA,  A_FirstAid_1MT1/totalCCA};
  //Function Square declaration
  function Square
    input Real x;
    output Real y;
  algorithm
    y := x*x;
  end Square;

   annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end Structure;
