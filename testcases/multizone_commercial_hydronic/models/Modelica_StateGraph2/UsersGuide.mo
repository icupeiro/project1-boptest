within Modelica_StateGraph2;
package UsersGuide "User's Guide"

  package Tutorial "Tutorial"

    class StepsAndTransitions "Steps and Transitions"

      annotation (Documentation(info="<html>
<p>
The basic elements of a StateGraph2 model are
<a href=\"modelica://Modelica_StateGraph2.Step\">Steps</a> and
<a href=\"modelica://Modelica_StateGraph2.Transition\">Transitions</a>.
An example is shown in the next Figure:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/StepAndTransition1.png\">
</blockquote>

<p>
The Figure above is a screen-shot of the diagram animation of the
StateGraph2 model: Whenever a Step is active or a Transition can fire,
the corresponding component is marked in <b>green</b> color.
</p>

<p>
<b>Steps</b> represent the possible states a StateGraph2 can have.
If a Step is active the Boolean variable <b>active</b> of
the Step is <b>true</b>. If it is deactivated,
<b>active</b> = <b>false</b>. At the initial time, all &quot;usual&quot;
Steps are deactivated. The <b>inital Step</b> objects are Steps
that are activated at the initial time. They are characterized
by a small arrow pointing to the Step (see Figure above) and are defined by setting
parameter &quot;initialStep = <b>true</b>&quot; in a Step, see next Figure.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/StepAndTransition1b.png\">
</blockquote>

<p>
<b>Transitions</b> are used to change the state of a StateGraph2.
When the Step connected to the input of a Transition is active
and the Transition condition becomes <b>true</b>, then the
Transition fires. This means that the Step connected to the input to the
Transition is deactivated and the Step connected to the output
of the Transition is activated.
</p>

<p>
The Transition <b>condition</b> is defined via the parameter menu
of the Transition object. Clicking on object &quot;T1&quot; in
the above Figure, results in the following menu:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/StepAndTransition2.png\">
</blockquote>

<p>
In the input field &quot;<b>condition</b>&quot;, any type of time varying
Boolean expression can be given (in Modelica notation, this is
a modification of the time varying variable <b>condition</b>).
Whenever this condition is true, the Transition can fire.
Additionally, it is possible to activate a timer, via
<b>delayedTransition</b> (see menu above) and provide a
<b>waitTime</b>. In this case the firing of the Transition
is delayed according to the provided waitTime, provided
that the condition remains true and the preceding Step
remains active during the entire waitTime.
The Transition
condition and the waitTime are displayed in the Transition icon.
</p>

<p>
In the above example, the simulation starts at <b>initialStep</b>.
After 2 seconds, Transition <b>T1</b> fires and <b>Step2</b> becomes
active. After another second Transition <b>T2</b> fires and
<b>Step3</b> becomes active. After an additional second Transition
<b>T3</b> fires and <b>intialStep</b> becomes active. Since
time &gt;2, <b>T1</b> fires at once and <b>Step2</b> becomes active
again, and so on.
</p>

<p>
In JGrafcharts, Grafcet and Sequential Function Charts, the
network of Steps and Transitions is drawn from top to bottom.
In StateGraph2 models, no particular direction is defined, since
Steps and Transitions are models with input and output connectors
that can be arbitrarily placed and connected.
Since users of Grafcet and SFC are used to the &quot;top to bottom drawing&quot;, in all
examples of this library, this <b>convention</b> is used.
This has the additional advantage that block diagrams to program
actions can be conveniently drawn from left to right as it is usual
for block diagrams.
</p>

<p>
When parameter <b>use_conditionPort</b> is enabled at a Step,
the firing condition
can be provided as Boolean input signal, instead as entry in the
menu of the Transition. An example is given in the next
Figure:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/StepAndTransition3.png\">
</blockquote>

<p>
In the Figure, additionally parameter <b>use_activePort</b> is set
to <b>true</b> at <b>Step2</b> to provide the active flag of this
Step as Boolean output signal. To this output, component
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.OnDelay\">OnDelay</a>
is connected.
If the input of this block becomes <b>true</b>, the output becomes <b>true</b>
after a delay time. If the input of this block becomes <b>false</b>, the output
is immediately reset to <b>false</b> as well.
The output signal of the onDelay block is used as condition input of the
Transition. As a result, &quot;T2&quot; fires, once Step
&quot;Step2&quot; has been active for 1 second.
Of course, any other
Modelica block with a Boolean output signal can be
connected to the condition input of such a Transition block
as well. More details how define such actions graphically
are given in section
&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Actions\">Actions</a>&quot;
</p>

<p>
Subgraphs can be aggregated into superstates by using the
<a href=\"modelica://Modelica_StateGraph2.Parallel\">Parallel</a>
component. This component acts both as a composite step (having just <u>one branch</u>) and as a Step that has <u>parallel branches</u> that
are executed in parallel to each other. For details, see
&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Parallel\">section Parallel</a>&quot;.
</p>

<p>
The execution model of a StateGraph2 graph follows from its
Modelica implementation: Given the states of all Steps, i.e.,
whether a Step is active or not active, the equations of all
Steps, Transitions, Transition conditions, actions etc. are
sorted resulting in an execution sequence to compute
essentially the new values of the Steps. If conflicts occur,
e.g., if there are more equations as variables, of if there
are algebraic loops between Boolean variables, an error
occurs. Once all equations have been processed, the
<b>active</b> variables of all Steps are updated to the newly
calculated values. Afterwards, the equations are again
evaluated. The iteration stops, once no Step changes
its state anymore, i.e., once no Transition fires anymore.
Then, simulation continuous until a new event is triggered,
(when a relation changes its value).
</p>
<p>
With the Modelica_EmbeddedSystems library a StateGraph2 model can also
be executed within a discrete controller that is called
periodically. Furthermore, production code can be downloaded to
a target processor.
</p>

</html>
"));
    end StepsAndTransitions;

    class Parallel "Parallel"

      annotation (Documentation(info="<html>
<p>
Subgraphs can be aggregated into superstates by using the
<a href=\"modelica://Modelica_StateGraph2.Parallel\">Parallel</a>
component. This component acts both as a composite step (having just <u>one branch</u>) and as a Step that has <u>parallel branches</u> that
are executed in parallel to each other.
The Parallel component allows the user to place any StateGraph2 element inside it, especially Steps, Transitions, and Parallel components. In the following Figure, a typical Parallel component &quot;p&quot; is shown:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Elements/Parallel.png\">
</blockquote>

<p>
Here, the branch from &quot;Step3&quot; to &quot;Step5&quot; is executed in parallel to &quot;Step2&quot;. A Transition connected to the output of a parallel branch component can only fire if the final Steps
of the branches, that are connected to the &quot;exit&quot; port of the
Parallel component, are active simultaneously. So, in the Figure above,
the Parallel component is left, once Step2 and Step5 are active for one
second, since then transition T5 fires.
</p>

<p>
By default, a Parallel component does not have any outside ports.
To achieve the StateGraph2 above, parameters <b>use_inPort</b>, <b>use_outPort</b>, and
<b>use_suspend</b> have to be set to <b>true</b>, see next Figure:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/Parallel2.png\">
</blockquote>

<p>
A Parallel component has always an entry port, see Figure above, and it may have optionally an exit port. All branches in a Parallel Component must start at the entry port and at least one must terminate at the exit port, provided the exit port is enabled via parameter <b>use_outPort</b>. If a Parallel component shall be entered from the outside via a Transition, parameter <b>use_inPort</b> must be set to true, to enable an input port. If a Parallel Component shall be left via a transition to an outside step, parameter <b>use_outPort</b> must be set to true, to enable the output and the exit port. A Parallel component may be used as initial step, by setting parameter <b>initialStep</b> to true.
All branches in a Parallel component may be running autonomously in parallel, by setting
use_inPort=<b>false</b>, use_outPort=<b>false</b>, initialStep=<b>true</b>.
</p>

<p>
A Parallel component may be <u>suspended</u> and sub-sequently <u>resumed</u>. In the Figure above, Transition T6 fires whenever the input signal &quot;u&quot; is true, suspending the Parallel component &quot;p&quot; and the enclosed Steps s2, s3, s4 and s5 for two seconds. When Transition T7 fires, p is re-activated in the same states as when it was suspended (i.e., the same Steps become active, that have been active when the Parallel component was suspended).
</p>

<p>
Parallel and Step components have vectors of
connectors. The dimensions of these vectors are set <b>automatically</b>
in the corresponding parameter menu when performing a connection due
to the &quot;connectorSizing&quot; annotation (a connection is connected to
the next free element of a vectors of connectors when drawing the
connection and the new vector dimension is set automatically as
a modifier, if the dimension needs to be enlarged). If several Transitions could
fire, the Transition that is connected to the lowest index of a vector
of connectors really fires (so the firing priority is defined with the
connection index). If transitions connected to the outPort and to the suspend port could fire
at the same time instant, the transition connected to the outPort has higher priority
and really fires.
</p>


<p>
As mentioned above, inPorts and outPorts of a Parallel component are optional and can be set by the user. If the parallel component has an inPort, then the entry port constitutes the connection between the Transition connected to the inPort and the first Steps to be activated in the Parallel component. If the Parallel component is configured to have an outPort, an exit port shows up on the bottom of the Parallel component, see above Figure.
The Parallel component allows the entry port to branch out into several parallel paths. These branches are not allowed to interact. When all Steps connected to the exit port are active, the Parallel component is said to be available and may exit when the Transition connected to the outPort fires. In the Figure above Transition T5 fires when both Step s2 and s5 have been active together for one second and thereby deactivates the Parallel component p. Note, not all branches need to be connected to the exit port, if it is enabled.
</p>

<p>
The state of a Parallel component is available via the output variable <b>active</b> that can
be used in action blocks (e.g. \"parallel.active\"). Alternatively, via parameter
\"use_activePort\" the Boolean output port \"activePort\" can be enabled.
When the Parallel component is active, activePort = <b>true</b>, otherwise it is <b>false</b>. This port can
be connected to Boolean action blocks, e.g., from
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean\">Modelica_StateGraph2.Blocks.MathBoolean</a>.
</p>

<p>
No component contained within the Parallel component may be connected to any other component &quot;outside&quot; of the Parallel component, otherwise a translation error occurs. This rule is used to protect the user from making mistakes that could lead to unexpected results and states of the graph that are not well-defined.
</p>

<p>
In order to graphically organize large graphs in different levels of hierarchy and with encapsulation of variables, use component
<a href=\"modelica://Modelica_StateGraph2.PartialParallel\">PartialParallel</a> instead of
Parallel.
</p>

</html>
"));
    end Parallel;

    class Actions "Actions"

      annotation (Documentation(info="<html>
<p>
An important practical aspect of state machines is the ability to assign values and expressions to variables depending on the state of the machine. In StateGraph2, a number of graphical components have been added
to package <a href=\"modelica://Modelica_StateGraph2.Blocks\">Modelica_StateGraph2.Blocks</a>
to facilitate usage in a safe and intuitive way. Since these are just input/output blocks and will also be useful in another context, it is planned to add them to the Modelica Standard Library.
</p>

<p>
There are a number of standard blocks with common operations/displays of the three basic types (Boolean, Integer, Real) using vector input connectors which enables them to be connected to an arbitrary number of sources. Resizing a vector port and connecting to the next free element is performed automatically when connecting to the connector. So this is much more convenient as with the
<a href=\"modelica://Modelica.Blocks.Logical\">Modelica.Blocks.Logical</a>
blocks. A vector of input connectors is visualized as an ellipse
(see the violet ellipse on the left side of the multiSwitch components in the Figures below).
</p>

<p>
The most important action blocks are the MultiSwitch blocks for the different basic data types
(<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MathBoolean.MultiSwitch</a>,
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch\">MathInteger.MultiSwitch</a>,
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathReal.MultiSwitch\">MathReal.MultiSwitch</a>).
These block select one of N (Boolean, Integer, or Real) expressions depending on an array of Boolean inputs. The index of the first input in the Boolean array that is true defines the index of the expression in the expression array to be used as the scalar output y.
</p>

<p>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Elements/MultiSwitch.png\" align=\"right\">
In the Figure to the right, the MultiSwitch component will output the value y = 1 if Step s1 is active, and will output y = 2 if s2 is active as the expression array is defined as {1,2}. If none of the Boolean array inputs is true, the &quot;else&quot; value will be used instead that is defined in the parameter menu of the MultiSwitch component and is displayed below the icon. Consider the Figure when Step s3 is active - this will set the output of component &quot;multiSwitch&quot; to the &quot;else&quot; value &quot;3&quot;. Alternatively, in the parameter menu of the MultiSwitch component it can be defined to keep its previous value, i.e., y = <b>pre</b>(y). If this option would be selected for the Figure to the right, then multiSwitch.y = 2 when Step s3 is active.
</p>

<p>
The MultiSwitch block is inspired by &quot;Modes&quot; from Mode Automata (Maraninchi and Rémond 2002, see
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">Literature</a>): Variable multiSwitch.y has always a unique value, and this value depends on the expressions that are associated with mutually exclusive active steps. The advantages of MultiSwitch are that (1) the definition is performed in a purely graphical way, (2) it can also be used for mutually non-exclusive active steps in a Parallel component, and (3) it can be implemented in Modelica in a very simple way. The drawback is that the expressions in the MultiSwitch block might no longer be so easy associated with Steps, compared to the alternative where the expressions are defined directly in the respective Steps. This latter approach would, however, require non-trivial extensions to the Modelica language.
</p>

<p>
The
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.RisingEdge\">RisingEdge</a>,
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.FallingEdge\">FallingEdge</a> and
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.ChangingEdge\">ChangingEdge</a>,
components can be used to generate &quot;pulse&quot; signals depending on the rising, falling or changing values of a Boolean signal. An example is shown in the Figure below where the Boolean indicator lamp is turned on when Step s2 becomes active and is turned off when Transition t3 fires and Step s3 becomes inactive. Two variants are shown to utilize the &quot;rising&quot; property of a Boolean signal: The Boolean connectors at Steps and Transitions can be activated via parameters &quot;use_activePort&quot; and &quot;use_firePort&quot;, respectively. If s2 becomes active, rising = true and therefore multiSwitch.y = true. If transition t3 fires, t3.firePort=true and therefore multiSwitch.y = false.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Elements/RisingEdge.png\">
</blockquote>
</html>
"));
    end Actions;

    package SafeStateGraphs "Safe StateGraphs"

      class ValidGraphStructures "Valid Graph Structures"

        annotation (Documentation(info="<html>
<p>
Contrary to
<a href=\"modelica://Modelica.StateGraph\">Modelica.StateGraph</a>
(version 1 of the library which is distributed with the Modelica Standard Library since 2004), only <u>valid graph structures</u> are accepted for the Modelica_StateGraph2 library. Wrong graph structures result in translation errors of the model.
</p>

<p>
For example, the model of the next Figure gives a translation error, because it has two initial steps:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/WrongInitialSteps.png\">
</blockquote>

<p>
Also, the model of the next Figure gives a translation error, because a branch
of the Parallel component branches wrongly out of the component.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/WrongParallel.png\">
</blockquote>

<p>
More examples of wrong StateGraph2 models that result in translation errors
are available
<a href=\"modelica://Modelica_StateGraph2.Examples.WrongStateGraphs\">here</a>.
</p>
</html>
"));
      end ValidGraphStructures;

      class SingleAssignmentRule "Single Assignment Rule"

        annotation (Documentation(info="<html>
<p>
In all state machine formalisms problems are present when assignments to the same variables are performed in branches that are executed in parallel.
Typically, <b>actions</b> are formulated <b>within a step</b>. Such actions are, e.g.,
distinguished as <b>entry</b>, <b>normal</b>, <b>exit</b> and
<b>abort</b> actions. For example, a valve might be opened by
an entry action of a step and might be closed by an exit
action of the same step. This widly used standard approach
becomes critical, when the same variable is assigned in graphs
that are executed in parallel, because it is then not clear which
value the variable will have, and different tools might give different
results.
</p>

<p>
In StateGraphs, it is <b>not possible</b> to assign the same variable in graphs that
are executed in parallel, due to Modelicas \"<u>single assignment rule</u>\" that requires that every
variable is defined by exactly one equation.
This feature of a StateGraph2 is <b>very useful</b>, since it allows
a Modelica translator to <b>guarantee</b> that a given StateGraph2
has always <b>deterministic</b> behaviour without conflicts.
In other state diagram methodologies this is much more cumbersome. For example,
if two steps are executed in parallel and both step actions
modify the same variable, the result is either non-deterministic
or non-obvious rules have to be defined which action
takes priority. In a StateGraph2, such a situation is detected by
the translator resulting in an error, since there are two equations
to compute one variable.
</p>

<p>
In the Figure below an artifical example is shown how to handle such
problems in a StateGraph2 model, e.g., with a
<a href=\"modelica://Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch\">MultiSwitch</a>
action block &quot;openValve&quot;. The purpose is to set:
</p>

<pre>
  openValve.y = <b>true</b>,  <b>if</b> Step fill1 is entered
  openValve.y = <b>false</b>, <b>if</b> Step fill2 is entered
</pre>

<p>
and the question is which value openValve.y will have, if both steps fill1 and fill2 are executed in parallel. In the StateGraph2 model below, everything is well defined: There are two input connections to the openValve block. If both become true at the same time instant, the connection with the &quot;lowest&quot; index (i.e., the upper signal in the Figure) has highest priority (as defined and implemented in the MultiSwitch block). Therefore, openValve.y gets the value <b>true</b>, once the Parallel component is entered.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/ActionsWithPriority.png\">
</blockquote>


</html>
"));
      end SingleAssignmentRule;

      class BoundedEventIterations "Bounded Event Iterations"

        annotation (Documentation(info="<html>
<p>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/UsersGuide/WrongInfiniteLooping.png\" align=\"right\">
At an event instant, an iteration occurs, due to the Modelica semantics (= whenever a new event occurs, the model is re-evaluated). This means that Transitions keep firing along a connected graph, as long as the firing conditions are true. The question therefore arises, whether infinite event looping is possible? A simple example of this kind is shown in the Figure to the right.
Here, all Transition conditions are true and therefore all Transitions fire forever. This is no valid StateGraph model and will result in a translation error.
</p>

<p>
In order to avoid a situation as in the Figure to the right, it is required that a StateGraph2 model has at least one delayed Transition per loop. This means that one of T1, T2, or T3, must be a delayed Transition, otherwise a translation error occurs. Since event iteration stops at a delayed Transition, infinite event looping cannot occur. This also means that at one time instant every Transition can fire at most once and therefore the number of model evaluations at an event instant is bounded by the number of Transition components.
</p>

<p>
It is still possible that infinite event looping occurs due to model errors in other parts of the model. For example, if a user introduces an equation of the form &quot;J = <b>pre</b>(J) + 1&quot; outside of a when-clause, event iteration does not stop. Although this situation is not completely satisfactory, it helps already a lot if a tool points out potential problems of a StateGraph2 model, in case delayed transitions are missing.
</p>

</html>
"));
      end BoundedEventIterations;
      annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
In this section it will be discussed in which sense &quot;StateGraph2&quot; models
are &quot;safe&quot;. This section consists of the following sub-sections:
</p>

<ol>
<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.ValidGraphStructures\">Valid
    Graph Structures</a>&quot; discusses that only valid graph structures of a
    StateGraph2 model will be accepted by a Modelica tool.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.SingleAssignmentRule\">Single
    Assignment Rule</a>&quot; discusses that a variable must always be defined by exactly
    one equation and therefore non-determinism as in other state machine formalisms cannot
    occur (especially, it is not possible to assign the same variable twice in parallel
    executing branches).</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs.BoundedEventIterations\">Bounded
    Event Iterations</a>&quot; discusses that infinite event looping is not possible,
    because it is required that every &quot;loop&quot; in a StateGraph2 model must have at
    least one delayed Transition.</li>

</ol>

</html>
"));
    end SafeStateGraphs;

    class VectorsOfConnectors "Vectors of Connectors"

      annotation (Documentation(info="<html>
<p>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Elements/Step-default.png\" align=\"right\">
The &quot;inPort&quot; (= ellipse at the top part of a Step; see Figure to the right),
the &quot;resume&quot; port (= ellipse at the left part of a Parallel component),
the &quot;outPort&quot; (= triangle at the bottom part of a Step and of a Parallel
component), and
the &quot;suspend&quot; port (= triangle at the left part of a Parallel component)
connectors are <u>vector of connectors</u>, respectively.
When drawing a connection line from, e.g., a Transition to a Step inPort connector, the dimension of the vector of connectors Step.inPort has to be increased by one, say to dimension N, and then the connection has to be performed from Transition.outPort to Step.outPort[N]. Performing this manually is inconvenient and error prone. For this reason, in
<a href=\"http://www.modelica.org/documents/ModelicaSpec31.pdf\">Modelica 3.1</a> (section 17.6) the new annotation <u>connectorSizing</u> was introduced. This annotation is used for all vector connectors in the StateGraph2 library. Example:
</p>

<pre>
  <b>model</b> Step
     <b>parameter</b> Integer <u>nIn</u>=0 <b>annotation</b>(Dialog(<u>ConnectorSizing=<b>true</b></u>));
     Modelica_StateGraph2.Internal.Interfaces.Step_in inPort[<u>nIn</u>];
     ...
  <b>end</b> Step;
</pre>

<p>
When this model is used and a connection is made to vector &quot;inPort&quot;, then the tool increments the dimension nIn by one and performs the connection to this new index. Therefore, performing connections between Steps and Transitions or Parallel components and Transitions is convenient for a user and only requires to draw a line between the corresponding connectors.
</p>

</html>
"));
    end VectorsOfConnectors;

    class ApplicationExample "Application example"

      annotation (Documentation(info="<html>
<p>
In this section an application example
is shown, to demonstrate various features of the Modelica_StateGraph2 library.
This example shows the control of a two tank system which is based
on the master thesis of Isolde Dressler
(<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">see literature</a>).
</p>
<p>
In the following figure the top level of the model is shown.
This model is available from
<a href=\"Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks1\">here</a>.
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Examples/ControlledTanks1.png\">
</blockquote>

<p>
In the right part of the figure, two tanks are shown. At the top part,
a large fluid source is present from which fluid can be filled in
<b>tank1</b> when <b>valve1</b> is open. Tank1 can be emptied via
<b>valve2</b> that is located in the bottom of tank2 and
fills a second <b>tank2</b> which in turn is emptied via
<b>valve3</b>. The actual levels of the tanks are measured
and are provided as signals <b>level1</b> and <b>level2</b>
to the <b>tankController</b>.
</p>
<p>
The <b>tankController</b> is controlled by three buttons,
<b>start</b>, <b>stop</b> and <b>shut</b> (for shutdown)
that are mutually exclusive. This means that whenever one button is
pressed (i.e., its state is <b>true</b>) then the other two
buttons are not pressed (i.e., their states are <b>false</b>).
When button <b>start</b> is pressed, the \"normal\" operation
to fill and to empty the two tanks is processed:
</p>
<ol>
<li> Valve 1 is opened and tank 1 is filled.</li>
<li> When tank 1 reaches its fill level limit,
     valve 1 is closed. </li>
<li> After a waiting time, valve 2 is
     opened and the fluid flows from tank 1 into tank 2.</li>
<li> When tank 1 is empty, valve 2 is closed. </li>
<li> After a waiting time, valve 3 is opened and
     the fluid flows out of tank 2</li>
<li> When tank 2 is empty, valve 3 is closed</liI>
</ol>
<p>
The above \"normal\" process can be influenced by the following
buttons:
</p>
<ul>
<li> Button <b>start</b> starts the above process.
     When this button is pressed after a \"stop\" or
     \"shut\" operation, the process operation continues.
     </li>
<li> Button <b>stop</b> stops the above process by
     closing all valves. Then, the controller waits for
     further input (either \"start\" or \"shut\" operation).</li>
<li> Button <b>shut</b> is used to shutdown the process,
     by emptying at once both tanks. When this is achieved,
     the process goes back to its start configuration.
     Clicking on \"start\", restarts the process.</li>
</ul>
<p>
The implementation of the <b>tankController</b> is shown in
the next figure:
</p>
<p align=\"center\">
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Examples/ControlledTanks2.png\">
</p>
<p>
When the \"<b>start</b>\" button is pressed, the Modelica_StateGraph2 is
within the Parallel step \"<b>makeProduct</b>\". During normal
operation this step is not left.
</p>
<p>
When the \"<b>stop</b>\" button is pressed, the \"makeProduct\"
step is at once terminated via the \"<b>suspend</b>\" port
and the Modelica_StateGraph2 waits in step \"<b>stopStep1</b>\" for further
commands. When the \"<b>start</b>\" button is pressed, the makeProduct step
is re-entered via its <b>resume</b> port and the \"normal\"
operation continues at the state where it was aborted by the
suspend transition. If the \"<b>shut</b>\" button is pressed,
the Modelica_StateGraph2 waits in the \"<b>shutStep</b>\" parallel step, until
both tanks are empty and then waits at the
\"<b>startStep</b>\" for further input.
</p>
<p>
The opening and closing of valves is <b>not</b> directly
defined in the Modelica_StateGraph2. Instead via the \"<b>setValveX</b>\"
components, the Boolean state of the valves are computed.
For example, the output y of \"setValve3\" is computed as:
</p>
<pre>
  y = emptyTanks.active or shutTank2.active
</pre>
<p>
i.e., valve3 is open, when step \"emptyTanks\" or when
step \"shutTank2\" is active. Otherwise, valve3 is closed.
</p>

<p>
An alternative implementation of the tank controller is available from
<a href=\"Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks2\">here</a>.
The differences to the implementation shown above are:
</p>

<ul>
<li> All signals are reported via a signal bus and the bus signals
     are directly utilized as conditions in transitions.</li>
<li> The controller is hierarchically structured for the different tasks
     using the
     <a href=\"modelica://Modelica_StateGraph2.PartialParallel\">PartialParallel</a>
     component.</li>
</ul>

<p>
The top level of this alternative implementation of the tank controller
is shown in the following figure:
</p>

<blockquote>
<img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Examples/ControlledTanks3.png\">
</blockquote>

<p>
The &quot;MakeProduct&quot; Parallel component is the initial step and performs the &quot;normal&quot; operation. When the &quot;stop&quot; button is pressed, the suspend transition T8 fires, the &quot;MakeProduct&quot; step is suspended and the graph goes in to step &quot;stopStep1&quot;. Note, the transition condition of T8 is &quot;bus.stop&quot;, i.e., this transition fires when variable stop from the bus is true. When &quot;start&quot; is pressed again, the &quot;MakeProduct&quot; step is resumed at the place where it was suspended. When &quot;shut&quot; is pressed, the Parallel component &quot;ShutStep&quot; is entered to shut down the tank system. Here it is still possible to press the &quot;stop&quot; button and then again continue with &quot;shut&quot;.
</p>
</html>
"));
    end ApplicationExample;
    annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
This tutorial provides an introduction into the
<b>Modelica_StateGraph2</b> package (which is often abbreviated as StateGraph2).
A <b>StateGraph2</b> model is a state diagram/state machine to model
discrete event, reactive and hybrid systems.
It is inspired by Grafcet/Sequential Function Charts (SFC), Statecharts,
Safe State Machines (SSM) and Mode Automata, and utilizes Modelica as action language.
This tutorial consists of the following sections:
</p>

<ol>
<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.StepsAndTransitions\">Steps
    and Transitions</a>&quot; gives an overview about the most important
    elements: Steps and Transitions.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Parallel\">Parallel</a>&quot;
    gives an overview how to construct composite subgraphs and how run subgraphs in
    parallel, either autonoumsly or with synchronization.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.Actions\">Actions</a>&quot;
    gives an overview how to associate actions in a graphical way
    with Steps, Transitions and Parallel components.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.SafeStateGraphs\">Safe
    StateGraphs</a>&quot;
    discusses in which sense &quot;StateGraph2&quot; models
    are &quot;safe&quot;.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.VectorsOfConnectors\">Vectors
    of Connectors</a>&quot;
    sketches how connections to vectors of connectors (which are often used in the
    StateGraph2 library) are automatically handled in a convenient way.</li>

<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial.ApplicationExample\">Application Example</a>&quot;
    gives a more involved application example: The control of a two tank system.</li>
</ol>

</html>
"));
  end Tutorial;

  class ComparisonWithStateGraph1 "Comparison with StateGraph1"

    annotation (Documentation(info="<html>
<p>
The Modelica_StateGraph2 library (called <u>StateGraph2</u> below)
is based on the experience with the current
Modelica.StateGraph library (called <u>StateGraph1</u> below) and is
a significantly further development of StateGraph1. Furthermore, it is heavily
based on the article (Malmheden et. al. 2008), see
<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a>,
but uses a different implementation
technique as described in this article. The StateGraph2
library has the following improvements with respect to the StateGraph1
library:
</p>

<ul>
<li> <b>3 Basic Components (Step, Transition, Parallel)</b><br>
     All multiple versions of a component are
     combined in only one version (e.g., one step and not 4 step components).
     This is easier to understand and more convenient to use.
     The \"Parallel\" component is both used as \"composite step\" (so only one branch),
     as well as \"parallel step\" (so several execution branches).<br>&nbsp;</li>

<li> <b>Conveniently connecting components</b><br>
     Connecting components of a state machine in Modelica means to provide
     new vector dimensions and to provide a vector index to connect to.
     In StateGraph2, the new \"connectorSizing\" annotation is used and
     therefore all this is now performed automatically (from a users point
     of view, these actions are hidden; this is not the case in
     StateGraph1 and makes the usage of the StateGraph1 library clumsy).<br>&nbsp;</li>

<li> <b>Safer state machines</b><br>
     It is no longer possible to construct a wrong state machine in the sense that properties
     of the graph are violated (e.g. two initial steps, or branching wrongly out of a parallel
     component). Contrary to StateGraph2, in StateGraph1 such wrong graphs do not lead to an
     error but to unexpected simulation results. Still, other desirable properties
     of a state machine,  such as \"no deadlock\" or \"lifeliness\" or \"every step reachable\",
     are not (yet) guaranteed with the current StateGraph2. <br>&nbsp;</li>

<li> <b>Composite, autonomous, synchronized, preempted subgraphs</b><br>
     Composite steps and parallel steps are described in a much better and more powerful
     way as in StateGraph1: Either by component \"Parallel\" or
     by inheriting from \"PartialParallel\". The first alternative has the advantage that it
     is simple to use (not necessary to construct a new class and instanciating this class, and
     easy variable access since no new hierarchy is constructed), the second alternative
     has the advantage that it introduces a Modelica hierarchy (useful for large subgraphs).
     In both cases, various options are possible, such as
     <ol>
     <li> autonomous subgraphs (branches are executed in parallel autonomously),  </li>
     <li> synchronized subgraphs (branches are executed in parallel and are synchronized
           before leaving the subgraph via the outPort), </li>
     <li> subgraphs with preemption and exception (a parallel step can be interrupted via
          the suspend ports and can continue execution via the resume ports).</li>
     </ol>
     This is achieved by enabling/disabling the different ports.<br>&nbsp;</li>
<li> <b>No infinite looping</b>:<br>
     As in StateGraph1, there are two types of transitions: immediate transitions (during event
     iteration all immediate transitions fire until no transition condition is true anymore) and
     delayed transitions (a transition fires only after a delay). Contrary to StateGraph1,
     in StateGraph2 every loop must have at least one delayed transition. If this is not the case
     a translation error occurs which states that the model contains an algebraic loop
     between Booleans with the name \"checkOneDelayedTransitionPerLoop\".<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This property guarantees that an event
     iteration over a StateGraph2 converges after a
     finite number of iterations, provided the modeller does not introduce an unsafe construct
     in the actions associated with a StateGraph2 (e.g. \"i = pre(i) + 1\" in the equation section
     outside of a when-clause will give an event iteration that never stops).<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;It is possible to switch off this feature, by setting parameter
     \"loopCheck = <b>false</b>\" in one transition of a loop, instead of using a \"delayed transition\"
     at this place (in cases where immediate transitions are
     important and the transition conditions are in a form that they cannot fire at the
     same time instant).</li>
</ul>

</html>
"));
  end ComparisonWithStateGraph1;

  class ReleaseNotes "Release notes"

    annotation (Documentation(info="<html>
<h4>Version 2.0.4, 2019-03-20</h4>
<p>
Uses Modelica Standard Library 3.2.3
</p>

<h4>Version 2.0.3, 2016-03-11</h4>
<p>
Uses Modelica Standard Library 3.2.2 Cleaned up links and file encoding
</p>

<h4>Version 2.0.2, 2013-10-01</h4>
<p>
Uses Modelica Standard Library 3.2.1
</p>


<h4>Version 2.0.1, 2010-11-08</h4>
<p>
Uses Modelica Standard Library 3.2
</p>

<h4>Version 2.0, 2009-08-10</h4>
<p>
First version of the Modelica_StateGraph2 library based on
Modelica.StateGraph and the prototype ModeGraph library from
Martin Malmheden. The changes with respect to Modelica.StateGraph (version 1)
are summarized <a href=\"modelica://Modelica_StateGraph2.UsersGuide.ComparisonWithStateGraph1\">here</a>.
</p>

</html>
"));
  end ReleaseNotes;

  class Literature "Literature"

    annotation (Documentation(info="<html>
<p>
The Modelica_StateGraph2 library is described in detail in
(Otter et. al. 2009, see below) and is additionally
based on the following references:
</p>
<dl>
<dt>André, C. (2003):</dt>
<dd><a href=\"http://www.i3s.unice.fr/~map/WEBSPORTS/Documents/2003a2005/SSMsemantics.pdf\">
     Semantics of S.S.M (Safe State Machine).</a>.
     I3S Laboratory, UMR 6070 University of Nice-Sophia Antipolis / CNRS.<br>&nbsp;</dd>

<dt>Arzen K.-E. (2004):</dt>
<dd> <b>JGrafchart User Manual. Version 1.5</b>.
     Department of Automatic Control, Lund Institute of Technology,
     Lund, Sweden, Feb. 13, 2004.<br>&nbsp;</dd>

<dt>Dressler I. (2004):</dt>
<dd> <a href=\"http://www.control.lth.se/documents/2004/5726.pdf\">
     Code Generation From JGrafchart to Modelica.</a>.
     Master thesis, supervisor: Karl-Erik Arzen,
     Department of Automatic Control, Lund Institute of Technology,
     Lund, Sweden, March 30, 2004.<br>&nbsp;</dd>

<dt>Elmqvist H., Mattsson S.E., Otter M. (2001):</dt>
<dd> <b>Object-Oriented and Hybrid Modeling in Modelica</b>.
     Journal Europeen des systemes automatises (JESA),
     Volume 35 - n. 1, 2001.<br>&nbsp;</dd>

<dt>Harel, D. (1987):</dt>
<dd> <a href=\"http://www.inf.ed.ac.uk/teaching/courses/seoc1/2005_2006/resources/statecharts.pdf\">
      A Visual Formalism for Complex Systems</a>.
      Science of Computer Programming 8, 231-274. Department of Applied Mathematics,
      The Weizmann Institute of Science, Rehovot, Israel.<br>&nbsp;</dd>

<dt>Malmheden M. (2007):</dt>
<dd> <a href=\"http://www.control.lth.se/documents/2007/5808.pdf\">
      ModeGraph - A Mode-Automata-Based Modelica Library for Embedded Control</a>.
      Master thesis, Department of Automatic Control, Lund University, Sweden.<br>&nbsp;
     </dd>

<dt>Malmheden M., Elmqvist H., Mattsson S.E., Henrisson D., Otter M. (2008):</dt>
<dd> <a href=\"http://www.modelica.org/events/modelica2008/Proceedings/sessions/session3a3.pdf\">
      ModeGraph - A Modelica Library for Embedded Control based on Mode-Automata</a>.
      Modelica'2008 Conference, March 3-4, 2008.<br>&nbsp;
     </dd>

<dt>Maraninchi F., Rémond, Y. (2002):</dt>
<dd> <a href=\"http://www-verimag.imag.fr/~maraninx/SCP2002.htm\">Mode-Automata:
     A New Domain-Specific Construct for the Development of Safe Critical Systems</a>.<br>&nbsp;
     </dd>

<dt>Mosterman P., Otter M., Elmqvist H. (1998):</dt>
<dd><a href=\"http://www.modelica.org/publications/papers/scsc98fp.pdf\">
     Modeling Petri Nets as Local Constraint Equations for
     Hybrid Systems using Modelica</a>.
     SCSC'98, Reno, Nevada, USA,
     Society for Computer Simulation International, pp. 314-319, 1998.<br>&nbsp;
     </dd>

<dt>Otter M., Malmheden M., Elmqvist H., Mattsson S.E., Johnsson C. (2009):</dt>
<dd> <a href=\"http://www.modelica.org/events/modelica2009\">
     A New Formalism for Modeling of Reactive and Hybrid Systems</a>.
      Modelica'2009 Conference, Como, Italy, Sept. 20-22, 2009.
     </dd>
</dl>

</html>
"));

  end Literature;

  class UsedModelicaExtensions "Used Modelica Extensions"

    annotation (Documentation(info="<html>
<p>
This library is implemented with the
<a href=\"http://www.modelica.org/documents/ModelicaSpec31.pdf\">Modelica 3.1</a> language.
Additionally, some <u>extensions</u> to the Modelica language are used, in order to
guarantee that only valid StateGraph2 graphs are accepted by a Modelica tool.
It is planned to introduce these new language elements into the <u>next version 3.2</u>
of the Modelica language. This means, only Modelica tools will be able to process
this Modelica_StateGraph2 package, if the following (non-standard)
extensions of Modelica are supported:
</p>

<h4>Connection Graphs for State Diagrams (new section 9.4.2)</h4>
<p>
In order that a Modelica translator can guarantee the connection structure of hierarchical state diagrams, some additional operators are needed for the virtual connection graph. This special virtual connection graph is called &quot;virtual state diagram graph&quot; in the sequel. Virtual state diagram graphs are undirected graphs having overdetermined type or record instances as nodes. The branches are defined by connect(..) and by Connections.branch(..) statements. With the new operators Connections.<b>uniqueRoot</b>(..) and Connections.<b>uniqueRootIndices</b>(..) restrictions to the graph are introduced, as defined in the following table. If one node of a virtual connection graph is marked with uniqueRoot(..), then a virtual state diagram graph is present and it is not allowed to apply the operators Connections.root(..), Connections.potentialRoot, or Connections.isRoot(..) on a node of this graph.
</p>

<ul>
<li> New operator: Connections.<b>uniqueRoot</b>(root, message=&quot;&quot;)<br>
The overdetermined type or record instance &quot;root&quot; is a unique root node in a virtual state diagram graph. Every virtual state diagram graph must have exactly one uniqueRoot(..) definition, before breakable branches are removed. Argument &quot;root&quot; may be a vector. Then, the operator is applied on every element of this vector.
The second argument is a message that shall be reported if the root is not unique. From all uniqueRoot(..) definitions of the same graph, only one of the message arguments shall (arbitrarily) be selected and used in the error message. [<i>The error message should additionally include the path (= instance names) between the unique root definitions. A typical value for message is: &quot;Two or more state diagram graphs are connected that should not be connected&quot;</i>]<br>&nbsp;
</li>

<li> New operator: rootIndices = Connections.<b>uniqueRootIndices</b>(roots, nodes, message=&quot;&quot;)<br>
The two first input arguments are vectors of overdetermined types or record instances with the restriction that size(nodes,1) &le; size(roots,1).
Vector &quot;roots&quot; must contain unique roots in the virtual state diagram graphs. The function returns an Integer vector which is a permuted version of vector &quot;1:size(roots,1)&quot;:
<ul>
<li> rootIndices[i], i = 1,.., size(nodes,1):<br>
     There is a path from roots[rootIndices[i]] to nodes[i].
     It is an error, if such a path does not exist.
     In such a case, the error message should include the third argument &quot;message&quot;.</li>
<li> rootIndices[j], j = size(nodes,1) + 1, ..., size(roots,1):<br>
     There is no path from roots[rootIndices[j]] to an element of nodes[:]. </li>
</ul>
[<i>The typical use is to verify the connection structure of a Parallel component.
Furthermore, it is determined at which entry index a branch starts and at which exit index the branch stops. This information might be used to determine that every &quot;loop&quot;
has at least one delayed transition. Example:</i>
<pre>
  EntryPort entry  [nEntry];
  ExitPort  exit   [nExit];
  Integer   indices[nEntry];
<b>equation</b>
  Connections.uniqueRoot(entry, \"...\");
  indices = Connections.uniqueRootIndices(entry, exit, \"...\");
</pre>]
</li>
</ul>

</html>
"));

  end UsedModelicaExtensions;

class ModelicaLicense2 "Modelica License 2"

  annotation (Documentation(info="<html>
<p>All files in this directory (Modelica) and in all
subdirectories, especially all files that build package \"Modelica_StateGraph2\" and all
files in Modelica\\Images are licensed by <b><u>DLR</u></b> and <b><u>Dynasim</u></b> under the
<b><u>Modelica License 2</u></b>.&nbsp;</p>

<hr>
<h4><a name=\"1. The Modelica License 2\"></a>The Modelica License 2</h4>

<p>
<b>Preamble.</b> The goal of this license is that Modelica related
model libraries, software, images, documents, data files etc. can be
used freely in the original or a modified form, in open source and in
commercial environments (as long as the license conditions below are
fulfilled, in particular sections 2c) and 2d). The Original Work is
provided free of charge and the use is completely at your own risk.
Developers of free Modelica packages are encouraged to utilize this
license for their work.</p>

<p>
The Modelica License applies to any Original Work that contains the
following licensing notice adjacent to the copyright notice(s) for
this Original Work:</p>
<p><b>Licensed
by <u>DLR</u> and <u>Dynasim</u> under the Modelica License 2</b></p>

<p><b>1. Definitions.</b></p>
<ol>
	<li>&ldquo;License&rdquo; is this Modelica License.</li>

	<li>
	&ldquo;Original Work&rdquo; is any work of authorship, including
	software, images, documents, data files, that contains the above
	licensing notice or that is packed together with a licensing notice
	referencing it.</li>

	<li>
	&ldquo;Licensor&rdquo; is the provider of the Original Work who has
	placed this licensing notice adjacent to the copyright notice(s) for
	the Original Work. The Original Work is either directly provided by
	the owner of the Original Work, or by a licensee of the owner.</li>

	<li>
	&ldquo;Derivative Work&rdquo; is any modification of the Original
	Work which represents, as a whole, an original work of authorship.
	For the matter of clarity and as examples: </li>

	<ol>
		<li>
		Derivative Work shall not include work that remains separable from
		the Original Work, as well as merely extracting a part of the
		Original Work without modifying it.</li>

		<li>
		Derivative Work shall not include (a) fixing of errors and/or (b)
		adding vendor specific Modelica annotations and/or (c) using a
		subset of the classes of a Modelica package, and/or (d) using a
		different representation, e.g., a binary representation.</li>

		<li>
		Derivative Work shall include classes that are copied from the
		Original Work where declarations, equations or the documentation
		are modified.</li>

		<li>
		Derivative Work shall include executables to simulate the models
		that are generated by a Modelica translator based on the Original
		Work (of a Modelica package).</li>
	</ol>

	<li>
	&ldquo;Modified Work&rdquo; is any modification of the Original Work
	with the following exceptions: (a) fixing of errors and/or (b)
	adding vendor specific Modelica annotations and/or (c) using a
	subset of the classes of a Modelica package, and/or (d) using a
	different representation, e.g., a binary representation.</li>

	<li>
	&quot;Source Code&quot; means the preferred form of the Original
	Work for making modifications to it and all available documentation
	describing how to modify the Original Work.</li>

	<li>
	&ldquo;You&rdquo; means an individual or a legal entity exercising
	rights under, and complying with all of the terms of, this License.</li>

	<li>
	&ldquo;Modelica package&rdquo; means any Modelica library that is
	defined with the<br>&ldquo;<FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\"><b>package</b></FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\">
	&lt;Name&gt; ... </FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\"><b>end</b></FONT></FONT><FONT FACE=\"Courier New, monospace\"><FONT SIZE=2 STYLE=\"font-size: 9pt\">
	&lt;Name&gt;;</FONT></FONT>&ldquo; Modelica language element.</li>
</ol>

<p>
<b>2. Grant of Copyright License.</b> Licensor grants You a
worldwide, royalty-free, non-exclusive, sublicensable license, for
the duration of the copyright, to do the following:</p>

<ol>
	<li><p>
	To reproduce the Original Work in copies, either alone or as part of
	a collection.</li></p>
	<li><p>
	To create Derivative Works according to Section 1d) of this License.</li></p>
	<li><p>
	To distribute or communicate to the public copies of the <u>Original
	Work</u> or a <u>Derivative Work</u> under <u>this License</u>. No
	fee, neither as a copyright-license fee, nor as a selling fee for
	the copy as such may be charged under this License. Furthermore, a
	verbatim copy of this License must be included in any copy of the
	Original Work or a Derivative Work under this License.<br>      For
	the matter of clarity, it is permitted A) to distribute or
	communicate such copies as part of a (possible commercial)
	collection where other parts are provided under different licenses
	and a license fee is charged for the other parts only and B) to
	charge for mere printing and shipping costs.</li></p>
	<li><p>
	To distribute or communicate to the public copies of a <u>Derivative
	Work</u>, alternatively to Section 2c), under <u>any other license</u>
	of your choice, especially also under a license for
	commercial/proprietary software, as long as You comply with Sections
	3, 4 and 8 below. <br>      For the matter of clarity, no
	restrictions regarding fees, either as to a copyright-license fee or
	as to a selling fee for the copy as such apply.</li></p>
	<li><p>
	To perform the Original Work publicly.</li></p>
	<li><p>
	To display the Original Work publicly.</li></p>
</ol>

<p>
<b>3. Acceptance.</b> Any use of the Original Work or a
Derivative Work, or any action according to either Section 2a) to 2f)
above constitutes Your acceptance of this License.</p>

<p>
<b>4. Designation of Derivative Works and of Modified Works.
</b>The identifying designation of Derivative Work and of Modified
Work must be different to the corresponding identifying designation
of the Original Work. This means especially that the (root-level)
name of a Modelica package under this license must be changed if the
package is modified (besides fixing of errors, adding vendor specific
Modelica annotations, using a subset of the classes of a Modelica
package, or using another representation, e.g. a binary
representation).</p>

<p>
<b>5. Grant of Patent License.</b>
Licensor grants You a worldwide, royalty-free, non-exclusive, sublicensable license,
under patent claims owned by the Licensor or licensed to the Licensor by
the owners of the Original Work that are embodied in the Original Work
as furnished by the Licensor, for the duration of the patents,
to make, use, sell, offer for sale, have made, and import the Original Work
and Derivative Works under the conditions as given in Section 2.
For the matter of clarity, the license regarding Derivative Works covers
patent claims to the extent as they are embodied in the Original Work only.</p>

<p>
<b>6. Provision of Source Code.</b> Licensor agrees to provide
You with a copy of the Source Code of the Original Work but reserves
the right to decide freely on the manner of how the Original Work is
provided.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;For the matter of clarity, Licensor might provide only a binary
representation of the Original Work. In that case, You may (a) either
reproduce the Source Code from the binary representation if this is
possible (e.g., by performing a copy of an encrypted Modelica
package, if encryption allows the copy operation) or (b) request the
Source Code from the Licensor who will provide it to You.</p>

<p>
<b>7. Exclusions from License Grant.</b> Neither the names of
Licensor, nor the names of any contributors to the Original Work, nor
any of their trademarks or service marks, may be used to endorse or
promote products derived from this Original Work without express
prior permission of the Licensor. Except as otherwise expressly
stated in this License and in particular in Sections 2 and 5, nothing
in this License grants any license to Licensor&rsquo;s trademarks,
copyrights, patents, trade secrets or any other intellectual
property, and no patent license is granted to make, use, sell, offer
for sale, have made, or import embodiments of any patent claims.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;No license is granted to the trademarks of
Licensor even if such trademarks are included in the Original Work,
except as expressly stated in this License. Nothing in this License
shall be interpreted to prohibit Licensor from licensing under terms
different from this License any Original Work that Licensor otherwise
would have a right to license.</p>

<p>
<b>8. Attribution Rights.</b> You must retain in the Source
Code of the Original Work and of any Derivative Works that You
create, all author, copyright, patent, or trademark notices, as well
as any descriptive text identified therein as an &quot;Attribution
Notice&quot;. The same applies to the licensing notice of this
License in the Original Work. For the matter of clarity, &ldquo;author
notice&rdquo; means the notice that identifies the original
author(s). <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;You must cause the Source Code for any Derivative
Works that You create to carry a prominent Attribution Notice
reasonably calculated to inform recipients that You have modified the
Original Work. <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In case the Original Work or Derivative Work is not provided in
Source Code, the Attribution Notices shall be appropriately
displayed, e.g., in the documentation of the Derivative Work.</p>

<p><b>9. Disclaimer
of Warranty. <br></b><u><b>The Original Work is provided under this
License on an &quot;as is&quot; basis and without warranty, either
express or implied, including, without limitation, the warranties of
non-infringement, merchantability or fitness for a particular
purpose. The entire risk as to the quality of the Original Work is
with You.</b></u><b> </b>This disclaimer of warranty constitutes an
essential part of this License. No license to the Original Work is
granted by this License except under this disclaimer.</p>

<p>
<b>10. Limitation of Liability.</b> Under no circumstances and
under no legal theory, whether in tort (including negligence),
contract, or otherwise, shall the Licensor, the owner or a licensee
of the Original Work be liable to anyone for any direct, indirect,
general, special, incidental, or consequential damages of any
character arising as a result of this License or the use of the
Original Work including, without limitation, damages for loss of
goodwill, work stoppage, computer failure or malfunction, or any and
all other commercial damages or losses. This limitation of liability
shall not apply to the extent applicable law prohibits such
limitation.</p>

<p>
<b>11. Termination.</b> This License conditions your rights to
undertake the activities listed in Section 2 and 5, including your
right to create Derivative Works based upon the Original Work, and
doing so without observing these terms and conditions is prohibited
by copyright law and international treaty. Nothing in this License is
intended to affect copyright exceptions and limitations. This License
shall terminate immediately and You may no longer exercise any of the
rights granted to You by this License upon your failure to observe
the conditions of this license.</p>

<p>
<b>12. Termination for Patent Action.</b> This License shall
terminate automatically and You may no longer exercise any of the
rights granted to You by this License as of the date You commence an
action, including a cross-claim or counterclaim, against Licensor,
any owners of the Original Work or any licensee alleging that the
Original Work infringes a patent. This termination provision shall
not apply for an action alleging patent infringement through
combinations of the Original Work under combination with other
software or hardware.</p>

<p>
<b>13. Jurisdiction.</b> Any action or suit relating to this
License may be brought only in the courts of a jurisdiction wherein
the Licensor resides and under the laws of that jurisdiction
excluding its conflict-of-law provisions. The application of the
United Nations Convention on Contracts for the International Sale of
Goods is expressly excluded. Any use of the Original Work outside the
scope of this License or after its termination shall be subject to
the requirements and penalties of copyright or patent law in the
appropriate jurisdiction. This section shall survive the termination
of this License.</p>

<p>
<b>14. Attorneys&rsquo; Fees.</b> In any action to enforce the
terms of this License or seeking damages relating thereto, the
prevailing party shall be entitled to recover its costs and expenses,
including, without limitation, reasonable attorneys' fees and costs
incurred in connection with such action, including any appeal of such
action. This section shall survive the termination of this License.</p>

<p>
<b>15. Miscellaneous.</b>
</p>
<ol>
	<li>If any
	provision of this License is held to be unenforceable, such
	provision shall be reformed only to the extent necessary to make it
	enforceable.</li>

	<li>No verbal
	ancillary agreements have been made. Changes and additions to this
	License must appear in writing to be valid. This also applies to
	changing the clause pertaining to written form.</li>

	<li>You may use the
	Original Work in all ways not otherwise restricted or conditioned by
	this License or by law, and Licensor promises not to interfere with
	or be responsible for such uses by You.</li>
</ol>

<p>
<br>
</p>

<hr>

<h4><a name=\"2. Frequently Asked Questions|outline\"></a>
Frequently Asked Questions</h4>
<p>This
section contains questions/answer to users and/or distributors of
Modelica packages and/or documents under Modelica License 2. Note,
the answers to the questions below are not a legal interpretation of
the Modelica License 2. In case of a conflict, the language of the
license shall prevail.</p>

<p><br>
</p>

<p><FONT COLOR=\"#008000\"><FONT SIZE=3><b>Using
or Distributing a Modelica </b></FONT></FONT><FONT COLOR=\"#008000\"><FONT SIZE=3><u><b>Package</b></u></FONT></FONT><FONT COLOR=\"#008000\"><FONT SIZE=3><b>
under the Modelica License 2</b></FONT></FONT></p>

<p><b>What are the main
differences to the previous version of the Modelica License?</b></p>
<ol>
	<li><p>
	Modelica License 1 is unclear whether the licensed Modelica package
	can be distributed under a different license. Version 2 explicitly
	allows that &ldquo;Derivative Work&rdquo; can be distributed under
	any license of Your choice, see examples in Section 1d) as to what
	qualifies as Derivative Work (so, version 2 is clearer).</p>
	<li><p>
	If You modify a Modelica package under Modelica License 2 (besides
	fixing of errors, adding vendor specific Modelica annotations, using
	a subset of the classes of a Modelica package, or using another
	representation, e.g., a binary representation), you must rename the
	root-level name of the package for your distribution. In version 1
	you could keep the name (so, version 2 is more restrictive). The
	reason of this restriction is to reduce the risk that Modelica
	packages are available that have identical names, but different
	functionality.</p>
	<li><p>
	Modelica License 1 states that &ldquo;It is not allowed to charge a
	fee for the original version or a modified version of the software,
	besides a reasonable fee for distribution and support<SPAN LANG=\"en-GB\">&ldquo;.
	Version 2 has a </SPAN>similar intention for all Original Work under
	<u>Modelica License 2</u> (to remain free of charge and open source)
	but states this more clearly as &ldquo;No fee, neither as a
	copyright-license fee, nor as a selling fee for the copy as such may
	be charged&rdquo;. Contrary to version 1, Modelica License 2 has no
	restrictions on fees for Derivative Work that is provided under a
	different license (so, version 2 is clearer and has fewer
	restrictions).</p>
	<li><p>
	Modelica License 2 introduces several useful provisions for the
	licensee (articles 5, 6, 12), and for the licensor (articles 7, 12,
	13, 14) that have no counter part in version 1.</p>
	<li><p>
	Modelica License 2 can be applied to all type of work, including
	documents, images and data files, contrary to version 1 that was
	dedicated for software only (so, version 2 is more general).</p>
</ol>

<p><b>Can I distribute a
Modelica package (under Modelica License 2) as part of my commercial
Modelica modeling and simulation environment?</b></p>
<p>Yes,
according to Section 2c). However, you are not allowed to charge a
fee for this part of your environment. Of course, you can charge for
your part of the environment.
</p>

<p><b>Can I distribute a
Modelica package (under Modelica License 2) under a different
license?</b></p>
<p>No.
The license of an unmodified Modelica package cannot be changed
according to Sections 2c) and 2d). This means that you cannot <u>sell</u>
copies of it, any distribution has to be free of charge.</p>

<p><b>Can I distribute a
Modelica package (under Modelica License 2) under a different license
when I first encrypt the package?</b></p>
<p>No.
Merely encrypting a package does not qualify for Derivative Work and
therefore the encrypted package has to stay under Modelica License 2.</p>

<p><b>Can I distribute a
Modelica package (under Modelica License 2) under a different license
when I first add classes to the package?</b></p>
<p>No.
The package itself remains unmodified, i.e., it is Original Work, and
therefore the license for this part must remain under Modelica
License 2. The newly added classes can be, however, under a different
license.
</p>

<p><b>Can
I copy a class out of a Modelica package (under Modelica License 2)
and include it </b><u><b>unmodified</b></u><b> in a Modelica package
under a </b><u><b>commercial/proprietary license</b></u><b>?</b></p>
<p>No,
according to article 2c). However, you can include model, block,
function, package, record and connector classes in your Modelica
package under <u>Modelica License 2</u>. This means that your
Modelica package could be under a commercial/proprietary license, but
one or more classes of it are under Modelica License 2.<br>Note, a
&ldquo;type&rdquo; class (e.g., type Angle = Real(unit=&rdquo;rad&rdquo;))
can be copied and included unmodified under a commercial/proprietary
license (for details, see the next question).</p>

<p><b>Can
I copy a type class or </b><u><b>part</b></u><b> of a model, block,
function, record, connector class, out of a Modelica package (under
Modelica License 2) and include it modified or unmodified in a
Modelica package under a </b><u><b>commercial/proprietary</b></u><b>
license</b></p>
<p>Yes,
according to article 2d), since this will in the end usually qualify
as Derivative Work. The reasoning is the following: A type class or
part of another class (e.g., an equation, a declaration, part of a
class description) cannot be utilized &ldquo;by its own&rdquo;. In
order to make this &ldquo;usable&rdquo;, you have to add additional
code in order that the class can be utilized. This is therefore
usually Derivative Work and Derivative Work can be provided under a
different license. Note, this only holds, if the additional code
introduced is sufficient to qualify for Derivative Work. Merely, just
copying a class and changing, say, one character in the documentation
of this class would be no Derivative Work and therefore the copied
code would have to stay under Modelica License 2.</p>

<p><b>Can
I copy a class out of a Modelica package (under Modelica License 2)
and include it in </b><u><b>modified </b></u><b>form in a
</b><u><b>commercial/proprietary</b></u><b> Modelica package?</b></p>
<p>Yes.
If the modification can be seen as a &ldquo;Derivative Work&rdquo;,
you can place it under your commercial/proprietary license. If the
modification does not qualify as &ldquo;Derivative Work&rdquo; (e.g.,
bug fixes, vendor specific annotations), it must remain under
Modelica License 2. This means that your Modelica package could be
under a commercial/proprietary license, but one or more parts of it
are under Modelica License 2.</p>

<p><b>Can I distribute a
&ldquo;save total model&rdquo; under my commercial/proprietary
license, even if classes under Modelica License 2 are included?</b></p>
<p>Your
classes of the &ldquo;save total model&rdquo; can be distributed
under your commercial/proprietary license, but the classes under
Modelica License 2 must remain under Modelica License 2. This means
you can distribute a &ldquo;save total model&rdquo;, but some parts
might be under Modelica License 2.</p>

<p><b>Can I distribute a
Modelica package (under Modelica License 2) in encrypted form?</b></p>
<p>Yes.
Note, if the encryption does not allow &ldquo;copying&rdquo; of
classes (in to unencrypted Modelica source code), you have to send
the Modelica source code of this package to your customer, if he/she
wishes it, according to article&nbsp;6.</p>

<p><b>Can I distribute an
executable under my commercial/proprietary license, if the model from
which the executable is generated uses models from a Modelica package
under Modelica License 2?</b></p>
<p>Yes,
according to article 2d), since this is seen as Derivative Work. The
reasoning is the following: An executable allows the simulation of a
concrete model, whereas models from a Modelica package (without
pre-processing, translation, tool run-time library) are not able to
be simulated without tool support. By the processing of the tool and
by its run-time libraries, significant new functionality is added (a
model can be simulated whereas previously it could not be simulated)
and functionality available in the package is removed (e.g., to build
up a new model by dragging components of the package is no longer
possible with the executable).</p>

<p><b>Is my modification to
a Modelica package (under Modelica License 2) a Derivative Work?</b></p>
<p>It
is not possible to give a general answer to it. To be regarded as &quot;an
original work of authorship&quot;, a derivative work must be
different enough from the original or must contain a substantial
amount of new material. Making minor changes or additions of little
substance to a preexisting work will not qualify the work as a new
version for such purposes.
</p>

<p><br>
</p>
<p><FONT COLOR=\"#008000\"><FONT SIZE=3><b>Using
or Distributing a Modelica </b></FONT></FONT><FONT COLOR=\"#008000\"><FONT SIZE=3><u><b>Document</b></u></FONT></FONT><FONT COLOR=\"#008000\"><FONT SIZE=3><b>
under the Modelica License 2</b></FONT></FONT></p>

<p>This
section is devoted especially for the following applications:</p>
<ol>
	<li><p>
	A Modelica tool extracts information out of a Modelica package and
	presents the result in form of a &ldquo;manual&rdquo; for this
	package in, e.g., html, doc, or pdf format.</p>
	<li><p>
	The Modelica language specification is a document defining the
	Modelica language. It will be licensed under Modelica License 2.</p>
	<li><p>
	Someone writes a book about the Modelica language and/or Modelica
	packages and uses information which is available in the Modelica
	language specification and/or the corresponding Modelica package.</p>
</ol>

<p><b>Can I sell a manual
that was basically derived by extracting information automatically
from a Modelica package under Modelica License 2 (e.g., a &ldquo;reference
guide&rdquo; of the Modelica Standard Library):</b></p>
<p>Yes.
Extracting information from a Modelica package, and providing it in a
human readable, suitable format, like html, doc or pdf format, where
the content is significantly modified (e.g. tables with interface
information are constructed from the declarations of the public
variables) qualifies as Derivative Work and there are no restrictions
to charge a fee for Derivative Work under alternative 2d).</p>

<p><b>Can
I copy a text passage out of a Modelica document (under Modelica
License 2) and use it </b><u><b>unmodified</b></u><b> in my document
(e.g. the Modelica syntax description in the Modelica Specification)?</b></p>
<p>Yes.
In case you distribute your document, the copied parts are still
under Modelica License 2 and you are not allowed to charge a license
fee for this part. You can, of course, charge a fee for the rest of
your document.</p>

<p><b>Can
I copy a text passage out of a Modelica document (under Modelica
License 2) and use it in </b><u><b>modified</b></u><b> form in my
document?</b></p>
<p>Yes,
the creation of Derivative Works is allowed. In case the content is
significantly modified this qualifies as Derivative Work and there
are no restrictions to charge a fee for Derivative Work under
alternative 2d).</p>

<p><b>Can I sell a printed
version of a Modelica document (under Modelica License 2), e.g., the
Modelica Language Specification?</b></p>
<p>No,
if you are not the copyright-holder, since article 2c) does not allow
a selling fee for a (in this case physical) copy. However, mere
printing and shipping costs may be recovered.</p>
</html>"));

end ModelicaLicense2;

  class Contact "Contact"

    annotation (Documentation(info="<html>
<dl>
<dt><b>Main Authors:</b>
<dd>
</dl>

<table border=0 cellspacing=0 cellpadding=2>
<tr>
<td>
<a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a><br>
    Deutsches Zentrum f&uuml;r Luft und Raumfahrt e.V. (DLR)<br>
    Institut f&uuml;r Robotik und Mechatronik<br>
    Abteilung f&uuml;r Systemdynamik und Regelungstechnik<br>
    Postfach 1116<br>
    D-82230 Wessling<br>
    Germany<br>
    email: <A HREF=\"mailto:Martin.Otter@dlr.de\">Martin.Otter@dlr.de</A></td>
<td valign=\"middle\">&nbsp;&nbsp;and&nbsp;&nbsp;</td>
<td>
    Martin Malmheden and Hilding Elmqvist<br>
    Dynasim AB (a Dassault Systèmes company)<br>
    Ideon Science Park<br>
    SE-223 70 Lund<br>
    Sweden<br>
    email: <A HREF=\"mailto:Martin.Malmheden@3ds.com\">Martin.Malmheden@3ds.com</A></td>
</tr>
</table>


<p><b>Acknowledgements:</b></p>

<p>
This library is based on the Modelica.StateGraph library and
therefore the acknowledgement of the StateGraph library is repeated here:
</p>
<ul>
<li> The development of the StateGraph was strongly motivated by the
     master thesis of Isolde Dressler
     (<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">see literature</a>),
     in which
     a compiler from JGrafChart to Modelica was designed and
     implemented. This project was supervised by Karl-Erik Arzen
     from Departement of Automatic Control, Lund Institut of
     Technology, Lund, Sweden.</li>
<li> The StateGraph library profits also from the experience gained
     in the focused research program (Schwerpunktprogramm)
     \"Continuous-Discrete Dynamic Systems\" (KONDISK), sponsored by the
     Deutsche Forschungsgemeinschaft under grants OT174/1-2 and EN152/22-2.
     This support is most gratefully acknowledged.
 </li>
<li> The implementation of the basic components of the StateGraph library by describing
     finite state machines with equations is based on
     (Elmqvist, Mattsson and Otter, 2001),
     which in turn uses ideas from (Mosterman, Otter and Elmqvist, 1998),
     see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a></li>
</ul>

<p>
The Modelica_StateGraph2 library is based on further ideas developed in
(Malmheden et.al., 2008),
     see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a>,
and the prototype ModeGraph library developed by Martin Malmheden during
his master thesis and for this article.
</p>

<p>
Partial financial support of DLR by BMBF (BMBF Förderkennzeichen: 01IS07022F)
for the development of the Modelica_StateGraph2 library within the
<a href=\"http://www.itea2.org\">ITEA2</a> project
<a href=\"http://www.itea2.org/public/project_leaflets/EUROSYSLIB_profile_oct-07.pdf\">EUROSYSLIB</a>
is highly appreciated.</p>

</html>
"));

  end Contact;
  annotation (__Dymola_DocumentationClass=true, Documentation(info="<html>
<p>
Library <b>Modelica_StateGraph2</b> is a <b>free</b> Modelica package providing
components to model <b>discrete event</b> and <b>reactive</b>
systems in a convenient
way. This package contains the <b>User's Guide</b> for
the library and has the following content:
</p>
<ol>
<li>&quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Tutorial\">Tutorial</a>&quot;
     gives an overview of the most important aspects of the StateGraph2 library.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.ComparisonWithStateGraph1\">Comparison
     with StateGraph1</a>&quot; explains the significant enhancements with respect
     to the previous Modelica.StateGraph version.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.ReleaseNotes\">Release Notes</a>&quot;
    summarizes the differences between different versions of this library.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">Literature</a>&quot;
    provides references that have been used to design and implement this
    library.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.UsedModelicaExtensions\">Used Modelica Extensions</a>&quot;
    summarizes the non-standard extensions used by this library.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.ModelicaLicense2\">Modelica License 2</a>&quot;
    is the license under which this package and all of its subpackages is
    released.</li>
<li> &quot;<a href=\"modelica://Modelica_StateGraph2.UsersGuide.Contact\">Contact</a>&quot;
    provides information about the authors of the library as well as
    acknowledgments.</li>
</ol>
</html>"));
end UsersGuide;
