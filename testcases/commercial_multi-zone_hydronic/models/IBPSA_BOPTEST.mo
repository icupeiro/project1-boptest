within INFRAX;
model IBPSA_BOPTEST
  extends Main(redeclare SubSystems.VentilationSystem.VentilationSystemSim
      venSys, redeclare SubSystems.BuildingEnvelope.EnvelopeSim buiEnv,
    buiOcc(startYear=2010, startDay=5),
    redeclare SubSystems.HeatingSystem.HeatingSystemBOPTEST heaSys);
  annotation (
    experiment(
      StopTime=31536000,
      Interval=1800,
      Tolerance=1e-06,
      __Dymola_fixedstepsize=15,
      __Dymola_Algorithm="Euler"),
    __Dymola_experimentSetupOutput(events=false),
    __Dymola_experimentFlags(Advanced(
        InlineMethod=0,
        InlineOrder=2,
        InlineFixedStep=0.001)),
    Documentation(info="<html>
General model description.
<h3>Building Design and Use</h3>
<h4>Architecture</h4>
<p>
The Infrax building is a 2232 m&sup2; conditioned space four-story office building 
located in Dilbeek, Brussels, Belgium. This office building contains open-plan offices, cellular 
offices and meeting rooms. The building envelope model is composed of 27 zones, of which 
21 are conditioned. The 1<sup>st</sup>, 2<sup>nd</sup> and 3<sup>rd</sup> floors are mainly 
open offices and separate zones exist for the north and south spaces, the individual meeting 
rooms and the bathrooms (which are not conditioned). The ground floor includes individual 
conference rooms and several facilities (first aid room, canteen, storage and server rooms).
The zoning strategy of the building is done according to the air distribution design of the building 
and it can be seen in the plan below. 
</p>
<p>
The access to the building is through the ground floor hall. 
The main activity of the ground floor occurs in the two big conference rooms and the 
canteen, which have a better fine-tuning control with dedicated VAV boxes. Most of the 
other spaces in the ground floor are normally empty. Two rooms are lumped together 
within the storage room. The server room has a dedicated cooling server unit which is 
not modeled as in reality it is not being used.
<br />
Within the first floor, there is an empty glazing space from where the ground floor 
can be observed.
The first floor north zone is lumping three small individual offices which share 
the same ventilation duct, therefore it is not possible to individually control them.
<br />
The second floor and third floors are smaller.  
Access to the outside is possible in the second floor through the roof on the first floor.
In the third floor, a small storage room is lumped into the individual small room and the 
two rooms which include the copy machines are also lumped.
</p>
<p align=\"center\">
<img  alt=\"image\" src=\"modelica://INFRAX/Resources/svg/building_architecture.png\" border=\"1\"/>
</p>
<h4>Constructions</h4>
<p>
The U-values for the outer walls and roof are between 0.18-0.25 and 0.14-0.15 W/(m&sup2;.K) 
respectively. The windows have double glazing with a U-value of 1.0 W/(m&sup2;.K) and 
g-values between 0.45-0.49. The air-tightness of the building is measured with a n<sub>50</sub> 
value of 1.3 ACH. 
<ul>
<li>
Outer walls: 2.2cm Fiberboard + 18cm Glasswool + 20cm Sandstone + 1.5cm Gypsum
</li>
<li>
Roof: 6cm Grind + 16cm PIR + 27-33cm Concrete (depending on side) + 1cm Gypsum
</li>
<li>
Roof 1st floor: 2cm Perliet + 14cm PIR + 37cm Concrete + 1cm Gypsum
</li>
<li>
Floor ground floor: 2cm Woodwool + 8cm PIR + 32cm Holed Concrete + 5cm Screed + 55cm Air + 3.8cm Silicate + 1.2cm Tile
</li>
<li>
Floor other floors: 37cm Concrete + 45cm Air + 3cm Board
</li>
<li>
Slab on basement: 35cm Concrete + 10cm Screed
</li>
</ul>
</p>
<h4>Occupancy schedules</h4>
<p>
The occupancy schedules are calculated based on historical CO<sub>2</sub> data.
The source tables include the number of occupants per hour for one complete week, 
then the table is repeated indefinitely. 
The source tables differentiate between the canteen, the ground floor conference rooms,
the meeting rooms at the different floors and the open-space offices.
The model also includes a holiday schedule for which there is no occupants.  
The model assumes a constant-segment interpolation between the different hourly 
occupancy values.
</p>
<h4>Internal loads and schedules</h4>
<p>
Based on the number of occupants described before, the IDEAS zone model can compute 
their heat gains radiative-convective contribution depending on the activity performed 
(office work in this case). The model can also compute the amount of CO<sub>2</sub> 
exhaled by each occupant to the zone air model.
</p>
<p>
The model uses the lighting feature integrated within the IDEAS zone model.
Based on the room type lighting requirements and the luminous efficacy, 
the lighting internal gains are computed and distributed between radiative and convective heat. 
Zone lighting is assumed to be on whenever there is at least one occupant within the zone.
</p>
<p>
The model also includes a appliances sub-component, based on ASHRAE appliances data 
(see tables in Chapter 29: Residential Cooling and Heating Load Calculations -- 
Appliances Section of ASHRAE Fundamentals Handbook).
The appliances are all assumed to have a 30%-70% radiative-convective heating load split.
The appliances include monitors, laptops, copy machines, printers, coffee machines, water coolers 
and several microwaves and soup heaters in the canteen.
For the computer appliances at the office zones, they are assummed to be on/idle depending 
on the current number of occupants of the zone.
</p>
<h4>Climate data</h4>
<p>
Climate data corresponds to a TMY file measured in Uccle, Belgium. 
</p>
<h3>HVAC System Design</h3>
<h4>Primary and secondary system designs</h4>
<p>
The supply heating system is composed of 2 ground source heat pumps.
The source-side of the heat pumps is connected to an array of vertical ground heat exchangers. 
The sink-side of the heat pumps is connected to a water storage tank and to the manifold, 
from where heat is distributed to multiple emission loops. 
Cooling is provided by means of two heat exchangers connected to the vertical ground heat exchanger 
array and to a cooling tower. 
</p>
<p>
The emission system of the building is hybrid, with TABS as the slow-reacting system which 
provides the main load. To provide a fast-reacting peak load, the system relies on conditioning the 
air from the air handling unit (AHU). 
<br />
The AHU takes and conditions the air from outside and distributes it to the different building zones 
through the ventilation ducts. Within the ducts there exist VAV boxes and small re-heating coils for 
the fine-tuning of the building. Nevertheless, not all zone ducts are equipped with the VAV boxes.
</p>
<p>
From the heating manifold, the building can supply heat to the TABS and the heating coils located 
within the AHU and the ventilation ducts. The manifold is also connected to the cooling tower in case 
heat needs to be dissipated.
<br />
The two cooling heat exchangers can remove heat from the TABS and the AHU respectively.
One of the two cooling heat exchangers is also connected to a server cooling unit, but 
this feature is not modeled since it is offline in the building.
</p>
<p align=\"center\">
<img  alt=\"image\" src=\"modelica://INFRAX/Resources/svg/hydraulic.png\" border=\"1\"/>
</p>
<h4>Equipment specifications and performance maps</h4>
<p>
The ground source heat pumps correspond to the brand DYNACIAT model 200LG/LGP of 70 kW<sub>th</sub> each 
and a nominal COP of 5.4.
The heat pump works with refrigerant R410A.
Each heat pump has a two-stage compressor that allows to modulate the system capacity.
On the sink side, the system media is water, while in the source side a 30% proylene glycol-water mixture is used.
</p>
<p>
The ground heat exchanger is composed of an array of 37 vertical boreholes with double-U configuration.
The ground composition is mainly sandstone with an average conductivity of 1.4 W/(m.K). 
</p>
<p>
Concrete core activation (CCA) pipes of TABS are made of PEX 20x2.3 mm and they are placed 6 cm from the ceiling surface.
</p>
<p>
The volume of the storage tank is 2.5 m&sup3;
</p>
<p>
The cooling tower is a Balticare model VFL 242-HX whose capacity is 150 kW<sub>th</sub> and a variable-speed fan.
</p>
<p>
The AHU is a centralized double flux mechanical ventilation unit with heat recovery and free cooling bypass.
The AHU fans are controlled by providing a prescribed pressure difference between the inlet and the outlet of the unit.
The nominal supply air flow is 10000 m&sup3;/h while the nominal extract air flow is 8850 m&sup3;/h. An air flow of 1150 m&sup3;/h 
is evacuated through the toilet extraction system.
It is important to note that the heat recovery unit is placed between the heating coil (inlet) and the cooling coil (outlet).
</p>
<p>
The nominal powers of the different heat exchangers are: 
<ul>
<li>
TABS passive cooling exchanger: 90 kW<sub>th</sub>.
</li>
<li>
Air cooling exchanger (includes server units): 106 kW<sub>th</sub>.
</li>
<li>
AHU cooling coil: 59.3 kW<sub>th</sub>.
</li>
<li>
AHU heating coil: 34 kW<sub>th</sub>.
</li>
<li>
Ventilation ducts heating coils (sum): 45.4 kW<sub>th</sub>.
</li>
<li>
Cooling tower dissipation exchanger: 150 kW<sub>th</sub>.
</li>
</ul>
</p>
<p>
The circulation pumps correspond to the WILO brand. The models are as follow:
<ul>
<li>
P1/P2 Borefield pumps: IP-E 50/150-4/2 | 38 m&sup3;/h nominal flow | speed controlled
</li>
<li>
P3 Heat pump condenser pump: Stratos 65/1-12 CAN PN 6/10 | 24 m&sup3;/h nominal flow | pressure difference controlled
</li>
<li>
P4 Air+server cooling pump: Stratos 80/1-12 CAN PN 6 | 28.3 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P5 TABS cooling pump: Stratos 65/1-12 CAN PN 6/10 | 21 m&sup3;/h nominal flow | speed controlled
</li>
<li>
P6 Ventilation duct heating coils pump: Stratos 40/1-12 CAN PN 6/10 | 9.8 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P7 TABS pump: IP-E 40/130-2,2/2 | 19.4 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P8 AHU secondary heating coil pump: Stratos 30/1-12 CAN PN 10 | 7.3 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P9 AHU primary heating coil pump: IP-E 32/160-1,1/2 | 7.95 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P10 Cooling tower heating pump: Stratos 65/1-12 CAN PN 6/10 | 24 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P11 Cooling tower cooling pump: Stratos 80/1-12 CAN PN 6 | 30 m&sup3;/h nominal flow | on/off controlled
</li>
<li>
P13 AHU cooling coil pump: IP-E 40/120-1,5/2 | 17 m&sup3;/h nominal flow | pressure drop controlled
</li>
<li>
P12/P14 Server unit cooling pump (not modelled): IP-E 32/160-1,1/2 | 5.73 m&sup3;/h nominal flow
</li>
</ul>
</p>
<p>
The air distribution ducts can be observed in the building schematic. The nominal air flows per zone are as follow:
<br /><br />
Floor 0:
<ul>
<li>
Hall: CAV | Supply 600 m&sup3;/h / Extract 250 m&sup3;/h
</li>
<li>
Server local room: CAV | Supply 100 m&sup3;/h / Extract 100 m&sup3;/h
</li>
<li>
First aid room: CAV | Supply 50 m&sup3;/h / Extract 50 m&sup3;/h
</li>
<li>
Canteen: VAV | Supply Min/Max 200/3200 m&sup3;/h / Extract Min/Max 0/3000 m&sup3;/h
</li>
<li>
Conference room 1: VAV | Supply Min/Max 0/1600 m&sup3;/h / Extract Min/Max 0/1600 m&sup3;/h
</li>
<li>
Conference room 2: VAV | Supply Min/Max 0/900 m&sup3;/h / Extract Min/Max 0/900 m&sup3;/h
</li>
<li>
Storage room: CAV | Extract 250 m&sup3;/h
</li>
<li>
Western stair block: CAV | Supply 90 m&sup3;/h / Extract 90 m&sup3;/h
</li>
<li>
Eastern stair block: CAV | Supply 70 m&sup3;/h / Extract 70 m&sup3;/h
</li>
<li>
Toilet: CAV | Extract 300 m&sup3;/h
</li>
</ul>
<br />
Floor 1:
<br />
<ul>
<li>
North zone: VAV | Supply Min/Max 0/550 m&sup3;/h / Extract Min/Max 0/550 m&sup3;/h
</li>
<li>
South zone 1: VAV | Supply Min/Max 0/400 m&sup3;/h 
</li>
<li>
South zone 2: VAV | Supply Min/Max 650/800 m&sup3;/h / Extract Min/Max 300/800 m&sup3;/h
</li>
<li>
Meeting room 1: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h
</li>
<li>
Meeting room 2: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h
</li>
<li>
Storage room: CAV | Extract 50 m&sup3;/h
</li>
<li>
Toilet: CAV | Extract 350 m&sup3;/h
</li>
</ul>
<br />
Floor 2:
<br />
<ul>
<li>
North zone: VAV | Supply Min/Max 0/350 m&sup3;/h / Extract Min/Max 0/350 m&sup3;/h
</li>
<li>
South zone: VAV | Supply Min/Max 550/1400 m&sup3;/h / Extract Min/Max 300/1150 m&sup3;/h
</li>
<li>
Meeting room 1: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h
</li>
<li>
Meeting room 2: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h
</li>
<li>
Toilet: CAV | Extract 250 m&sup3;/h
</li>
</ul>
<br />
Floor 3:
<br />
<ul>
<li>
South zone: VAV | Supply Min/Max 650/1600 m&sup3;/h / Extract Min/Max 0/950 m&sup3;/h
</li>
<li>
Copy machine room: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h + 200 m&sup3;/h CAV
</li>
<li>
Meeting room: CAV | Supply 150 m&sup3;/h / Extract 150 m&sup3;/h
</li>
<li>
Individual small office room: VAV | Supply Min/Max 0/300 m&sup3;/h / Extract Min/Max 0/300 m&sup3;/h + 200 m&sup3;/h CAV
</li>
<li>
Toilet: CAV | Extract 250 m&sup3;/h
</li>
</ul>
</p>
<h4>Rule-based or local-loop controllers (if included)</h4>
<p>
The building control of the office establishes an independent work schedule between the TABS primary system and 
the fast-reacting secondary system. Whereas the TABS system works according to the building climate mode, the 
secondary system is dominated by the individual demand of each zone. A base set-point for the building is calculated 
as the average of the comfort bounds determined by the RMOT. The comfort bounds also include a night set-back of 5 K.
</p>
<p>
The building can operate in 3 different climate modes: heating, cooling or neutral. Climate mode switch evaluation occurs 
once per day at 18h00. A switch would be effective based on the RMOT at that time. If the RMOT is higher/lower than a 
established transition temperature, the building will switch its mode.
<br />
Climate Mode switching can occur between Heating-Neutral and Cooling-Neutral modes, but NOT between Heating-Cooling modes 
(dead-band principle). In order to switch between Heating-Cooling, the building must spend at least one day in the Neutral mode.
<br />
Climate mode determines the TABS control behavior 
<p>
</p>
During heating mode, water supply temperature is computed following a heating curve based on a 3-point RMOT and achieved 
through mixing with a 3-way valve controlled by a PI-controller. For each floor, TABS mass flow rate is regulated with a two-way 
valve controlled by a PI-controller as a function of the TABS temperature difference set-point in the floor. The TABS temperature 
difference set-point in the floor is computed from the temperature difference between the base set-point and the current floor average.
<br />
During cooling mode, water supply temperature is also calculated from a cooling corve based on a 3-point RMOT. 
However, this temperature is achieved by modulating pump P05 in the passive cooling heat exchanger. The water supply temperature set-point 
is subjected to a compensation factor and ceiling condensing protection afterwards. The mass flow rate control is analog to the heating mode.
<br />
In neutral mode, the TABS loop is continuously working in closed-loop and the two-way valves are 20% opened.
</p>
<p>
The building secondary system is air-based and it is dependent on the individual demands of each zone. 
The ventilation system is working on weekdays from 7h00 to 18h00, with a flush feature from 6h00 to 7h00, i.e. ventilation is 
working at 100% for that hour.
<br />
The AHU fans work to keep a constant pressure difference between its inlet and outlet pressure. 
The AHU supply air temperature set-point is computed based on the instant outdoor temperature 
to provide a temperature between 16-19 degC. The air can be by-passed from the heat recovery if the temperature difference 
between the supply and the extract is not harnessable.  
<br />
When the difference between the measured and the desired temperature of an individual zone is too low (hysteresis), the 
heat coils within the duct system will act to heat the supply air. Each heat coil is regulated with an individual 3-way valve 
controlled with a PI-controller based on the supply air temperature set-point, which is limited to 24 degC
<br />
Several zones are equipped with VAV boxes. These VAV boxes will regulate the air mass flow rate supplied to the zone based on 
the heating/cooling and ventilation needs.
Concerning the heating/cooling needs, the VAV will be more or less opened based on the temperature difference between the zone and its 
set-point. A PI-controller controls the VAV damper opening.
Similarly, regarding the ventilation needs, the VAV will be more or less opened based on the CO<sub>2</sub> concentration of the zone. 
A PI-controller tracks a CO<sub>2</sub> concentration set-point of 850ppm.
The maximum of the two set-points is used in the VAV box.
</p>
<p>
The cooling tower is connected to the manifold through a heat exchanger and the tower only works to dissipate heat in some scenarios. 
These scenarios include an excessive water storage temperature (due to active cooling), an excessive borefield temperature, or the 
possibility to harness the ambient air temperature.
The cooling tower works with a PI-controller to keep its outlet temperature at 29 degC.
</p>
<p>
Under adequate circumstances, the building can activate night ventilation during hot summer days and automated shading for the 
west, east and south facade to avoid overheating of the building.
</p>
<h3>Model IO's</h3>
<h4>Inputs</h4>
The model inputs are:
<ul>
<li>
<code>Input1</code> [UNIT1]: 
</li>
</ul>
<h4>Outputs</h4>
The model outputs are:
<ul>
<li>
<code>Output1</code> [UNIT1]: 
</li>
<li>
<code>Output2</code> [UNIT2]: 
</li>
</ul>
<h3>Additional System Design</h3>
<h4>Lighting</h4>
<p>
Despite lighting internal heat gains are modeled, the model has not controllable lighting inputs.
</p>
<h4>Shading</h4>
<p>
The building can control solar gains by means of movvable horizontal 
fin shading on the 3<sup>rd</sup> and 2<sup>nd</sup> floors. 
<br/>
Fixed horizontal fin shading combined with overhangs is installed 
on the 1<sup>st</sup> and ground floors.
</p>
<h4>Onsite Generation and Storage</h4>
<p>
No onsite generation and storage is modeled in this building, 
despite 61 PV-panels of 136 W<sub>p</sub> are installed and 
connected to the grid.
</p>
<h3>Model Implementation Details</h3>
<h4>Moist vs. dry air</h4>
<p>
The model uses the IDEAS water package, for which moisture and CO<sub>2</sub> concentration can be computed.
</p>
<h4>Pressure-flow models</h4>
<p>
This model uses the pressure-flow models included in the IBPSA/IDEAS library (FlowControlled_dp and FlowControlled_y). Pressure drops are defined.
</p>
<h4>Infiltration models</h4>
<p>
As the building is composed of open space offices, inter-zone air flow is modelled by connecting the interacting zones with energy and mass balance equations.
This assumption is done based on the fact that the building works with forced ventilation.
For each set of inter-connected zones, there has to be one zone with a fixed air volume determined by a prescribed pressure.
The other zones air leakage is modeled by means of the n<sub>50</sub> factor.
(see IDEAS.Buildings.Components.InterzonalAirFlow.n50FixedPressure and IDEAS.Buildings.Components.InterzonalAirFlow.n50Tight).
</p>
<h3>Scenario Information</h3>
<h4>Energy Pricing</h4>
<p>
…
</p>
<h4>Emission Factors</h4>
<p>
…
</p>
</html>"));
end IBPSA_BOPTEST;
