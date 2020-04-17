within INFRAX.Data.Shading;
model HorizontalFins "INFRAX horizontal fins shading"
  extends IDEAS.Buildings.Components.Shading.HorizontalFins(
    use_displacementInput=true,
    beta= Modelica.Constants.pi/6,
    s=0.17,
    w=0.175,
    t=0.032);

    annotation (
    Icon(coordinateSystem(preserveAspectRatio=true, extent={{-50,-100},{50,100}})),
    Documentation(info="<html>
<p>Shading model of horizontal fins in function of the inclination angle of the fins.</p>
<p><br><img src=\"modelica://IDEAS/Resources/Images/Buildings/Components/Shading/HorizontalFins.png\"/></p>
</html>", revisions="<html>
<ul>
<li>
March, 2019 by Filip Jorissen:<br/>
Extending from IDEAS
</li>
<li>
April, 2017 by Iago Cupeiro:<br/>
Cleaned up implementation and documentation.
</li>
</ul>
</html>"));
end HorizontalFins;
