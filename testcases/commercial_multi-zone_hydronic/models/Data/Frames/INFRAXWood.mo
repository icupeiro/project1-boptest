within INFRAX.Data.Frames;
record INFRAXWood "INFRAX wooden frame"
  extends IDEAS.Buildings.Data.Interfaces.Frame(
    U_value=3.23);
      annotation (Documentation(info="<html>
<p>
Wooden window frame. U value may vary.
</p>
</html>"));
end INFRAXWood;
