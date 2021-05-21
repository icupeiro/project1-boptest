within INFRAX.SubSystems.BuildingEnvelope.Interfaces;
model RectangularZoneTemplateFCU
  "Rectangular zone including walls, floor and ceiling with FCU ports"
  extends IDEAS.Buildings.Components.RectangularZoneTemplate;
  Modelica.Fluid.Interfaces.FluidPort_b fcu_b(
    redeclare package Medium = Medium,
    m_flow(nominal=m_flow_nominal),
    h_outflow(nominal=Medium.h_default))
    annotation (Placement(transformation(extent={{30,-110},{50,-90}})));
  Modelica.Fluid.Interfaces.FluidPort_a fcu_a(
    redeclare package Medium = Medium,
    m_flow(nominal=m_flow_nominal),
    h_outflow(nominal=Medium.h_default))
    annotation (Placement(transformation(extent={{70,-110},{90,-90}})));
equation

  connect(fcu_b, airModel.ports[1]) annotation (Line(points={{40,-100},{40,8},{0,
          8},{0,50},{-30,50},{-30,40}}, color={0,127,255}));
  connect(fcu_a, airModel.ports[2]) annotation (Line(points={{80,-100},{80,10},{
          2,10},{2,54},{-30,54},{-30,40}}, color={0,127,255}));

    annotation (Icon(coordinateSystem(preserveAspectRatio=false, initialScale=0.1),
        graphics={
        Text(
          extent={{-60,-72},{-30,-38}},
          lineColor={28,108,200},
          textString="Flo"),
        Text(
          extent={{120,-14},{140,20}},
          lineColor={28,108,200},
          textString="B"),
        Text(
          extent={{-10,-122},{10,-94}},
          lineColor={28,108,200},
          textString="C"),
        Text(
          extent={{-122,-14},{-102,20}},
          lineColor={28,108,200},
          textString="D"),
        Text(
          extent={{18,44},{46,80}},
          lineColor={28,108,200},
          textString="Cei"),
        Text(
          extent={{-10,114},{10,148}},
          lineColor={28,108,200},
          textString="A")}),                                     Diagram(
        coordinateSystem(preserveAspectRatio=false, extent={{-220,-100},{100,100}}),
                    graphics={
        Text(
          extent={{-220,-60},{-200,-80}},
          lineColor={28,108,200},
          textString="Floor"),
        Text(
          extent={{-220,-80},{-200,-100}},
          lineColor={28,108,200},
          textString="Ceiling"),
        Text(
          extent={{-220,-40},{-200,-60}},
          lineColor={28,108,200},
          textString="D"),
        Text(
          extent={{-220,-20},{-200,-40}},
          lineColor={28,108,200},
          textString="C"),
        Text(
          extent={{-220,0},{-200,-20}},
          lineColor={28,108,200},
          textString="B"),
        Text(
          extent={{-220,20},{-200,0}},
          lineColor={28,108,200},
          textString="A")}),
    Documentation(info="<html>
<p>
This model can be used to set up
zones with a rectangular geometry more quickly.
This template consists of a zone, four walls, a horizontal roof and a floor
and five optional windows.
Additional surfaces may also be connected through external bus connector.
For the documentation of the regular zone parameters, see the documentation of 
<a href=\"modelica://IDEAS.Buildings.Components.Zone\">IDEAS.Buildings.Components.Zone</a>.
</p>
<h4>Main equations</h4>
<p>
This model incorporates IDEAS components such as
<a href=modelica://IDEAS.Buildings.Components.OuterWall>
IDEAS.Buildings.Components.OuterWall</a> and reproduces
the same results as a model that would be constructed without 
the use of this template.
</p>
<h4>Assumption and limitations</h4>
<p>
This model assumes that the zone has a rectangular
geometry with width <code>w</code>, length <code>l</code>
and height <code>h</code>.
All walls are vertical and perpendicular to each other and both the roof and
the floor are horizontal.
</p>
<p>
The surface area of each wall is calculated by default using
the parameters <code>w</code> and <code>l</code>. If you want to split a wall
and add external walls using the external bus connector, use the overwrite
length parameters <code>lA, lB, lC, lD</code> from the <code>Face</code> tabs
such that the surface area of the wall is correct. 
Be also aware that the model
<code>slabOnGround</code> has a parameter <code>PWall</code> which specifies the
perimeter of slab on ground. The model cannot detect external walls connected
using the external bus connector. When splitting outer walls by using the external bus connector
you should update this parameter
manually using the parameter <code>PWall</code> from the <code>Advanced</code> tab.
</p>
<h4>Typical use and important parameters</h4>
<p>
Parameters width <code>w</code>, length <code>l</code>
and height <code>h</code> need to be defined
and are used to compute the dimensions of each of the surfaces.
Parameter <code>aziA</code> represents the azimuth angle
of surface A (see icon). Other surfaces are rotated (clockwise) by multiples
of ninety degrees with respect to <code>aziA</code>.
Parameter <code>nSurfExt</code> may be used
to connect additional surfaces to the template. 
When doing this, you may need to change the surface areas of
the surfaces in the template as these are not updated automatically.
</p>
<p>
Seven parameter tabs allow to specify further parameters
that are specific for each of the seven surfaces: six surfaces 
for the walls, floor and ceiling and one for an internal wall 
contained within the zone.
For each surface the surface type may be specified
using parameters <code>bouTyp*</code>.
The construction type should be defined
using <code>conTyp*</code>.
Parameter <code>hasWin*</code> may be used
for all orientations except for the floor to add
a window.
In this case the window surface area, shading and glazing 
types need to be provided.
For non-default shading a record needs to be created that specifies
the shading properties.
The surface area of the window is deducted from the surface area
of the wall such that the total surface areas add up.
</p>
<h4>Options</h4>
<p>
Advanced options are found under the <code>Advanced</code> 
parameter tab. 
The model may also be adapted further by
overriding the default parameter assignments in the template.
</p>
<p>
You can also use this model for non-rectangular zones by, for example,
using the <code>None</code> type for a wall and by adding additional walls
corresponding to a different geometry through
the external bus connector. 
This model however then does not guarantee that all parameters are consistent.
Therefore, some internal parameters of this model will need to be
updated manually.
</p>
<p>
In the parameter group <code>Windows</code>, you can redeclare the window. 
This is useful when using a window model that has a pre-configured surface area,
glazing type, frame fraction and shading. 
The parameters 
<code>azi=aziA</code>,
<code>inc=IDEAS.Types.Tilt.Wall</code>,
<code>T_start=T_start</code>,
<code>linIntCon_a=linIntCon</code>,
<code>dT_nominal_a=dT_nominal_win</code>,
<code>linExtCon=linExtCon</code>,
<code>windowDynamicsType=windowDynamicsType</code>,
<code>linExtRad=linExtRadWin</code>,
<code>nWin=nWinA</code>,
are still computed from the zone model parameters but, the
other windows parameters are those configured in the
used window model, including the window surface area.
</p>
<h4>Dynamics</h4>
<p>
This model contains wall dynamics
and a state for the zone air temperature.
The zone temperature may be set to steady state using
parameter <code>energyDynamicsAir</code>, which should
in general not be done.
The mass dynamics of the air volume
may be set to steady state by overriding the default parameter
assignment in the <code>airModel</code> submodel.
This removes small time constants
when the zone model is connected to an air flow circuit. 
</p>
<h4>Shading</h4>
<p>
In order to choose the shading of the glazing,
instead of selecting one shading type from the
dropdown menu, click on the
button right of the dropdown menu (edit). 
A menu will appear where the type of 
shading and corresponding parameters
have to be defined.
Alternatively, the shading template can be extended.
</p>
<h4>Validation</h4>
<p>
This implementation is compared with a manual implementation
in <a href=modelica://IDEAS.Buildings.Validation.Tests.ZoneTemplateVerification2>
IDEAS.Buildings.Validation.Tests.ZoneTemplateVerification2</a>.
This gives identical results.
</p>
<h4>Example</h4>
<p>
An example of how this template may be used
can be found in 
<a href=modelica://IDEAS.Examples.PPD12>IDEAS.Examples.PPD12</a>.
</p>
<h4>Implementation</h4>
<p>
Shading types need to be declared using a record instead of
by redeclaring the shading components.
This is a workaround because redeclared 
components cannot be propagated.
</p>
</html>", revisions="<html>
<ul>
<li>
February 5, 2019, by Damien Picard:<br/>
Correct typo in winB declaration (fraB should be fracB). 
</li>
<li>
October 26, 2018, by Filip Jorissen:<br/>
Removed use of non-existent parameter <code>aziCei</code>.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/946\">#946</a>. 
</li>
<li>
August 26, 2018, by Damien Picard:<br/>
Move all equations except those of windows to 
<code>RectangularZoneTemplateInterface</code>
for LIDEAS.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/891\">#891</a>.
</li>
<li>
August 16, 2018, by Damien Picard:<br/>
Make windows replaceable.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/891\">#891</a>.
And correct wall surface computation.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/890\">#890</a>. 
</li>
<li>
August 10, 2018, by Damien Picard:<br/>
Added parameters for scaling factors for windows.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/888\">#888</a>.
</li>
<li>
Adapted model to make it possible to remove walls from the template.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/880\">#880</a>.
</li>
<li>
June 13, 2018, by Filip Jorissen:<br/>
Added parameters for shade cast by external building.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/576\">#576</a>.
</li>
<li>
May 21, 2018, by Filip Jorissen:<br/>
Added parameters for air flow through cavity.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/822\">#822</a>.
</li>
<li>
April 30, 2018 by Iago Cupeiro:<br/>
Propagated boolean input connections for controlled shading.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/809\">#809</a>.
Shading documentation added.
</li>
<li>
July 26, 2017 by Filip Jorissen:<br/>
Added replaceable block that allows to define
the number of occupants.
See <a href=\"https://github.com/open-ideas/IDEAS/issues/760\">#760</a>.
</li>
<li>
April 26, 2017, by Filip Jorissen:<br/>
Added asserts that check for illegal combinations of internal wall with exterior window.
See issue <a href=https://github.com/open-ideas/IDEAS/issues/714>#714</a>.
</li>
<li>
March 21, 2017, by Filip Jorissen:<br/>
Changed bus parameters for JModelica compatibility.
See issue <a href=https://github.com/open-ideas/IDEAS/issues/559>#559</a>.
Also removed obsolete each.
</li>
<li>
January 20, 2017 by Filip Jorissen:<br/>
Removed propagation of <code>nLay</code> and <code>nGain</code>
since this lead to warnings.
</li>
<li>
January 11, 2017 by Filip Jorissen:<br/>
Added documentation
</li>
<li>
January 10, 2017, by Filip Jorissen:<br/>
Added <code>linExtRadWin</code> for windows.
</li>
<li>
November 14, 2016 by Filip Jorissen:<br/>
First implementation
</li>
</ul>
</html>"));
end RectangularZoneTemplateFCU;
