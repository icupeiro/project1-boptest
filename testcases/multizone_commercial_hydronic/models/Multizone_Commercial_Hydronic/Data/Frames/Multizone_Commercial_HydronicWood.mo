within Multizone_Commercial_Hydronic.Data.Frames;
record Multizone_Commercial_HydronicWood "INFRAX wooden frame"
  extends IDEAS.Buildings.Data.Interfaces.Frame(
    U_value=3.23);
      annotation (Documentation(info="<html>
<p>
Wooden window frame. U value may vary.
</p>
</html>"));
end Multizone_Commercial_HydronicWood;
