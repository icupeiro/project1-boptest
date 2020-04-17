within INFRAX.SubSystems.Occupancy.BaseClasses.SetTime;
model GetDayYear
  "Returns the startday of the year. Allows to make correction to know what Monday (= 1) is"

  Modelica.Blocks.Interfaces.RealInput dayYear "Amounts of the days in the specified year"
    annotation (Placement(transformation(extent={{-126,-22},{-86,18}})));
  Modelica.Blocks.Interfaces.RealInput year "year: 2017-2018,..."
    annotation (Placement(transformation(extent={{-126,-84},{-86,-44}})));
  Modelica.Blocks.Interfaces.RealOutput dayStartYear "day on which the specified year given in the input starts (1=Monday, 2= Tuesday, ...)"
    annotation (Placement(transformation(extent={{88,-22},{132,22}})));
    Real tussenresultaat;

equation

  tussenresultaat = (year + ((year - 1)/4.) - ((year - 1)/100.) + ((year - 1)/400.))/7.;
  //dayStartYear = floor(mod(((tussenresultaat)+(dayYear-1)),7));

  dayStartYear = mod((1+5*mod((year-1),4)+4*mod((year-1),100) + 6*mod((year-1),400)),7);

end GetDayYear;
