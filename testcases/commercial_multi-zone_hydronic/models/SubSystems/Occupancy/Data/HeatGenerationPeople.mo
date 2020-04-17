within INFRAX.SubSystems.Occupancy.Data;
record HeatGenerationPeople "Based on ASHRAE Fundamentals 2013"
extends Modelica.Icons.Record;

parameter Modelica.SIunits.Area surfaceAreaBody= 1.8;

//HeatGeneration [W/person]
parameter Modelica.SIunits.Power  Sleeping= 41*surfaceAreaBody;
parameter Modelica.SIunits.Power  Reclining= 45*surfaceAreaBody;
parameter Modelica.SIunits.Power  SeatedQuiet= 60*surfaceAreaBody;
parameter Modelica.SIunits.Power  StandingRelaxed= 70*surfaceAreaBody;

parameter Modelica.SIunits.Power  Walking1=115*surfaceAreaBody "3.2 km/h (0.9 m/s)";
parameter Modelica.SIunits.Power  Walking2=150*surfaceAreaBody "4.3 km/h (1.2 m/s)";
parameter Modelica.SIunits.Power  Walking3=220*surfaceAreaBody "6.4 km/h (1.8 m/s)";

parameter Modelica.SIunits.Power  OfficeActivitiesReading= 55*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesWriting= 60*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesTyping= 65*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesFiling_seated=70*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesFiling_standing=80*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesWalking= 100*surfaceAreaBody;
parameter Modelica.SIunits.Power  OfficeActivitiesLifting= 120*surfaceAreaBody;

//Drving
parameter Modelica.SIunits.Power Car = 60*surfaceAreaBody "60 -115";

//Miscellaneous Occupational Activities
parameter Modelica.SIunits.Power Cooking = 100*surfaceAreaBody "95 -115";
parameter Modelica.SIunits.Power Housecleaning = 120*surfaceAreaBody "115-200";
parameter Modelica.SIunits.Power Seated = 130*surfaceAreaBody "heavy limb movement";
parameter Modelica.SIunits.Power MachineWork = 105*surfaceAreaBody;
parameter Modelica.SIunits.Power MachineWorkSawing = 105*surfaceAreaBody "table saw";
parameter Modelica.SIunits.Power MachineWorkLight = 120*surfaceAreaBody "electrical industry: 115-140";
parameter Modelica.SIunits.Power MachineWorkHeavy = 235*surfaceAreaBody;

//Miscellaneous Leisure Activities
parameter Modelica.SIunits.Power Dancing = 150*surfaceAreaBody "140-255";
parameter Modelica.SIunits.Power exercise=175*surfaceAreaBody "175-235";
parameter Modelica.SIunits.Power Tennis=210*surfaceAreaBody "210-270";
parameter Modelica.SIunits.Power Basketball = 290*surfaceAreaBody "290-440";
parameter Modelica.SIunits.Power Wrestling= 410*surfaceAreaBody "410-505";

 annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><pre>Activity</td>
<td>Activity Level [W/m&sup2;] </td>
<td>met[-] </td>
</tr>
<tr>
<td>Resting</td>
<td></td>
<td></td>
</tr>
<tr>
<td> 
Sleeping</td>
<td>40</td>
<td>0.7</td>
</tr>
<tr>
<td>Reclining</td>
<td>45</td>
<td>0.8</td>
</tr>
<tr>
<td>Seated, quiet</td>
<td>60</td>
<td>1</td>
</tr>
<tr>
<td>Standing, relaxed</td>
<td>70</td>
<td>1.2</td>
</tr>
<tr>
<td>Walking (on level surface)</td>
<td></td>
<td></td>
</tr>
<tr>
<td> 
3.2 km/h (0.9 m/s)</td>
<td>115</td>
<td>2</td>
</tr>
<tr>
<td>4.3 km/h (1.2 m/s)</td>
<td>150</td>
<td>2.6</td>
</tr>
<tr>
<td>6.4 km/h (1.8 m/s)</td>
<td>220</td>
<td>3.8</td>
</tr>
<tr>
<td>Office Activities</td>
<td></td>
<td></td>
</tr>
<tr>
<td> 
Reading, seated</td>
<td>55</td>
<td>1</td>
</tr>
<tr>
<td>Writing</td>
<td>60</td>
<td>1</td>
</tr>
<tr>
<td>Typing</td>
<td>65</td>
<td>1.1</td>
</tr>
<tr>
<td>Filing, seated</td>
<td>70</td>
<td>1.2</td>
</tr>
<tr>
<td>Filing, standing</td>
<td>80</td>
<td>1.4</td>
</tr>
<tr>
<td>Walking about</td>
<td>100</td>
<td>1.7</td>
</tr>
<tr>
<td>Lifting/packing</td>
<td>120</td>
<td>2.1</td>
</tr>
<tr>
<td>Miscellaneous Occupational Activities</td>
<td></td>
<td></td>
</tr>
<tr>
<td> 
Cooking</td>
<td>95 to 115</td>
<td>1.6 to 2.0</td>
</tr>
<tr>
<td>Housecleaning</td>
<td>115 to 200</td>
<td>2.0 to 3.4</td>
</tr>
<tr>
<td>Seated, heavy limb movement</td>
<td>130</td>
<td>2.2</td>
</tr>
<tr>
<td>Machine work</td>
<td>105</td>
<td>1.8</td>
</tr>
<tr>
<td>sawing (table saw)</td>
<td>115 to 140</td>
<td>2.0 to 2.4</td>
</tr>
<tr>
<td>light (electrical industry)</td>
<td>235</td>
<td>4</td>
</tr>
<tr>
<td>Handling 50 kg bags</td>
<td>235</td>
<td>4</td>
</tr>
<tr>
<td>Pick and shovel work</td>
<td>235 to 280</td>
<td>4.0 to 4.8</td>
</tr>
<tr>
<td>Miscellaneous Leisure Activities</td>
<td></td>
<td></td>
</tr>
<tr>
<td> 
Dancing, social</td>
<td>140 to 255</td>
<td>2.4 to 4.4</td>
</tr>
<tr>
<td>Calisthenics/exercise</td>
<td>175 to 235</td>
<td>3.0 to 4.0</td>
</tr>
<tr>
<td>Tennis, singles</td>
<td>210 to 270</td>
<td>3.6 to 4.0</td>
</tr>
<tr>
<td>Basketball, competitive</td>
<td>290 to 440</td>
<td>5.0 to 7.6</td>
</tr>
<tr>
<td>Wrestling, competitive</td>
<td>410 to 505</td>
<td>7.0 to 8.7</pre></td>
</tr>
</table>
</html>"));
end HeatGenerationPeople;
