within Modelica_StateGraph2;
package Examples
"Examples to demonstrate the usage of the Modelica_StateGraph2 library"
  package BasicStateGraphs
  "Examples demonstrating the various modeling possibilities with Modelica_StateGraph2 components"
    model FirstExample "A first simple Modelica_StateGraph2 example"
      extends Modelica.Icons.Example;
      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-4,44},{4,52}})));
    Modelica_StateGraph2.Transition T1(condition=time > 2)
      annotation (Placement(transformation(extent={{-4,26},{4,34}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-4,10},{4,18}})));
    Modelica_StateGraph2.Transition T2(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-4,-6},{4,2}})));
    Modelica_StateGraph2.Step step3(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-4,-24},{4,-16}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{26,18},{34,10}})));
    equation
    connect(initialStep.outPort[1], T1.inPort) annotation (Line(
        points={{0,43.4},{0,34}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{0,25},{0,18}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{0,9.4},{0,2}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{0,-7},{0,-16}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step3.outPort[1], T3.inPort) annotation (Line(
        points={{0,-24.6},{0,-36},{15.0879,-36},{30,-36},{30,-19.1543},{30,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T3.outPort, initialStep.inPort[1]) annotation (Line(
        points={{30,19},{30,52.6436},{30,66},{16,66},{0,66},{0,52}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics),
      experiment(StopTime=10),
      Documentation(info="<html>

</html>"));
    end FirstExample;

    model FirstExample_Variant2
    "Same as FirstExample, but using an autonomous Parallel step to start the graph and not an initial step"
      extends Modelica.Icons.Example;

      Parallel parallel(                               use_inPort=true,
                        nEntry=1, nIn=1,
        initialStep=false)
        annotation (Placement(transformation(extent={{-60,-80},{60,40}})));
      Modelica_StateGraph2.Step initialStep(
                       nIn=2, nOut=1)
        annotation (Placement(transformation(extent={{-4,6},{4,14}})));
      Modelica_StateGraph2.Transition T1(
                    condition=time > 2)
        annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-4,-28},{4,-20}})));
      Modelica_StateGraph2.Transition T2(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
      Modelica_StateGraph2.Step step3(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-4,-62},{4,-54}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{26,-20},{34,-28}})));
    Modelica_StateGraph2.Step step1(
               initialStep=true, nOut=1)
      annotation (Placement(transformation(extent={{-4,76},{4,84}})));
    Modelica_StateGraph2.Transition T4
      annotation (Placement(transformation(extent={{-4,56},{4,64}})));
    equation

    connect(parallel.entry[1], initialStep.inPort[1])
                                                  annotation (Line(
          points={{0,34},{0,14},{-1,14}},
          color={0,0,0},
          smooth=Smooth.None));
    connect(initialStep.outPort[1], T1.inPort)
                                           annotation (Line(
          points={{0,5.4},{0,0.8},{0,0.8},{0,-4}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(T1.outPort, step2.inPort[1]) annotation (Line(
          points={{0,-13},{0,-20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1], T2.inPort) annotation (Line(
          points={{0,-28.6},{0,-36}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort, step3.inPort[1]) annotation (Line(
          points={{0,-45},{0,-50.8333},{0,-54},{0,-54}},
          color={0,0,0},
          smooth=Smooth.None));
      connect(step3.outPort[1], T3.inPort) annotation (Line(
          points={{0,-62.6},{0,-68},{8.64258,-68},{15.9842,-68},{30,-68},{30,
            -52.9219},{30,-28}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T3.outPort, initialStep.inPort[2])
                                           annotation (Line(
          points={{30,-19},{30,7.5459},{30,22},{14.0273,22},{1,22},{1,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(step1.outPort[1], T4.inPort) annotation (Line(
        points={{0,75.4},{0,64},{0,64}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{0,55},{0,40}},
        color={0,0,0},
        smooth=Smooth.None));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),         graphics),
        experiment(StopTime=10));
    end FirstExample_Variant2;

    model FirstExample_Variant3
    "Same as FirstExample, but formulating the transition condition of T2 with logical blocks"
      extends Modelica.Icons.Example;
      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      initialStep=true,
      use_activePort=false,
      nOut=1)
        annotation (Placement(transformation(extent={{-4,44},{4,52}})));
      Modelica_StateGraph2.Transition T1(
                    use_conditionPort=false, condition=time > 2)
        annotation (Placement(transformation(extent={{-4,26},{4,34}})));
      Modelica_StateGraph2.Step step2(
        use_activePort=true,
      nIn=1,
      nOut=1)
        annotation (Placement(transformation(extent={{4,10},{-4,18}})));
      Modelica_StateGraph2.Transition T2(
                    use_conditionPort=true, delayedTransition=false)
        annotation (Placement(transformation(extent={{-4,-8},{4,0}})));
      Modelica_StateGraph2.Step step3(
                        nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{26,18},{34,10}})));
    Blocks.MathBoolean.OnDelay onDelay(delayTime=1)
      annotation (Placement(transformation(extent={{-26,-10},{-14,2}})));
    equation
      connect(step3.outPort[1], T3.inPort) annotation (Line(
          points={{0,-26.6},{0,-30},{7.76367,-30},{17.3183,-30},{30,-30},{30,
            -18.2422},{30,10}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T3.outPort, initialStep.inPort[1])
                                           annotation (Line(
          points={{30,19},{30,46.8672},{30,60},{14.2383,60},{0,60},{0,52}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(initialStep.outPort[1], T1.inPort) annotation (Line(
        points={{0,43.4},{0,38.7},{0,34}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{0,25},{0,21.5},{0,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{0,9.4},{0,4.7},{0,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{0,-9},{0,-9},{0,-13.5},{0,-18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(onDelay.y, T2.conditionPort) annotation (Line(
        points={{-12.8,-4},{-5,-4}},
        color={255,0,255},
        smooth=Smooth.None));
    connect(step2.activePort, onDelay.u) annotation (Line(
        points={{-4.72,14},{-28.18,14},{-36,14},{-36,5.22852},{-36,-4},{-27.8,
            -4}},
        color={255,0,255},
        smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),         graphics),
        experiment(StopTime=10));
    end FirstExample_Variant3;

    model FirstExample_Variant4
    "Same as FirstExample_Variant3, but without a delayed transition (by switching the check off)"
      extends Modelica.Icons.Example;
      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      initialStep=true,
      use_activePort=false,
      nOut=1)
        annotation (Placement(transformation(extent={{-4,44},{4,52}})));
      Modelica_StateGraph2.Transition T1(
                    use_conditionPort=false, condition=time > 2)
        annotation (Placement(transformation(extent={{-4,26},{4,34}})));
      Modelica_StateGraph2.Step step2(
        use_activePort=true,
      nIn=1,
      nOut=1)
        annotation (Placement(transformation(extent={{4,10},{-4,18}})));
      Modelica_StateGraph2.Transition T2(
                    use_conditionPort=true, delayedTransition=false)
        annotation (Placement(transformation(extent={{-4,-8},{4,0}})));
      Modelica_StateGraph2.Step step3(
        use_activePort=true,
      nIn=1,
      nOut=1)
        annotation (Placement(transformation(extent={{4,-26},{-4,-18}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=false, loopCheck=false)
        annotation (Placement(transformation(extent={{26,18},{34,10}})));
      Modelica.Blocks.Logical.Timer timer1
                                          annotation (Placement(transformation(
                extent={{-52,-10},{-40,2}},rotation=0)));
      Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual(threshold=1)
        annotation (Placement(transformation(extent={{-32,-10},{-20,2}}, rotation=
                 0)));
      Modelica_StateGraph2.Step step4(
                        nOut=1,
      use_activePort=false,
      nIn=1)
        annotation (Placement(transformation(extent={{-4,-62},{4,-54}})));
      Modelica_StateGraph2.Transition T4(
                    use_conditionPort=true, delayedTransition=false)
        annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
      Modelica.Blocks.Logical.Timer timer2
                                          annotation (Placement(transformation(
                extent={{-52,-46},{-40,-34}},
                                           rotation=0)));
      Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqual1(
                                                                 threshold=1)
        annotation (Placement(transformation(extent={{-32,-46},{-20,-34}},
                                                                         rotation=
                 0)));
    equation

    connect(T3.outPort, initialStep.inPort[1])
                                           annotation (Line(
          points={{30,19},{30,48.8691},{30,60},{16.2306,60},{10.2246,60},{0,
            60},{0,52}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(timer1.y, greaterEqual.u)
                                       annotation (Line(
          points={{-39.4,-4},{-33.2,-4}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(greaterEqual.y, T2.conditionPort) annotation (Line(
          points={{-19.4,-4},{-5,-4}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(step2.activePort, timer1.u)
                                         annotation (Line(
          points={{-4.72,14},{-4.72,14},{-52.7121,14},{-60,14},{-60,4.56055},
            {-60,-4},{-53.2,-4}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(step4.outPort[1], T3.inPort) annotation (Line(
          points={{0,-62.6},{0,-70},{9.7741,-70},{15.7617,-70},{30,-70},{30,
            -54.4531},{30,10}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(timer2.y, greaterEqual1.u)
                                       annotation (Line(
          points={{-39.4,-40},{-33.2,-40}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(greaterEqual1.y, T4.conditionPort) annotation (Line(
          points={{-19.4,-40},{-5,-40}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(step3.activePort, timer2.u) annotation (Line(
          points={{-4.72,-22},{-49.3111,-22},{-60,-22},{-60,-31.123},{-60,-40},
            {-53.2,-40}},
          color={255,0,255},
          smooth=Smooth.Bezier));
    connect(initialStep.outPort[1], T1.inPort) annotation (Line(
        points={{0,43.4},{0,38.7},{0,34}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{0,25},{0,25},{0,21.5},{0,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{0,9.4},{0,4.7},{0,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{0,-9},{0,-13.5},{0,-18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T4.inPort) annotation (Line(
        points={{0,-26.6},{0,-31.3},{0,-36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, step4.inPort[1]) annotation (Line(
        points={{0,-45},{0,-49.5},{0,-54}},
        color={0,0,0},
        smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),         graphics),
        experiment(StopTime=10));
    end FirstExample_Variant4;

    model Sequence "Example to demonstrate a sequence of simple steps"
      extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
                         initialStep=true, nOut=1)
        annotation (Placement(transformation(extent={{6,46},{14,54}})));
      Modelica_StateGraph2.Transition T1(
                    condition=time > 1)
        annotation (Placement(transformation(extent={{6,32},{14,40}})));
      Modelica_StateGraph2.Step step2(           nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{6,16},{14,24}})));
      Modelica_StateGraph2.Transition T2(
                    condition=time > 2)
        annotation (Placement(transformation(extent={{6,2},{14,10}})));
      Modelica_StateGraph2.Step step3(           nIn=1)
        annotation (Placement(transformation(extent={{6,-12},{14,-4}})));
    equation
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{10,45.4},{10,42.7},{10,40}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{10,31},{10,27.5},{10,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{10,15.4},{10,12.7},{10,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{10,1},{10,-4},{10,-4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
        annotation (
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),
                  graphics),
          experiment(StopTime=3));
    end Sequence;

    model Composite1 "Example of a composite step"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        initialStep=true,
        nIn=1,
      nOut=1)  annotation (Placement(transformation(extent={{-4,66},{4,74}})));
      Parallel parallel(
        initialStep=false,
        use_inPort=true,
        use_outPort=true,
        nEntry=1,
        nOut=1,
        use_suspend=true,
        nResume=1,
        nExit=1,
        nSuspend=1,
      nIn=1)    annotation (Placement(transformation(extent={{-40,-60},{40,40}})));
      Modelica_StateGraph2.Transition T1(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,52},{4,60}})));
      Modelica_StateGraph2.Step step3(
                         nIn=2, nOut=1)
        annotation (Placement(transformation(extent={{-4,18},{4,26}})));
      Modelica_StateGraph2.Transition T2(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,4},{4,12}})));
      Modelica_StateGraph2.Step step4(
                 nOut=2, nIn=1)
        annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{56,4},{64,-4}})));
      Modelica_StateGraph2.Transition T4(           condition=time > 3.5 and
          time <= 4.5)
        annotation (Placement(transformation(extent={{-64,2},{-56,10}})));
      Modelica_StateGraph2.Step step5(           nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{-64,-14},{-56,-6}})));
      Modelica_StateGraph2.Transition T5(
                    delayedTransition=true, waitTime=2)
        annotation (Placement(transformation(extent={{-64,-28},{-56,-20}})));
      Modelica_StateGraph2.Transition T6(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,-28},{4,-20}})));
      Modelica_StateGraph2.Step step6(           nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-4,-42},{4,-34}})));
      Modelica_StateGraph2.Transition T7(    waitTime=1,
        delayedTransition=false,
        condition=time > 2.5 and time < 4.5)
        annotation (Placement(transformation(extent={{22,12},{30,4}})));
    equation
      connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
          points={{0,35},{0,26},{-1,26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.outPort[1], T3.inPort) annotation (Line(
          points={{0,-61.25},{0,-80},{24.4292,-80},{39.9609,-80},{60,-80},{60,-58.6992},
              {60,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort, step1.inPort[1]) annotation (Line(
          points={{60,5},{60,66.873},{60,84},{40.4601,84},{13.3594,84},{0,84},{0,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T5.outPort, parallel.resume[1]) annotation (Line(
          points={{-60,-29},{-60,-38.125},{-48.0078,-38.125},{-40,-38.125}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T6.inPort, step4.outPort[1]) annotation (Line(
          points={{0,-20},{0,-12.6},{-1,-12.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step4.outPort[2], T7.inPort) annotation (Line(
          points={{1,-12.6},{1,-16},{6.88379,-16},{15.3218,-16},{26,-16},{26,-5.78516},
              {26,4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T7.outPort, step3.inPort[2]) annotation (Line(
          points={{26,13},{26,21.5498},{26,30},{14.8906,30},{8,30},{1,30},{1,26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.inPort, parallel.suspend[1]) annotation (Line(
          points={{-60,10},{-60,18.125},{-50.0156,18.125},{-42,18.125}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step5.outPort[1], T5.inPort) annotation (Line(
          points={{-60,-14.6},{-60,-14.6},{-60,-17.3},{-60,-20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort, step5.inPort[1]) annotation (Line(
          points={{-60,1},{-60,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T6.outPort, step6.inPort[1]) annotation (Line(
          points={{0,-29},{0,-31.5},{0,-34}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step6.outPort[1], parallel.exit[1]) annotation (Line(
          points={{0,-42.6},{0,-55.625},{0,-55.625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1], T2.inPort) annotation (Line(
          points={{0,17.4},{0,14.7},{0,12}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort, step4.inPort[1]) annotation (Line(
          points={{0,3},{0,-4},{0,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T1.outPort, parallel.inPort[1]) annotation (Line(
        points={{0,51},{0,40}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{0,65.4},{0,60}},
        color={0,0,0},
        smooth=Smooth.None));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics), experiment(StopTime=12));
    end Composite1;

    model Composite2 "Example of a composite step as submodel"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        nOut=1,
        initialStep=true,
        nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
      Modelica_StateGraph2.Transition T1(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{36,32},{44,24}})));
      Modelica_StateGraph2.Transition T4(
                    condition=time > 3.5 and time <= 4.5)
        annotation (Placement(transformation(extent={{-52,40},{-44,48}})));
      Modelica_StateGraph2.Step step5(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-52,24},{-44,32}})));
      Modelica_StateGraph2.Transition T5(
                    delayedTransition=true, waitTime=2)
        annotation (Placement(transformation(extent={{-52,8},{-44,16}})));
      Utilities.Composite2_Subgraph step2(
        initialStep=false,
        use_suspend=true,
        nIn=1,
        nOut=1,
        nSuspend=1,
        nResume=1)
        annotation (Placement(transformation(extent={{-16,16},{4,36}})));
    equation
      connect(step1.outPort[1], T1.inPort) annotation (Line(
          points={{-6,65.4},{-6,60}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort, step1.inPort[1]) annotation (Line(
          points={{40,33},{40,33},{40,67.3154},{40,84},{22.6961,84},{5.59375,
            84},{-6,84},{-6,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step5.outPort[1], T5.inPort) annotation (Line(
          points={{-48,23.4},{-48,16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort, step5.inPort[1]) annotation (Line(
          points={{-48,39},{-48,32}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort, step2.inPort[1]) annotation (Line(
          points={{-6,51},{-6,46}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1], T3.inPort) annotation (Line(
          points={{-5.9,5.3},{-5.9,-10},{10.656,-10},{24,-10},{40,-10},{40,6},
            {40,24}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.suspend[1], T4.inPort) annotation (Line(
          points={{-26.8,38},{-32,38},{-32,46},{-32,54},{-40.2188,54},{-48,54},
            {-48,48}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.resume[1], T5.outPort) annotation (Line(
          points={{-26.05,14},{-32,14},{-32,6.89063},{-32,0},{-40,0},{-48,0},
            {-48,7}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),   graphics),
        experiment(StopTime=12));
    end Composite2;

    model ParallelBranches "Example to demonstrate parallel execution paths"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        nOut=1,
        initialStep=true,
        nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
      Parallel parallel(
        initialStep=false,
        use_inPort=true,
        use_outPort=true,
        nIn=1,
        nEntry=2,
        nOut=1,
        nExit=2)
                annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
      Modelica_StateGraph2.Transition T1(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-32,-6},{-24,2}})));
      Modelica_StateGraph2.Step step3(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{6,14},{14,22}})));
      Modelica_StateGraph2.Transition T2(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{6,-4},{14,4}})));
      Modelica_StateGraph2.Step step4(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{6,-26},{14,-18}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{64,4},{72,-4}})));
    equation
      connect(step1.outPort[1], T1.inPort) annotation (Line(
          points={{-6,65.4},{-6,60}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort, parallel.inPort[1]) annotation (Line(
          points={{-6,51},{-6,42}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1], T2.inPort) annotation (Line(
          points={{10,13.4},{10,4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
          points={{-7.9,37.5},{-7.9,32},{-16.8704,32},{-28,32},{-28,20.457},{-28,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
          points={{-4.1,37.5},{-4.1,32},{3,32},{10,32},{10,22}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort, step4.inPort[1]) annotation (Line(
          points={{10,-5},{10,-18}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.outPort[1], T3.inPort) annotation (Line(
          points={{-6,-49.125},{-6,-56.4298},{-6,-72},{14.2104,-72},{49.9336,-72},{68,
              -72},{68,-52.4766},{68,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort, step1.inPort[1]) annotation (Line(
          points={{68,5},{68,74.3945},{68,90},{48.009,90},{9.17578,90},{-6,90},{-6,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
          points={{-28,-6.6},{-28,-19.7713},{-28,-32},{-17.5574,-32},{-7.9,
            -32},{-7.9,-44.0625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
          points={{10,-26.6},{10,-32},{3.78994,-32},{-4.1,-32},{-4.1,-44.0625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),   graphics),
        experiment(StopTime=10));
    end ParallelBranches;

    model ParallelWithSuspendAndNoResume
    "Same as example ParallelBranches, but the parallel execution path is suspended and then resumed from the inPort"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        nOut=1,
        initialStep=true,
        nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
      Parallel parallel(
        initialStep=false,
        use_inPort=true,
        use_outPort=true,
        nIn=2,
        nEntry=2,
        nOut=1,
        use_suspend=true,
        nSuspend=1,
        nResume=0,
        nExit=2)
                annotation (Placement(transformation(extent={{-44,-58},{32,42}})));
      Modelica_StateGraph2.Transition T1(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-32,-12},{-24,-4}})));
      Modelica_StateGraph2.Step step3(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{6,20},{14,28}})));
      Modelica_StateGraph2.Transition T2(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{6,6},{14,14}})));
      Modelica_StateGraph2.Step step4(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{6,-8},{14,0}})));
      Modelica_StateGraph2.Transition T3(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{46,4},{54,-4}})));
      Modelica_StateGraph2.Transition T4(
                    condition=time > 2.5 and time <= 4)
        annotation (Placement(transformation(extent={{-76,34},{-68,26}})));
      Modelica_StateGraph2.Step step5(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-76,48},{-68,40}})));
      Modelica_StateGraph2.Transition T5(
                    delayedTransition=true, waitTime=2)
        annotation (Placement(transformation(extent={{-76,62},{-68,54}})));
      Modelica_StateGraph2.Transition T6(
                    delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{6,-22},{14,-14}})));
      Modelica_StateGraph2.Step step6(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{6,-36},{14,-28}})));
    equation
      connect(step1.outPort[1], T1.inPort) annotation (Line(
          points={{-6,65.4},{-6,60}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort, parallel.inPort[1]) annotation (Line(
          points={{-6,51},{-6,42},{-9.8,42}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1], T2.inPort) annotation (Line(
          points={{10,19.4},{10,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
          points={{-7.9,37},{-7.9,32},{-16.203,32},{-28,32},{-28,-4},{-28,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
          points={{-4.1,37},{-4.1,32},{2.44053,32},{10,32},{10,28}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort, step4.inPort[1]) annotation (Line(
          points={{10,5},{10,2.22045e-016}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.outPort[1], T3.inPort) annotation (Line(
          points={{-6,-59.25},{-6,-66},{3.07045,-66},{36.2188,-66},{50,-66},{
            50,-49.5918},{50,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort, step1.inPort[1]) annotation (Line(
          points={{50,5},{50,69.1104},{50,84},{30.0332,84},{8.27344,84},{-6,
            84},{-6,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step5.outPort[1], T5.inPort) annotation (Line(
          points={{-72,48.6},{-72,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort, step5.inPort[1]) annotation (Line(
          points={{-72,35},{-72,40}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.suspend[1], T4.inPort) annotation (Line(
          points={{-45.9,20.125},{-54,20},{-62,20},{-72,20},{-72,26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step4.outPort[1], T6.inPort) annotation (Line(
          points={{10,-8.6},{10,-14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T6.outPort, step6.inPort[1]) annotation (Line(
          points={{10,-23},{10,-28}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T5.outPort, parallel.inPort[2]) annotation (Line(
          points={{-72,63},{-72,66},{-68,66},{-31.8125,66},{-20,66},{-20,56},
            {-20,46},{-12,46},{-12,42},{-2.2,42}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
          points={{-28,-12.6},{-28,-31.765},{-28,-44},{-17.5574,-44},{-7.9,
            -44},{-7.9,-53.625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
          points={{10,-36.6},{10,-44},{4.45088,-44},{-4.1,-44},{-4.1,-53.625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),   graphics),
        experiment(StopTime=12));
    end ParallelWithSuspendAndNoResume;

    model ParallelInsideDelay
    "Demonstrates that a delay in one branch of a Parallel is sufficient so that no infinite event looping occurs"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        nOut=1,
        initialStep=true,
        nIn=1) annotation (Placement(transformation(extent={{-4,66},{4,74}})));
      Parallel parallel(
        initialStep=false,
        use_inPort=true,
        use_outPort=true,
        nIn=1,
        nEntry=2,
        nOut=1,
        nExit=2)
                annotation (Placement(transformation(extent={{-40,-60},{40,40}})));
      Modelica_StateGraph2.Transition T1(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{-4,48},{4,56}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
      Modelica_StateGraph2.Step step3(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{16,6},{24,14}})));
      Modelica_StateGraph2.Transition T2(    waitTime=1, delayedTransition=
          true)
        annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
      Modelica_StateGraph2.Step step4(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{16,-34},{24,-26}})));
      Modelica_StateGraph2.Transition T3(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{56,-6},{64,-14}})));
      Modelica_StateGraph2.Transition T4(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
      Modelica_StateGraph2.Step step5(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-24,-32},{-16,-24}})));
    equation
      connect(step1.outPort[1],T1. inPort) annotation (Line(
          points={{0,65.4},{0,56}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort,parallel. inPort[1]) annotation (Line(
          points={{0,47},{0,47},{0,40}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1],T2. inPort) annotation (Line(
          points={{20,5.4},{20,5.4},{20,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[1],step2. inPort[1]) annotation (Line(
          points={{-2,35},{-2,22},{-10.666,22},{-20,22},{-20,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[2],step3. inPort[1]) annotation (Line(
          points={{2,35},{2,22},{11.7734,22},{20,22},{20,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort,step4. inPort[1]) annotation (Line(
          points={{20,-15},{20,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.outPort[1],T3. inPort) annotation (Line(
          points={{0,-61.25},{0,-72},{15.5273,-72},{42.8884,-72},{60,-72},{60,
            -51.6094},{60,-14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort,step1. inPort[1]) annotation (Line(
          points={{60,-5},{60,-5},{60,66.4434},{60,84},{41.3594,84},{15.6094,
            84},{0,84},{0,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));

    connect(step2.outPort[1], T4.inPort) annotation (Line(
        points={{-20,5.4},{-20,-2},{-20,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T4.outPort, step5.inPort[1]) annotation (Line(
        points={{-20,-15},{-20,-20},{-20,-24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-20,-32.6},{-20,-42},{-12.459,-42},{-2,-42},{-2,-55.625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
        points={{20,-34.6},{20,-42},{11.334,-42},{2,-42},{2,-55.625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),      graphics),
      experiment(StopTime=10));
    end ParallelInsideDelay;

    model ParallelOutsideDelay
    "Demonstrates that a delay outside of a Parallel is sufficient so that no infinite event looping occurs"
       extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step step1(
        nOut=1,
        initialStep=true,
        nIn=1) annotation (Placement(transformation(extent={{-4,66},{4,74}})));
      Parallel parallel(
        initialStep=false,
        use_inPort=true,
        use_outPort=true,
        nIn=1,
        nEntry=2,
        nOut=1,
        nExit=2)
                annotation (Placement(transformation(extent={{-40,-60},{40,40}})));
      Modelica_StateGraph2.Transition T1(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{-4,48},{4,56}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
      Modelica_StateGraph2.Step step3(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{16,6},{24,14}})));
      Modelica_StateGraph2.Transition T2(
                               delayedTransition=false)
        annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
      Modelica_StateGraph2.Step step4(
                 nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{16,-34},{24,-26}})));
      Modelica_StateGraph2.Transition T3(    waitTime=1, delayedTransition=
          true)
        annotation (Placement(transformation(extent={{56,-6},{64,-14}})));
      Modelica_StateGraph2.Transition T4(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
      Modelica_StateGraph2.Step step5(
                 nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-24,-32},{-16,-24}})));
    equation

      connect(step1.outPort[1],T1. inPort) annotation (Line(
          points={{0,65.4},{0,56}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(T1.outPort,parallel. inPort[1]) annotation (Line(
          points={{0,47},{0,47},{0,40}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1],T2. inPort) annotation (Line(
          points={{20,5.4},{20,5.4},{20,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[1],step2. inPort[1]) annotation (Line(
          points={{-2,35},{-2,22},{-10.666,22},{-20,22},{-20,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.entry[2],step3. inPort[1]) annotation (Line(
          points={{2,35},{2,22},{11.7734,22},{20,22},{20,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort,step4. inPort[1]) annotation (Line(
          points={{20,-15},{20,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(parallel.outPort[1],T3. inPort) annotation (Line(
          points={{0,-61.25},{0,-72},{15.5273,-72},{42.8884,-72},{60,-72},{60,
            -51.6094},{60,-14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T3.outPort,step1. inPort[1]) annotation (Line(
          points={{60,-5},{60,-5},{60,66.4434},{60,84},{41.3594,84},{15.6094,
            84},{0,84},{0,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(step2.outPort[1],T4. inPort) annotation (Line(
        points={{-20,5.4},{-20,5.4},{-20,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort,step5. inPort[1]) annotation (Line(
        points={{-20,-15},{-20,-20},{-20,-24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1],parallel. exit[1]) annotation (Line(
        points={{-20,-32.6},{-20,-42},{-12.459,-42},{-2,-42},{-2,-55.625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1],parallel. exit[2]) annotation (Line(
        points={{20,-34.6},{20,-42},{11.334,-42},{2,-42},{2,-55.625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),      graphics),
      experiment(StopTime=10));
    end ParallelOutsideDelay;

    model ParallelAutonomous "Demonstrates Parallel that runs autonomously"
        extends Modelica.Icons.Example;

      Parallel parallel(
        use_inPort=false,
        use_outPort=false,
        initialStep=true,
      nEntry=2) annotation (Placement(transformation(extent={{-60,-40},{60,40}})));
      Modelica_StateGraph2.Step step2(
                 nIn=2, nOut=1)
        annotation (Placement(transformation(extent={{-24,10},{-16,18}})));
      Modelica_StateGraph2.Step step3(           nIn=2, nOut=1)
        annotation (Placement(transformation(extent={{16,10},{24,18}})));
      Modelica_StateGraph2.Transition T2(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{16,-4},{24,4}})));
      Modelica_StateGraph2.Step step4(           nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{16,-18},{24,-10}})));
      Modelica_StateGraph2.Transition T1(    waitTime=1, delayedTransition=
          false)
        annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
      Modelica_StateGraph2.Step step1(           nIn=1, nOut=1)
        annotation (Placement(transformation(extent={{-24,-18},{-16,-10}})));
      Modelica_StateGraph2.Transition T3(    waitTime=1, delayedTransition=
          true)
        annotation (Placement(transformation(extent={{-44,4},{-36,-4}})));
      Modelica_StateGraph2.Transition T4(    waitTime=1, delayedTransition=
          true)
        annotation (Placement(transformation(extent={{36,4},{44,-4}})));
    equation

    connect(step2.outPort[1], T1.inPort) annotation (Line(
        points={{-20,9.4},{-20,6.7},{-20,4}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T1.outPort, step1.inPort[1]) annotation (Line(
        points={{-20,-5},{-20,-7.5},{-20,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-18.6},{-20,-30},{-29.3164,-30},{-40,-30},{-40,-18.6758},
            {-40,-4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step2.inPort[1]) annotation (Line(
        points={{-40,5},{-40,5},{-40,12},{-40,26},{-29.5703,26},{-21,26},{-21,
            18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[2]) annotation (Line(
        points={{-3,36},{-3,26},{-10,26},{-19,26},{-19,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{3,36},{3,26},{12.4297,26},{19,26},{19,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{20,9.4},{20,4},{20,4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{20,-5},{20,-7.5},{20,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T4.inPort) annotation (Line(
        points={{20,-18.6},{20,-28},{30.4297,-28},{40,-28},{40,-18.4609},{40,
            -4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, step3.inPort[2]) annotation (Line(
        points={{40,5},{40,18},{40,26},{30.4629,26},{21,26},{21,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}),      graphics),
      experiment(StopTime=6));
    end ParallelAutonomous;

    model Actions1 "Demonstrates MultiSwitch and ShowValue"
         extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      nOut=1,
      initialStep=true,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-64,64},{-56,72}})));
      Modelica_StateGraph2.Transition T1(
                    use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,46},{-56,54}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-64,30},{-56,38}})));
      Modelica_StateGraph2.Transition T2(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,12},{-56,20}})));
      Modelica_StateGraph2.Step step3(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-64,-6},{-56,2}})));
      Modelica_StateGraph2.Transition T3(
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-94,18},{-86,10}})));
      Modelica_StateGraph2.Step step4(
                 nIn=1, nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-64,-42},{-56,-34}})));
      Modelica_StateGraph2.Transition T4(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,-24},{-56,-16}})));
      Modelica_StateGraph2.Transition T5(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,-60},{-56,-52}})));
      Modelica_StateGraph2.Step step5(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-64,-78},{-56,-70}})));
    Modelica_StateGraph2.Blocks.MathBoolean.Or or1(
                          nu=2)
      annotation (Placement(transformation(extent={{86,38},{98,26}})));
    Modelica_StateGraph2.Blocks.MathReal.MultiSwitch multiSwitch1(nu=2, expr={2.2,4.4})
      annotation (Placement(transformation(extent={{16,62},{56,82}})));

    Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch multiSwitch2(nu=2, expr={2,4})
      annotation (Placement(transformation(extent={{-1,-46},{39,-26}})));

    Modelica_StateGraph2.Blocks.MathBoolean.MultiSwitch multiSwitch3(nu=2, expr={true,
            true})
      annotation (Placement(transformation(extent={{-1,-7},{39,13}})));
    Modelica_StateGraph2.Blocks.MathReal.ShowValue showValue1(
                                     use_numberPort=false, number=multiSwitch1.y)
      annotation (Placement(transformation(extent={{68,46},{88,66}})));
    Modelica_StateGraph2.Blocks.MathReal.ShowValue showValue
      annotation (Placement(transformation(extent={{68,62},{88,82}})));
    Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue2(
                                        use_activePort=false, active=multiSwitch3.y)
      annotation (Placement(transformation(extent={{50,-18},{70,2}})));

    Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue3
      annotation (Placement(transformation(extent={{50,-7},{70,13}})));
    Modelica_StateGraph2.Blocks.MathInteger.ShowValue showValue4
      annotation (Placement(transformation(extent={{48,-46},{68,-26}})));
    Modelica_StateGraph2.Blocks.MathInteger.ShowValue showValue5(
                                        use_numberPort=false, number=multiSwitch2.y)
      annotation (Placement(transformation(extent={{48,-60},{68,-40}})));

    equation
    connect(initialStep.outPort[1],T1. inPort)
                                           annotation (Line(
          points={{-60,63.4},{-60,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort,step2. inPort[1]) annotation (Line(
          points={{-60,45},{-60,38}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1],T2. inPort) annotation (Line(
          points={{-60,29.4},{-60,20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort,step3. inPort[1]) annotation (Line(
          points={{-60,11},{-60,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T3.outPort,initialStep. inPort[1])
                                           annotation (Line(
          points={{-90,19},{-90,68.6221},{-90,80},{-76.892,80},{-69.7852,80},
            {-60,80},{-60,72}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1],T4. inPort) annotation (Line(
          points={{-60,-6.6},{-60,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort,step4. inPort[1]) annotation (Line(
          points={{-60,-25},{-60,-34}},
          color={0,0,0},
          smooth=Smooth.Bezier));

    connect(step4.outPort[1], T5.inPort) annotation (Line(
        points={{-60,-42.6},{-60,-52}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T5.outPort, step5.inPort[1]) annotation (Line(
        points={{-60,-61},{-60,-70}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T3.inPort) annotation (Line(
        points={{-60,-78.6},{-60,-86},{-69.9902,-86},{-75.9892,-86},{-90,-86},
            {-90,-74},{-90,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.activePort, or1.u[1]) annotation (Line(
        points={{-55.28,-74},{-55.28,-74},{52.4113,-74},{74,-74},{74,-51.1484},
            {74,16},{74,30},{86,30},{86,29.9}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(initialStep.activePort, multiSwitch1.u[1]) annotation (Line(
        points={{-55.28,68},{-28,68},{-20,68},{-20,73.5},{-13.2148,73.5},{16,
            73.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step2.activePort, multiSwitch1.u[2]) annotation (Line(
        points={{-55.28,34},{-40,34},{-20,34},{-20,53.6045},{-20,70.5},{-0.488281,
            70.5},{16,70.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step3.activePort, multiSwitch2.u[1]) annotation (Line(
        points={{-55.28,-2},{-34,-2},{-10,-2},{-10,-24},{-10,-34.5},{-1,-34.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(step5.activePort, multiSwitch2.u[2]) annotation (Line(
        points={{-55.28,-74},{-38,-74},{-12,-74},{-12,-48.8706},{-12,-37.5},{
            -1,-37.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step2.activePort, multiSwitch3.u[1]) annotation (Line(
        points={{-55.28,34},{-40,34},{-24,34},{-24,19.3364},{-24,4.5},{-1,4.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(step3.activePort, multiSwitch3.u[2]) annotation (Line(
        points={{-55.28,-2},{-21.3772,-2},{-14,-2},{-14,1.5},{-8.18555,1.5},{
            -1,1.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(multiSwitch1.y, showValue.numberPort) annotation (Line(
        points={{57,72},{66.5,72}},
        color={0,0,127},
        smooth=Smooth.Bezier));
    connect(multiSwitch3.y, showValue3.activePort) annotation (Line(
        points={{40,3},{48.5,3}},
        color={255,0,255},
        smooth=Smooth.None));
    connect(multiSwitch2.y, showValue4.numberPort) annotation (Line(
        points={{40,-36},{46.5,-36}},
        color={255,127,0},
        smooth=Smooth.None));
    connect(initialStep.activePort, or1.u[2]) annotation (Line(
        points={{-55.28,68},{-4.32594,68},{16,68},{16,51.6128},{16,34.1},{
            33.1582,34.1},{86,34.1}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics), experiment(StopTime=10));
    end Actions1;

    model Actions2 "Demonstrates rising and falling edge action blocks"
         extends Modelica.Icons.Example;

      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      nOut=1,
      initialStep=true,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,66},{-26,74}})));
      Modelica_StateGraph2.Transition T1(
                    use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,46},{-26,54}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1,
      use_activePort=false)
        annotation (Placement(transformation(extent={{-34,30},{-26,38}})));
      Modelica_StateGraph2.Transition T2(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,12},{-26,20}})));
      Modelica_StateGraph2.Step step3(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,-6},{-26,2}})));
      Modelica_StateGraph2.Transition T3(
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,18},{-56,10}})));
      Modelica_StateGraph2.Step step4(
                 nIn=1, nOut=1,
      use_activePort=false)
        annotation (Placement(transformation(extent={{-34,-42},{-26,-34}})));
      Modelica_StateGraph2.Transition T4(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,-24},{-26,-16}})));
      Modelica_StateGraph2.Transition T5(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,-60},{-26,-52}})));
      Modelica_StateGraph2.Step step1(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,-78},{-26,-70}})));
    Blocks.MathBoolean.RisingEdge risingEdge
      annotation (Placement(transformation(extent={{-6,66},{2,74}})));
    Blocks.MathBoolean.MultiSwitch set1(nu=2, expr={true,false})
      annotation (Placement(transformation(extent={{22,24},{62,44}})));
    Blocks.MathBoolean.FallingEdge fallingEdge
      annotation (Placement(transformation(extent={{-4,-6},{4,2}})));
    equation

    connect(initialStep.outPort[1],T1. inPort)
                                           annotation (Line(
          points={{-30,65.4},{-30,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort,step2. inPort[1]) annotation (Line(
          points={{-30,45},{-30,38}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1],T2. inPort) annotation (Line(
          points={{-30,29.4},{-30,20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort,step3. inPort[1]) annotation (Line(
          points={{-30,11},{-30,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T3.outPort,initialStep. inPort[1])
                                           annotation (Line(
          points={{-60,19},{-60,65.5244},{-60,80},{-45.1144,80},{-39.3457,80},
            {-30,80},{-30,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1],T4. inPort) annotation (Line(
          points={{-30,-6.6},{-30,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort,step4. inPort[1]) annotation (Line(
          points={{-30,-25},{-30,-34}},
          color={0,0,0},
          smooth=Smooth.Bezier));

    connect(step4.outPort[1], T5.inPort) annotation (Line(
        points={{-30,-42.6},{-30,-52}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T5.outPort, step1.inPort[1]) annotation (Line(
        points={{-30,-61},{-30,-70}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], T3.inPort) annotation (Line(
        points={{-30,-78.6},{-30,-86},{-39.3164,-86},{-47.0929,-86},{-60,-86},
            {-60,-71.1875},{-60,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(initialStep.activePort, risingEdge.u) annotation (Line(
        points={{-25.28,70},{-7.2,70}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(risingEdge.y, set1.u[1]) annotation (Line(
        points={{2.8,70},{12,70},{12,59.7915},{12,47.2899},{12,35.5},{22,35.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step3.activePort, fallingEdge.u) annotation (Line(
        points={{-25.28,-2},{-5.2,-2}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(fallingEdge.y, set1.u[2]) annotation (Line(
        points={{4.8,-2},{12,-2},{12,9.74987},{12,22.2578},{12,32.5},{22,32.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics),
      experiment(StopTime=10));
    end Actions2;

    model Actions3 "Demonstrates usage of TriggeredAdd action block"
      extends Modelica.Icons.Example;
      Modelica_StateGraph2.Step initialStep(
      nIn=1,
      nOut=1,
      initialStep=true,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,66},{-26,74}})));
      Modelica_StateGraph2.Transition T1(
                    use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,46},{-26,54}})));
      Modelica_StateGraph2.Step step2(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,30},{-26,38}})));
      Modelica_StateGraph2.Transition T2(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1,
      use_firePort=true)
        annotation (Placement(transformation(extent={{-34,12},{-26,20}})));
      Modelica_StateGraph2.Step step3(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,-6},{-26,2}})));
      Modelica_StateGraph2.Transition T3(
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-64,18},{-56,10}})));
      Modelica_StateGraph2.Step step4(
                 nIn=1, nOut=1,
      use_activePort=false)
        annotation (Placement(transformation(extent={{-34,-42},{-26,-34}})));
      Modelica_StateGraph2.Transition T4(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1)
        annotation (Placement(transformation(extent={{-34,-24},{-26,-16}})));
      Modelica_StateGraph2.Transition T5(
      use_conditionPort=false,
      delayedTransition=true,
      waitTime=1,
      use_firePort=true)
        annotation (Placement(transformation(extent={{-34,-60},{-26,-52}})));
      Modelica_StateGraph2.Step step1(
                 nIn=1, nOut=1,
      use_activePort=true)
        annotation (Placement(transformation(extent={{-34,-78},{-26,-70}})));
    Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd add1(    use_reset=
          true)
      annotation (Placement(transformation(extent={{68,44},{80,56}})));
    Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch set1(
                                          nu=2, expr={11,12})
      annotation (Placement(transformation(extent={{12,40},{52,60}})));
    equation

    connect(initialStep.outPort[1],T1. inPort)
                                           annotation (Line(
          points={{-30,65.4},{-30,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T1.outPort,step2. inPort[1]) annotation (Line(
          points={{-30,45},{-30,38}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step2.outPort[1],T2. inPort) annotation (Line(
          points={{-30,29.4},{-30,20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.outPort,step3. inPort[1]) annotation (Line(
          points={{-30,11},{-30,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(T3.outPort,initialStep. inPort[1])
                                           annotation (Line(
          points={{-60,19},{-60,69.5156},{-60,80},{-46.6863,80},{-37.3535,80},
            {-30,80},{-30,74}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(step3.outPort[1],T4. inPort) annotation (Line(
          points={{-30,-6.6},{-30,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T4.outPort,step4. inPort[1]) annotation (Line(
          points={{-30,-25},{-30,-34}},
          color={0,0,0},
          smooth=Smooth.Bezier));
    connect(step4.outPort[1],T5. inPort) annotation (Line(
        points={{-30,-42.6},{-30,-52}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort,step1. inPort[1]) annotation (Line(
        points={{-30,-61},{-30,-70}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1],T3. inPort) annotation (Line(
        points={{-30,-78.6},{-30,-84},{-38.6573,-84},{-47.3145,-84},{-60,-84},
            {-60,-69.5879},{-60,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T2.firePort, add1.trigger) annotation (Line(
        points={{-25.8,16},{61.9449,16},{70.4,16},{70.4,23.8542},{70.4,42.8}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(T5.firePort, add1.reset) annotation (Line(
        points={{-25.8,-56},{55.2842,-56},{77.6,-56},{77.6,-34.3875},{77.6,
            42.8}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(initialStep.activePort, set1.u[1]) annotation (Line(
        points={{-25.28,70},{-20.2364,70},{-10,70},{-10,60.6958},{-10,51.5},{
            0.677734,51.5},{12,51.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step2.activePort, set1.u[2]) annotation (Line(
        points={{-25.28,34},{-18.4159,34},{-10,34},{-10,42},{-10,48.5},{
            -3.42578,48.5},{12,48.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(set1.y, add1.u) annotation (Line(
        points={{53,50},{66.2,50}},
        color={255,127,0},
        smooth=Smooth.Bezier));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics),
      experiment(StopTime=10));
    end Actions3;

    model ParallelWithActions
    "Demonstrates usage of MultiSwitch block for branches executing in parallel"
        extends Modelica.Icons.Example;

    Parallel parallel(
      initialStep=false,
      use_outPort=true,
      nEntry=2,
      nOut=1,
      nIn=1,
      nExit=2,
      use_inPort=true)
      annotation (Placement(transformation(extent={{-60,-72},{60,48}})));
    Modelica_StateGraph2.Step step1(
                          nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{-44,16},{-36,24}})));
    Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch set1(
      use_pre_as_default=false,
      nu=2,
      expr={2,3})
      annotation (Placement(transformation(extent={{-14,-56},{26,-36}})));
    Modelica_StateGraph2.Transition T1(
                             delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-44,-2},{-36,6}})));
    Modelica_StateGraph2.Step step2(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-44,-20},{-36,-12}})));
    Modelica_StateGraph2.Transition T2(
                             delayedTransition=true, waitTime=4)
      annotation (Placement(transformation(extent={{-44,-36},{-36,-28}})));
    Modelica_StateGraph2.Step step3(
                          nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-44,-52},{-36,-44}})));
    Modelica_StateGraph2.Step step4(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{44,14},{36,22}})));
    Modelica_StateGraph2.Transition T3(
                             delayedTransition=true, waitTime=2)
      annotation (Placement(transformation(extent={{36,-2},{44,6}})));
    Modelica_StateGraph2.Step step5(
                          nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{36,-20},{44,-12}})));
    Modelica_StateGraph2.Transition T4(
                             delayedTransition=true, waitTime=4)
      annotation (Placement(transformation(extent={{36,-36},{44,-28}})));
    Modelica_StateGraph2.Step step6(
                          nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{36,-52},{44,-44}})));
    Modelica_StateGraph2.Transition T5
      annotation (Placement(transformation(extent={{86,-16},{94,-24}})));
    Modelica_StateGraph2.Step step7(
      nOut=1,
      nIn=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-4,70},{4,78}})));
    Modelica_StateGraph2.Transition T6
      annotation (Placement(transformation(extent={{-4,56},{4,64}})));
    equation

    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{-40,15.4},{-40,6}},
        color={0,0,0},
        smooth=Smooth.None));

    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{-40,-3},{-40,-12}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{-40,-20.6},{-40,-28}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{-40,-37},{-40,-44}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step1.inPort[1], parallel.entry[1]) annotation (Line(
        points={{-40,24},{-40,32},{-28.6504,32},{-14,32},{-3,32},{-3,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.inPort[1], parallel.entry[2]) annotation (Line(
        points={{40,22},{40,22},{40,32},{27.5128,32},{14.7793,32},{3,32},{3,
            42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T3.inPort) annotation (Line(
        points={{40,13.4},{40,13.4},{40,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step5.inPort[1]) annotation (Line(
        points={{40,-3},{40,-6},{40,-8},{40,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T4.inPort) annotation (Line(
        points={{40,-20.6},{40,-20.6},{40,-28}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, step6.inPort[1]) annotation (Line(
        points={{40,-37},{40,-40},{40,-42},{40,-44}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.activePort, set1.u[1]) annotation (Line(
        points={{35.28,18},{-0.403672,18},{-20,18},{-20,-0.432617},{-20,
            -34.7312},{-20,-44.5},{-14,-44.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(step2.activePort, set1.u[2]) annotation (Line(
        points={{-35.28,-16},{-22,-16},{-22,-25.9053},{-22,-38.3897},{-22,
            -47.5},{-14,-47.5}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T5.inPort) annotation (Line(
        points={{0,-73.5},{0,-80},{11.5333,-80},{60.4072,-80},{90,-80},{90,
            -50.25},{90,-24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step7.outPort[1], T6.inPort) annotation (Line(
        points={{0,69.4},{0,64}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T6.outPort, parallel.inPort[1]) annotation (Line(
        points={{0,55},{0,55},{0,48}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort, step7.inPort[1]) annotation (Line(
        points={{90,-15},{90,-15},{90,60.1611},{90,90},{59.0934,90},{13.1836,
            90},{0,90},{0,78}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-40,-52.6},{-40,-52.6},{-40,-60},{-29.124,-60},{-12.5159,-60},
            {-3,-60},{-3,-66.75}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
        points={{40,-52.6},{40,-60},{30.7053,-60},{13.1895,-60},{3,-60},{3,
            -66.75}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics),
      experiment(StopTime=12));
    end ParallelWithActions;

  package Utilities "Utility models used in the examples"
    model Composite2_Subgraph
      extends Modelica_StateGraph2.PartialParallel(
        final use_inPort,
        final use_outPort,
        nEntry=1,
        nExit=1);

      Modelica_StateGraph2.Step step3(nOut=1, nIn=2)
        annotation (Placement(transformation(extent={{-4,24},{4,32}})));
      Modelica_StateGraph2.Transition T2(delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,6},{4,14}})));
      Modelica_StateGraph2.Step step4(nOut=2, nIn=1)
        annotation (Placement(transformation(extent={{-4,-10},{4,-2}})));
      Modelica_StateGraph2.Transition T6(delayedTransition=true, waitTime=1)
        annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
      Modelica_StateGraph2.Step step6(nOut=nExit, nIn=1)
        annotation (Placement(transformation(extent={{-4,-44},{4,-36}})));
      Modelica_StateGraph2.Transition T7(
        waitTime=1,
        delayedTransition=false,
        condition=time > 2.5 and time < 4.5)
        annotation (Placement(transformation(extent={{24,14},{32,6}})));
    equation
        connect(step3.outPort[1], T2.inPort) annotation (Line(
            points={{0,23.4},{0,14}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T2.outPort, step4.inPort[1]) annotation (Line(
            points={{0,5},{0,-2}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T6.outPort, step6.inPort[1]) annotation (Line(
            points={{0,-27},{0,-36}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T6.inPort, step4.outPort[1]) annotation (Line(
            points={{0,-18},{0,-10.6},{-1,-10.6}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(step4.outPort[2], T7.inPort) annotation (Line(
            points={{1,-10.6},{1,-14},{7.24902,-14},{15.6791,-14},{28,-14},{
              28,-1.59766},{28,6}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(step3.inPort[1], entry[1]) annotation (Line(
            points={{-1,32},{-1,72},{0,72},{0,100}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T7.outPort, step3.inPort[2]) annotation (Line(
            points={{28,15},{28,15},{28,31.5771},{28,40},{14,40},{1,40},{1,32}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(step6.outPort[1], exit[1]) annotation (Line(
            points={{0,-44.6},{0,-44.6},{0,-105}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        annotation (Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}),  graphics), Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1})));
    end Composite2_Subgraph;
  end Utilities;
  end BasicStateGraphs;

  package Interactive
  "Examples to demonstrate how to use the interactive blocks"

  model UseRadioButtonSources
    "Example to demonstrate the usage of RadioButtonSource components"
    extends Modelica.Icons.Example;
    Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource start(reset={
          stop.on,shut.on}, buttonTimeTable={1,3}) annotation (Placement(
          transformation(extent={{-60,40},{-40,60}}, rotation=0)));
    Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource stop(reset={
          start.on,shut.on}, buttonTimeTable={2,4}) annotation (Placement(
          transformation(extent={{-60,10},{-40,30}}, rotation=0)));
    Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource shut(reset={
          start.on,stop.on}, buttonTimeTable={5}) annotation (Placement(
          transformation(extent={{-60,-20.5},{-40,-0.5}}, rotation=0)));
  equation

    annotation (experiment(StopTime=6));
  end UseRadioButtonSources;
  end Interactive;

  package Applications
  "Examples demonstrating realistic applications with Modelica_StateGraph2"

    package ControlledTanks
    "Control system to fill and empty a two tank system"

      model ControlledTanks1
        extends Internal.PartialControlledTank;
        Internal.TankController1 tankController(
        limit1=0.9*tank1.height,
        limit2=0.9*tank2.height,
        waitTime=50,
        minLevel=0.01)
          annotation (Placement(transformation(extent={{-50,-20},{-10,20}},
                  rotation=0)));

      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource start(reset={
            stop.on,shut.on}, buttonTimeTable={20,280}) annotation (Placement(
            transformation(extent={{-100,20},{-80,40}}, rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource stop(reset={
            start.on,shut.on}, buttonTimeTable={220,650}) annotation (
          Placement(transformation(extent={{-100,-10},{-80,10}}, rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource shut(reset={
            start.on,stop.on}, buttonTimeTable={700}) annotation (Placement(
            transformation(extent={{-100,-40.5},{-80,-20.5}}, rotation=0)));
      Modelica.Blocks.Sources.RealExpression level1(y=tank1.level)
        annotation (Placement(transformation(extent={{-75,-57},{-50,-37}},
              rotation=0)));
      Modelica.Blocks.Sources.RealExpression level2(y=tank2.level)
        annotation (Placement(transformation(extent={{-54,-75},{-29,-55}},
              rotation=0)));
      equation

      connect(level1.y, tankController.level1) annotation (Line(
          points={{-48.75,-47},{-42,-47},{-42,-22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(level2.y, tankController.level2) annotation (Line(
          points={{-27.75,-65},{-18,-65},{-18,-22}},
          color={0,0,127},
          smooth=Smooth.None));
      connect(tankController.valve1, valve1.open) annotation (Line(
          points={{-9,12},{2,12},{2,57},{-6,57},{-6,72}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(tankController.valve2, valve2.open) annotation (Line(
          points={{-9,0},{12,0},{12,10},{26,10}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(tankController.valve3, valve3.open) annotation (Line(
          points={{-9,-12},{10,-12},{10,-40},{35,-40},{35,-62}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(start.on, tankController.start) annotation (Line(
          points={{-79,30},{-66,30},{-66,12},{-52,12}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(stop.on, tankController.stop) annotation (Line(
          points={{-79,0},{-52,0}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(shut.on, tankController.shut) annotation (Line(
          points={{-79,-30.5},{-70,-30.5},{-70,-12},{-52,-12}},
          color={255,0,255},
          smooth=Smooth.None));
      annotation (
        Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1})),
        experiment(StopTime=900),
        Documentation(info="<html>
<p>
With this example the controller of a tank filling/emptying system
is demonstrated. This example is from Dressler (2004),
see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">Literature</a> which
in turn is based on an example model from Karl Erk Arzen of JGraphCharts.
</p>

<p>
The basic operation is to fill and empty the two tanks:
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
The above \"normal\" operation can be influenced by three
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
The tank controller has some safeguards to prevent the tanks
to overflow even if there are errors in the control system:
</p>

<ul>
<li> Valve 1 is closed in any case, if the fill level
     of tank 1 is 1.01*fill limit.</li>
<li> Valve 2 is closed in any case, if the fill level
     of tank 2 is 1.01*fill limit.</li>
</ul>

<p>
The default simulation time is 900 s. The result can be animated.
For this, set in Dymola in the command window:
\"animationSpeed(speed = 50)\".
</p>
</html>"));
      end ControlledTanks1;

    model ControlledTanks2
      extends Internal.PartialControlledTank;
      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource start(reset={
            stop.on,shut.on}, buttonTimeTable={20,280}) annotation (Placement(
            transformation(extent={{-80,20},{-60,40}}, rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource stop(reset={
            start.on,shut.on}, buttonTimeTable={220,650}) annotation (
          Placement(transformation(extent={{-80,-10},{-60,10}}, rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.RadioButtonSource shut(reset={
            start.on,stop.on}, buttonTimeTable={700}) annotation (Placement(
            transformation(extent={{-80,-40},{-60,-20}}, rotation=0)));
      protected
      Internal.SignalBus bus annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-32,0})));
      public
      Internal.TankController2 tankController(
        limit1=0.9*tank1.height,
        limit2=0.9*tank2.height,
        minLevel=0.01,
        waitTime=50)
        annotation (Placement(transformation(extent={{9,-30},{-11,-10}})));
      Modelica.Blocks.Sources.RealExpression level1(y=tank1.level)
        annotation (Placement(transformation(extent={{-78,-63},{-53,-43}},
              rotation=0)));
      Modelica.Blocks.Sources.RealExpression level2(y=tank2.level)
        annotation (Placement(transformation(extent={{-79,-81},{-54,-61}},
              rotation=0)));
    equation
      connect(level1.y, bus.level1) annotation (Line(
          points={{-51.75,-53},{-34,-53},{-34,-2},{-30,-2},{-30,-1},{-32,-1},
              {-32,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(level2.y, bus.level2) annotation (Line(
          points={{-52.75,-71},{-32,-71},{-32,0}},
          color={0,0,127},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(shut.on, bus.shut) annotation (Line(
          points={{-59,-30},{-37,-30},{-37,-2},{-31,-2},{-31,0},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(stop.on, bus.stop) annotation (Line(
          points={{-59,0},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(start.on, bus.start) annotation (Line(
          points={{-59,30},{-37,30},{-37,4},{-32,4},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(valve1.open, bus.valve1) annotation (Line(
          points={{-6,72},{-6,2},{-33,2},{-33,0},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(valve2.open, bus.valve2) annotation (Line(
          points={{26,10},{5,10},{5,0},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None));
      connect(valve3.open, bus.valve3) annotation (Line(
          points={{35,-62},{35,-20},{20,-20},{20,-2},{-31,-2},{-31,0},{-32,0}},
          color={255,0,255},
          smooth=Smooth.None));

      connect(tankController.bus, bus) annotation (Line(
          points={{-11,-20.9091},{-25,-20.9091},{-25,-4},{-32,-4},{-32,0}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.None));
      annotation (
        Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1}), graphics),
        Icon(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-100,-100},{100,100}},
            grid={1,1})),
        experiment(StopTime=900),
        Documentation(info="<html>
<p>
This is the same model as
<a href=\"modelica://Modelica_StateGraph2.Examples.Applications.ControlledTanks.ControlledTanks1\">
\"ControlledTanks1\"</a>. The only difference is how the tank controller is implemented:
</p>
<ul>
<li> All signals are reported via a signal bus.</li>
<li> The controller is hierarchically structured for the different tasks.</li>
</ul>
</html>"));
    end ControlledTanks2;

    package Internal "Utility components for the examples"
      partial model PartialControlledTank
        extends Modelica.Icons.Example;
        package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater;
        Modelica.Fluid.Valves.ValveDiscrete valve1(
          redeclare package Medium = Medium,
          m_flow_nominal=40,
          dp_nominal=100000) annotation (Placement(transformation(
              origin={-6,80},
              extent={{10,-10},{-10,10}},
              rotation=180)));
        Modelica.Fluid.Vessels.OpenTank tank1(
          level_start=0.05,
          redeclare package Medium = Medium,
          crossArea=6,
          height=4,
          nPorts=2,
          portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                        diameter=0.2,
                        height=4,
                        zeta_out=0,
                        zeta_in=1),
              Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                        diameter=0.2,
                        height=0,
                        zeta_out=0,
                        zeta_in=1)},
          T_start=system.T_ambient,
          energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
          massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
          annotation (Placement(transformation(extent={{10,40},{50,80}},
                rotation=0)));
        Modelica.Fluid.Valves.ValveDiscrete valve2(
          redeclare package Medium = Medium,
          dp_nominal(displayUnit="Pa") = 1,
          m_flow_nominal=100) annotation (Placement(transformation(
              origin={34,10},
              extent={{10,-10},{-10,10}},
              rotation=90)));
        Modelica.Fluid.Valves.ValveDiscrete valve3(
          redeclare package Medium = Medium,
          dp_nominal(displayUnit="Pa") = 1,
          m_flow_nominal=10) annotation (Placement(transformation(
              origin={35,-70},
              extent={{10,-10},{-10,10}},
              rotation=0)));
        Modelica.Fluid.Vessels.OpenTank tank2(
          level_start=0.05,
          redeclare package Medium = Medium,
          height=5,
          crossArea=6,
          nPorts=2,
          portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                        diameter=0.2,
                        height=5,
                        zeta_out=0,
                        zeta_in=1),
              Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                        diameter=0.2,
                        height=0,
                        zeta_out=0,
                        zeta_in=1)},
          T_start=system.T_ambient,
          energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
          massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial)
          annotation (Placement(transformation(extent={{50,-50},{90,-10}},
                rotation=0)));
        Modelica.Fluid.Sources.Boundary_pT ambient(
          redeclare package Medium = Medium,
          nPorts=1,
          p=system.p_ambient,
          T=system.T_ambient) annotation (Placement(transformation(extent={{-10,
                  -80},{10,-60}}, rotation=0)));
        Modelica.Fluid.Sources.Boundary_pT reservoir(
          redeclare package Medium = Medium,
          nPorts=1,
          T=system.T_ambient,
          p=2500000) annotation (Placement(transformation(
              origin={-34,80},
              extent={{-10,-10},{10,10}},
              rotation=0)));
        inner Modelica.Fluid.System system annotation (Placement(
              transformation(extent={{-73,70},{-53,90}}, rotation=0)));
      equation
        connect(reservoir.ports[1], valve1.port_a) annotation (Line(
            points={{-24,80},{-16,80}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(valve3.port_b, ambient.ports[1]) annotation (Line(
            points={{25,-70},{10,-70}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(tank2.ports[2], valve3.port_a) annotation (Line(
            points={{74,-50},{74,-70},{45,-70}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(valve2.port_b, tank2.ports[1]) annotation (Line(
            points={{34,0},{34,-10},{50,-10},{50,-50},{66,-50}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(valve1.port_b, tank1.ports[1]) annotation (Line(
            points={{4,80},{10,80},{10,40},{26,40}},
            color={0,127,255},
            smooth=Smooth.None));
        connect(tank1.ports[2], valve2.port_a) annotation (Line(
            points={{34,40},{34,20}},
            color={0,127,255},
            smooth=Smooth.None));
        annotation (Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1})), Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1})));
      end PartialControlledTank;

      model TankController1
        "Controller 1 for tank system (using expressions to control the valves)"
        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Modelica.SIunits.Height limit1(min=0) = 0.98
          "Maximum level of tank 1";
        parameter Modelica.SIunits.Height limit2(min=0) = 0.98
          "Maximum level of tank 2";
        parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
          "Minimum fill level of a tank";

        parameter Modelica.SIunits.Time waitTime=3
          "Wait time to newly open a valve";

        Modelica.Blocks.Interfaces.BooleanInput start annotation (Placement(
              transformation(extent={{-130,50},{-110,70}}, rotation=0),
              iconTransformation(extent={{-120,50},{-100,70}})));
        Modelica.Blocks.Interfaces.BooleanInput stop annotation (Placement(
              transformation(extent={{-130,-10},{-110,10}}, rotation=0),
              iconTransformation(extent={{-120,-10},{-100,10}})));
        Modelica.Blocks.Interfaces.BooleanInput shut annotation (Placement(
              transformation(extent={{-130,-70},{-110,-50}}, rotation=0),
              iconTransformation(extent={{-120,-70},{-100,-50}})));
        Modelica.Blocks.Interfaces.RealInput level1 annotation (Placement(
              transformation(
              origin={-60,-150},
              extent={{-10,-10},{10,10}},
              rotation=90), iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={-60,-110})));
        Modelica.Blocks.Interfaces.RealInput level2 annotation (Placement(
              transformation(
              origin={60,-150},
              extent={{-10,-10},{10,10}},
              rotation=90), iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={60,-110})));
        Modelica.Blocks.Interfaces.BooleanOutput valve1 annotation (Placement(
              transformation(extent={{100,55},{110,65}}, rotation=0)));
        Modelica.Blocks.Interfaces.BooleanOutput valve2 annotation (Placement(
              transformation(extent={{100,-5},{110,5}}, rotation=0)));
        Modelica.Blocks.Interfaces.BooleanOutput valve3 annotation (Placement(
              transformation(extent={{100,-65},{110,-55}}, rotation=0)));
        Modelica.Blocks.Sources.BooleanExpression setValve1(y=fillTank1.active
               and level1 <= 1.01*limit1) annotation (Placement(
              transformation(extent={{-14,-99},{67,-83}}, rotation=0)));
        Modelica.Blocks.Sources.BooleanExpression setValve2(y=(fillTank2.active
               or emptyTanks.active or shutTank1.active) and level2 <= 1.01*
              limit2) annotation (Placement(transformation(extent={{-78,-119},
                  {67,-101}}, rotation=0)));
        Modelica.Blocks.Sources.BooleanExpression setValve3(y=emptyTanks.active
               or shutTank2.active) annotation (Placement(transformation(
                extent={{-23,-136},{67,-120}}, rotation=0)));

        Parallel makeProduct(
          use_suspend=true,
          nIn=2,
          nEntry=1,
          nExit=0,
          nOut=0,
          use_outPort=false,
          use_inPort=true,
          nSuspend=1,
          nResume=1,
          initialStep=false)
          annotation (Placement(transformation(extent={{23,-71},{73,126}})));
        Modelica_StateGraph2.Step startStep(nOut=1, nIn=2)
          annotation (Placement(transformation(extent={{37,96},{45,104}})));
        Modelica_StateGraph2.Transition T1(
          use_conditionPort=true,
          waitTime=0.01,
          delayedTransition=false)
          annotation (Placement(transformation(extent={{37,84},{45,92}})));
        Modelica_StateGraph2.Step fillTank1(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{37,69},{45,77}})));
        Modelica_StateGraph2.Transition T2(condition=level1 > limit1)
          annotation (Placement(transformation(extent={{37,56},{45,64}})));
        Modelica_StateGraph2.Step wait1(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{37,40},{45,48}})));
        Modelica_StateGraph2.Step fillTank2(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{37,10},{45,18}})));
        Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=
              waitTime)
          annotation (Placement(transformation(extent={{37,25},{45,33}})));
        Modelica_StateGraph2.Transition T4(condition=level1 < minLevel)
          annotation (Placement(transformation(extent={{37,-3},{45,5}})));
        Modelica_StateGraph2.Step wait2(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{37,-16},{45,-8}})));
        Modelica_StateGraph2.Transition T5(delayedTransition=true, waitTime=
              waitTime)
          annotation (Placement(transformation(extent={{37,-30},{45,-22}})));
        Modelica_StateGraph2.Step emptyTanks(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{37,-46},{45,-38}})));
        Modelica_StateGraph2.Transition T6(condition=level2 < minLevel)
          annotation (Placement(transformation(extent={{37,-60},{45,-52}})));
        Modelica_StateGraph2.Step initialStep(initialStep=true, nOut=1)
          annotation (Placement(transformation(extent={{44,148},{52,156}})));
        Modelica_StateGraph2.Transition T7
          annotation (Placement(transformation(extent={{44,137},{52,145}})));
        Modelica_StateGraph2.Step stopStep1(nIn=1, nOut=2)
          annotation (Placement(transformation(extent={{-33,53},{-25,61}})));
        Modelica_StateGraph2.Transition T8(use_conditionPort=true)
          annotation (Placement(transformation(extent={{-33,68},{-25,76}})));
        Modelica_StateGraph2.Transition T9(use_conditionPort=true,
            delayedTransition=false)
          annotation (Placement(transformation(extent={{-34,40},{-26,48}})));
        Modelica_StateGraph2.Transition T10(use_conditionPort=true,
            delayedTransition=false)
          annotation (Placement(transformation(extent={{6,26},{14,34}})));
        Modelica_StateGraph2.Step shutTank1(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{-50,-14},{-42,-6}})));
        Modelica_StateGraph2.Transition T13(delayedTransition=false,
            condition=level1 < minLevel) annotation (Placement(transformation(
                extent={{-50,-29},{-42,-21}})));
        Parallel shutStep(
          use_inPort=true,
          use_outPort=true,
          use_suspend=true,
          nEntry=2,
          nExit=2,
          nOut=1,
          nSuspend=1,
          use_activePort=false,
          initialStep=false,
          nIn=1,
          nResume=1)
          annotation (Placement(transformation(extent={{-58,-63},{-2,6}})));
        Modelica_StateGraph2.Step shutTank2(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{-23,-14},{-15,-6}})));
        Modelica_StateGraph2.Step tank1Empty(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-50,-47},{-42,-39}})));
        Modelica_StateGraph2.Step tank2Empty(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-23,-47},{-15,-39}})));
        Modelica_StateGraph2.Transition T11(condition=level2 < minLevel,
            delayedTransition=false) annotation (Placement(transformation(
                extent={{-23,-29},{-15,-21}})));
        Modelica_StateGraph2.Transition T12(delayedTransition=false)
          annotation (Placement(transformation(extent={{-1,-62},{7,-70}})));
        Modelica_StateGraph2.Transition T14(use_conditionPort=true,
            delayedTransition=false) annotation (Placement(transformation(
                extent={{-85,-20},{-77,-12}})));
        Modelica_StateGraph2.Step stopStep2(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-85,-32},{-77,-24}})));
        Modelica_StateGraph2.Transition T15(
          use_conditionPort=true,
          delayedTransition=false,
          waitTime=0) annotation (Placement(transformation(extent={{-85,-43},
                  {-77,-35}})));
        Modelica_StateGraph2.Step startWait(nOut=1, nIn=1)
          annotation (Placement(transformation(extent={{6,9},{14,17}})));
        Modelica_StateGraph2.Transition T16(
          delayedTransition=true,
          waitTime=0.01,
          use_conditionPort=false)
          annotation (Placement(transformation(extent={{6,-7},{14,1}})));
        Modelica_StateGraph2.Step shutWait(nOut=1, nIn=1)
          annotation (Placement(transformation(extent={{-34,27},{-26,35}})));
        Modelica_StateGraph2.Transition T17(delayedTransition=true, waitTime=
              0.01)
          annotation (Placement(transformation(extent={{-34,14},{-26,22}})));
        Modelica_StateGraph2.Step shutWait2(nOut=1, nIn=1) annotation (
            Placement(transformation(extent={{-85,-57},{-77,-49}})));
        Modelica_StateGraph2.Transition T18(
          waitTime=0.01,
          delayedTransition=true,
          use_conditionPort=false) annotation (Placement(transformation(
                extent={{-85,-71},{-77,-63}})));
      equation

        connect(start, T1.conditionPort) annotation (Line(
            points={{-120,60},{-85,60},{-70,60},{-70,74},{-70,88},{-54.2656,
                88},{36,88}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(fillTank1.outPort[1], T2.inPort) annotation (Line(
            points={{41,68.4},{41,64}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T2.outPort, wait1.inPort[1]) annotation (Line(
            points={{41,55},{41,48}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(wait1.outPort[1], T3.inPort) annotation (Line(
            points={{41,39.4},{41,33}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T3.outPort, fillTank2.inPort[1]) annotation (Line(
            points={{41,24},{41,18}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(fillTank2.outPort[1], T4.inPort) annotation (Line(
            points={{41,9.4},{41,5}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T4.outPort, wait2.inPort[1]) annotation (Line(
            points={{41,-4},{41,-8}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(wait2.outPort[1], T5.inPort) annotation (Line(
            points={{41,-16.6},{41,-22}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T5.outPort, emptyTanks.inPort[1]) annotation (Line(
            points={{41,-31},{41,-38}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(emptyTanks.outPort[1], T6.inPort) annotation (Line(
            points={{41,-46.6},{41,-52}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T1.outPort, fillTank1.inPort[1]) annotation (Line(
            points={{41,83},{41,77}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(startStep.inPort[1], makeProduct.entry[1]) annotation (Line(
            points={{40,104},{40,116.15},{48,116.15}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(startStep.outPort[1], T1.inPort) annotation (Line(
            points={{41,95.4},{41,92}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T6.outPort, startStep.inPort[2]) annotation (Line(
            points={{41,-61},{41,-66},{47.2443,-66},{50.7324,-66},{63,-66},{
                63,-52.3225},{63,94.9863},{63,109},{52.0055,109},{48.0088,109},
                {42,109},{42,104}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(T7.outPort, makeProduct.inPort[1]) annotation (Line(
            points={{48,136},{48,126},{45.5,126}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T8.outPort, stopStep1.inPort[1]) annotation (Line(
            points={{-29,67},{-29,61}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(makeProduct.suspend[1], T8.inPort) annotation (Line(
            points={{21.75,82.9063},{-10.4644,82.9063},{-29,82.9063},{-29,76}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(stop, T8.conditionPort) annotation (Line(
            points={{-120,0},{-100,0},{-100,13.2324},{-100,36.7148},{-100,50},
                {-87.2871,50},{-64.0121,50},{-54,50},{-54,60},{-34,60},{-34,
                72}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(initialStep.outPort[1], T7.inPort) annotation (Line(
            points={{48,147.4},{48,145}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(stopStep1.outPort[1], T9.inPort) annotation (Line(
            points={{-30,52.4},{-30,48}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T10.inPort, stopStep1.outPort[2]) annotation (Line(
            points={{10,34},{10,48},{-2.41211,48},{-21,48},{-28,48},{-28,52.4}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(setValve1.y, valve1) annotation (Line(
            points={{71.05,-91},{80,-91},{80,-78.7792},{80,39.3555},{80,60},{
                105,60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(setValve2.y, valve2) annotation (Line(
            points={{74.25,-110},{85,-110},{85,-98.0166},{85,-16.3281},{85,0},
                {105,0}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(setValve3.y, valve3) annotation (Line(
            points={{71.5,-128},{78.4917,-128},{90,-128},{90,-116.313},{90,-72.2635},
                {90,-60},{105,-60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(start, T10.conditionPort) annotation (Line(
            points={{-120,60},{-120,60},{-70.0195,60},{-60,60},{-60,70},{-50.5273,
                70},{-24.0104,70},{-10,70},{-10,57.7539},{-10,42.5},{-10,30},
                {5,30}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(shutStep.entry[1], shutTank1.inPort[1]) annotation (Line(
            points={{-31.4,2.55},{-31.4,-1},{-35.7486,-1},{-41.2447,-1},{-46,
                -1},{-46,-6}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutStep.entry[2], shutTank2.inPort[1]) annotation (Line(
            points={{-28.6,2.55},{-28.6,-1},{-25.2531,-1},{-23.2502,-1},{-19,
                -1},{-19,-6}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank1.outPort[1], T13.inPort) annotation (Line(
            points={{-46,-14.6},{-46,-21}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T13.outPort, tank1Empty.inPort[1]) annotation (Line(
            points={{-46,-30},{-46,-39}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank2.outPort[1], T11.inPort) annotation (Line(
            points={{-19,-14.6},{-19,-21}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T11.outPort, tank2Empty.inPort[1]) annotation (Line(
            points={{-19,-30},{-19,-39}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(tank1Empty.outPort[1], shutStep.exit[1]) annotation (Line(
            points={{-46,-47.6},{-46,-52},{-41,-52},{-31.4,-52},{-31.4,-59.9813}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(tank2Empty.outPort[1], shutStep.exit[2]) annotation (Line(
            points={{-19,-47.6},{-19,-52},{-23.2469,-52},{-28.6,-52},{-28.6,-59.9813}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(shutStep.outPort[1], T12.inPort) annotation (Line(
            points={{-30,-63.8625},{-30,-74},{-20.0098,-74},{-3.51645,-74},{3,
                -74},{3,-70}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutStep.suspend[1], T14.inPort) annotation (Line(
            points={{-59.4,-9.09375},{-76.2328,-9.09375},{-81,-9.09375},{-81,
                -12}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T14.outPort, stopStep2.inPort[1]) annotation (Line(
            points={{-81,-21},{-81,-24}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(stopStep2.outPort[1], T15.inPort) annotation (Line(
            points={{-81,-32.6},{-81,-35}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T12.outPort, makeProduct.inPort[2]) annotation (Line(
            points={{3,-61},{3,117.654},{3,133},{17.2461,133},{34.9912,133},{
                44,133},{44,126},{50.5,126}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shut, T9.conditionPort) annotation (Line(
            points={{-120,-60},{-103.758,-60},{-96,-60},{-96,-47},{-96,
                9.44531},{-96,43},{-46,43},{-46,44},{-35,44}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stop, T14.conditionPort) annotation (Line(
            points={{-120,0},{-100,0},{-100,-8},{-100,-16},{-91.5098,-16},{-86,
                -16}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(shut, T15.conditionPort) annotation (Line(
            points={{-120,-60},{-105,-60},{-96,-60},{-96,-48.7617},{-96,-39},
                {-86,-39}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(startWait.outPort[1], T16.inPort) annotation (Line(
            points={{10,8.4},{10,1}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T16.outPort, makeProduct.resume[1]) annotation (Line(
            points={{10,-8},{10,-14.9983},{10,-27.9062},{23,-27.9062}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T10.outPort, startWait.inPort[1]) annotation (Line(
            points={{10,25},{10,17}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T9.outPort, shutWait.inPort[1]) annotation (Line(
            points={{-30,39},{-30,35}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(shutWait.outPort[1], T17.inPort) annotation (Line(
            points={{-30,26.4},{-30,22}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(T17.outPort, shutStep.inPort[1]) annotation (Line(
            points={{-30,13},{-30,6}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(T15.outPort, shutWait2.inPort[1]) annotation (Line(
            points={{-81,-44},{-81,-49}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutWait2.outPort[1], T18.inPort) annotation (Line(
            points={{-81,-57.6},{-81,-63}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T18.outPort, shutStep.resume[1]) annotation (Line(
            points={{-81,-72},{-81,-79},{-72.1514,-79},{-64,-79},{-64,-69.1522},
                {-64,-56.5907},{-64,-47.9063},{-58,-47.9063}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        annotation (Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-110,-150},{100,170}},
              grid={1,1}), graphics), Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics={Text(
                          extent={{-100,68},{-32,54}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="start"),Text(
                          extent={{-100,6},{-32,-8}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="stop"),Text(
                          extent={{-100,-54},{-32,-68}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="shut"),Text(
                          extent={{-94,-82},{-18,-96}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="level1"),Text(
                          extent={{24,-84},{96,-98}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="level2"),Text(
                          extent={{31,68},{99,54}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="valve1"),Text(
                          extent={{33,9},{101,-5}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="valve2"),Text(
                          extent={{34,-53},{102,-67}},
                          lineColor={0,0,0},
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid,
                          textString="valve3"),Text(
                          extent={{-33,18},{31,-32}},
                          lineColor={0,0,255},
                          textString="1")}));
      end TankController1;

      model TankController2
        "Controller 2 for tank system (using expressions to control the valves)"
        extends Modelica.Blocks.Interfaces.BlockIcon;
        parameter Modelica.SIunits.Height limit1(min=0) = 0.98
          "Maximum level of tank 1";
        parameter Modelica.SIunits.Height limit2(min=0) = 0.98
          "Maximum level of tank 2";
        parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
          "Minimum fill level of a tank";
        parameter Modelica.SIunits.Time waitTime=3
          "Wait time to newly open a valve";

        Modelica_StateGraph2.Step stopStep1(nIn=1, nOut=2)
          annotation (Placement(transformation(extent={{-23,4},{-15,12}})));
        Modelica_StateGraph2.Transition T8(use_conditionPort=false, condition=
             bus.stop)
          annotation (Placement(transformation(extent={{-23,19},{-15,27}})));
        Modelica_StateGraph2.Transition T9(
          use_conditionPort=false,
          condition=bus.shut,
          delayedTransition=false,
          waitTime=0)
          annotation (Placement(transformation(extent={{-24,-9},{-16,-1}})));
        Modelica_StateGraph2.Transition T10(
          use_conditionPort=false,
          condition=bus.start,
          waitTime=0,
          delayedTransition=false)
          annotation (Placement(transformation(extent={{2,-11},{10,-3}})));
        Modelica_StateGraph2.Transition T12(delayedTransition=false)
          annotation (Placement(transformation(extent={{-80,6},{-72,-2}})));
        Modelica_StateGraph2.Transition T14(
          delayedTransition=false,
          use_conditionPort=false,
          condition=bus.stop) annotation (Placement(transformation(extent={{-69,
                  -35},{-61,-27}})));
        Modelica_StateGraph2.Step stopStep2(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-69,-49},{-61,-41}})));
        Modelica_StateGraph2.Transition T15(
          use_conditionPort=false,
          condition=bus.shut,
          delayedTransition=false,
          waitTime=0) annotation (Placement(transformation(extent={{-69,-61},
                  {-61,-53}})));
        MakeProduct makeProduct(
          nIn=1,
          nSuspend=1,
          limit1=limit1,
          limit2=limit2,
          waitTime=waitTime,
          initialStep=true,
          minLevel=minLevel,
          nResume=1)
          annotation (Placement(transformation(extent={{20,-20},{60,20}})));
        ShutStep shutStep(
          nSuspend=1,
          nOut=1,
          initialStep=false,
          nIn=1,
          nResume=1,
          minLevel=minLevel)
          annotation (Placement(transformation(extent={{-40,-85},{0,-45}})));
        SignalBus bus annotation (Placement(transformation(
              extent={{-20,20},{20,-20}},
              rotation=90,
              origin={100,0})));
        Modelica.Blocks.Sources.BooleanExpression setValve1(y=makeProduct.valve1
               and bus.level1 <= 1.01*limit1)
          annotation (Placement(transformation(extent={{-52,68},{41,89}})));
        Modelica.Blocks.Sources.BooleanExpression setValve2(y=(makeProduct.valve2
               or shutStep.valve2) and bus.level2 <= 1.01*limit2)
          annotation (Placement(transformation(extent={{-53,51},{69,71}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or setValve3(nu=2)
          annotation (Placement(transformation(extent={{51,-62},{63,-50}})));
        Modelica_StateGraph2.Step waitShut(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-24,-22},{-16,-14}})));
        Modelica_StateGraph2.Transition T1(delayedTransition=true, waitTime=
              0.01) annotation (Placement(transformation(extent={{-24,-35},{-16,
                  -27}})));
        Modelica_StateGraph2.Step waitStop(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{2,-25},{10,-17}})));
        Modelica_StateGraph2.Transition T2(delayedTransition=true, waitTime=
              0.01)
          annotation (Placement(transformation(extent={{2,-37},{10,-29}})));
        Modelica_StateGraph2.Step waitShut2(nIn=1, nOut=1) annotation (
            Placement(transformation(extent={{-69,-76},{-61,-68}})));
        Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=
              0.01) annotation (Placement(transformation(extent={{-69,-89},{-61,
                  -81}})));
      equation

        connect(T8.outPort, stopStep1.inPort[1]) annotation (Line(
            points={{-19,18},{-19,12}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(stopStep1.outPort[1], T9.inPort) annotation (Line(
            points={{-20,3.4},{-20,-1}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T10.inPort, stopStep1.outPort[2]) annotation (Line(
            points={{6,-3},{6,0},{0.510128,0},{-12.4922,0},{-18,0},{-18,3.4}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(T14.outPort, stopStep2.inPort[1]) annotation (Line(
            points={{-65,-36},{-65,-39},{-65,-41}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(stopStep2.outPort[1], T15.inPort) annotation (Line(
            points={{-65,-49.6},{-65,-53}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(makeProduct.suspend[1], T8.inPort) annotation (Line(
            points={{19.2,12},{10,12},{10,21.9873},{10,33},{-0.494685,33},{-11.9766,
                33},{-19,33},{-19,27}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutStep.suspend[1], T14.inPort) annotation (Line(
            points={{-40.8,-53},{-46,-53},{-46,-41.2529},{-46,-27},{-46,-20},
                {-55.9824,-20},{-65,-20},{-65,-27}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutStep.outPort[1], T12.inPort) annotation (Line(
            points={{-19.9,-85.7},{-20,-92},{-26,-98},{-66,-98},{-75,-95},{-76,
                -86},{-76,-2}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T12.outPort, makeProduct.inPort[1]) annotation (Line(
            points={{-76,7},{-76,7},{-76,27},{-76,43},{-57,43},{21,43},{40,42},
                {40,20}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(T9.outPort, waitShut.inPort[1]) annotation (Line(
            points={{-20,-10},{-20,-14}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(waitShut.outPort[1], T1.inPort) annotation (Line(
            points={{-20,-22.6},{-20,-27}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(T1.outPort, shutStep.inPort[1]) annotation (Line(
            points={{-20,-36},{-20,-45}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(T10.outPort, waitStop.inPort[1]) annotation (Line(
            points={{6,-12},{6,-17}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(waitStop.outPort[1], T2.inPort) annotation (Line(
            points={{6,-25.6},{6,-29}},
            color={0,0,0},
            smooth=Smooth.None));
        connect(T2.outPort, makeProduct.resume[1]) annotation (Line(
            points={{6,-38},{6,-41},{16,-41},{16,-35.3672},{16,-14.6621},{16,
                -12},{19.95,-12}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T15.outPort, waitShut2.inPort[1]) annotation (Line(
            points={{-65,-62},{-65,-68},{-65,-68}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(waitShut2.outPort[1], T3.inPort) annotation (Line(
            points={{-65,-76.6},{-65,-81},{-65,-81}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T3.outPort, shutStep.resume[1]) annotation (Line(
            points={{-65,-90},{-65,-90},{-65,-95},{-60,-95},{-46,-95},{-46,-90},
                {-47,-76},{-40.05,-77}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(makeProduct.valve3, setValve3.u[1]) annotation (Line(
            points={{61,6},{77,6},{77,-30},{40,-30},{40,-55},{51,-55},{51,-53.9}},
            color={255,0,255},
            smooth=Smooth.None));

        connect(shutStep.valve3, setValve3.u[2]) annotation (Line(
            points={{1,-57.2},{20,-57},{51,-57},{51,-58.1}},
            color={255,0,255},
            smooth=Smooth.None));
        connect(setValve3.y, bus.valve3) annotation (Line(
            points={{64.2,-56},{96,-56},{96,-5},{100,-5},{100,0}},
            color={255,0,255},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(setValve1.y, bus.valve1) annotation (Line(
            points={{45.65,78.5},{100,78.5},{100,0}},
            color={255,0,255},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(setValve2.y, bus.valve2) annotation (Line(
            points={{75.1,61},{96,61},{96,3},{100,3},{100,0}},
            color={255,0,255},
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(shutStep.bus, bus) annotation (Line(
            points={{0,-65},{0,-65},{101,-65},{101,0},{100,0}},
            color={255,128,0},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        connect(makeProduct.bus, bus) annotation (Line(
            points={{60,0},{100,0}},
            color={255,128,0},
            thickness=0.5,
            smooth=Smooth.None), Text(
            string="%second",
            index=1,
            extent={{6,3},{6,3}}));
        annotation (Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,120}},
              grid={1,1}), graphics), Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,120}},
              grid={1,1}), graphics={Text(
                          extent={{-33,18},{31,-32}},
                          lineColor={0,0,255},
                          textString="2")}));
      end TankController2;

      model MakeProduct
        extends Modelica_StateGraph2.PartialParallel(
          final use_inPort=true,
          final use_suspend=true,
          final use_activePort=false,
          final use_outPort=false,
          nEntry=1,
          nExit=1);
        parameter Modelica.SIunits.Height limit1(min=0) = 0.98
          "Maximum level of tank 1";
        parameter Modelica.SIunits.Height limit2(min=0) = 0.98
          "Maximum level of tank 2";
        parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
          "Minimum fill level of a tank";
        parameter Modelica.SIunits.Time waitTime=3
          "Wait time to newly open a valve";

        SignalBus bus annotation (Placement(transformation(
              extent={{-20,20},{20,-20}},
              rotation=90,
              origin={100,0}), iconTransformation(
              extent={{-20,20},{20,-20}},
              rotation=90,
              origin={200,0})));
        Modelica_StateGraph2.Step startStep(nOut=1, nIn=2)
          annotation (Placement(transformation(extent={{-24,72},{-16,80}})));
        Modelica_StateGraph2.Transition T1(
          waitTime=0.01,
          delayedTransition=false,
          use_conditionPort=false,
          condition=bus.start)
          annotation (Placement(transformation(extent={{-24,60},{-16,68}})));
        Modelica_StateGraph2.Step fillTank1(
          nIn=1,
          nOut=1,
          use_activePort=true)
          annotation (Placement(transformation(extent={{-24,46},{-16,54}})));
        Modelica_StateGraph2.Transition T2(condition=bus.level1 > limit1)
          annotation (Placement(transformation(extent={{-24,32},{-16,40}})));
        Modelica_StateGraph2.Step wait1(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{-24,16},{-16,24}})));
        Modelica_StateGraph2.Step fillTank2(
          nIn=1,
          nOut=1,
          use_activePort=true)
          annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
        Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=
              waitTime)
          annotation (Placement(transformation(extent={{-24,1},{-16,9}})));
        Modelica_StateGraph2.Transition T4(condition=bus.level1 < minLevel)
          annotation (Placement(transformation(extent={{-24,-27},{-16,-19}})));
        Modelica_StateGraph2.Step wait2(nIn=1, nOut=1) annotation (Placement(
              transformation(extent={{-24,-40},{-16,-32}})));
        Modelica_StateGraph2.Transition T5(delayedTransition=true, waitTime=
              waitTime) annotation (Placement(transformation(extent={{-24,-54},
                  {-16,-46}})));
        Modelica_StateGraph2.Step emptyTanks(
          nIn=1,
          nOut=1,
          use_activePort=true) annotation (Placement(transformation(extent={{
                  -24,-70},{-16,-62}})));
        Modelica_StateGraph2.Transition T6(condition=bus.level2 < minLevel)
          annotation (Placement(transformation(extent={{-24,-84},{-16,-76}})));
        Modelica.Blocks.Interfaces.BooleanOutput valve1
          "Value of Boolean output" annotation (Placement(transformation(
                extent={{100,70},{120,90}}), iconTransformation(extent={{200,
                  144},{220,164}})));
        Modelica.Blocks.Interfaces.BooleanOutput valve2
          "Value of Boolean output" annotation (Placement(transformation(
                extent={{100,50},{120,70}}), iconTransformation(extent={{200,
                  96},{220,116}})));
        Modelica.Blocks.Interfaces.BooleanOutput valve3
          "Value of Boolean output" annotation (Placement(transformation(
                extent={{100,30},{120,50}}), iconTransformation(extent={{200,
                  50},{220,70}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or or1(nu=2)
          annotation (Placement(transformation(extent={{45,54},{57,66}})));
      equation
        connect(fillTank1.outPort[1], T2.inPort) annotation (Line(
            points={{-20,45.4},{-20,40}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T2.outPort, wait1.inPort[1]) annotation (Line(
            points={{-20,31},{-20,24}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(wait1.outPort[1], T3.inPort) annotation (Line(
            points={{-20,15.4},{-20,9}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T3.outPort, fillTank2.inPort[1]) annotation (Line(
            points={{-20,0},{-20,-6}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(fillTank2.outPort[1], T4.inPort) annotation (Line(
            points={{-20,-14.6},{-20,-19}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T4.outPort, wait2.inPort[1]) annotation (Line(
            points={{-20,-28},{-20,-32}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(wait2.outPort[1], T5.inPort) annotation (Line(
            points={{-20,-40.6},{-20,-46}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T5.outPort, emptyTanks.inPort[1]) annotation (Line(
            points={{-20,-55},{-20,-62}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(emptyTanks.outPort[1], T6.inPort) annotation (Line(
            points={{-20,-70.6},{-20,-76}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T1.outPort, fillTank1.inPort[1]) annotation (Line(
            points={{-20,59},{-20,54}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(startStep.outPort[1], T1.inPort) annotation (Line(
            points={{-20,71.4},{-20,68}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T6.outPort, startStep.inPort[2]) annotation (Line(
            points={{-20,-85},{-20,-90},{-13.1895,-90},{2,-90},{2,-75.9486},{
                2,71.6699},{2,85},{-11.5762,85},{-19,85},{-19,80}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(entry[1], startStep.inPort[1]) annotation (Line(
            points={{0,100},{0,93},{-20,93},{-20,80},{-21,80}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(fillTank1.activePort, valve1) annotation (Line(
            points={{-15.28,50},{10,50},{10,65.2051},{10,80},{24.9414,80},{
                110,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(emptyTanks.activePort, valve3) annotation (Line(
            points={{-15.28,-66},{-15.28,-66},{10,-66},{30,-66},{30,-45.0898},
                {30,19.974},{30,40},{50.625,40},{110,40}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or1.y, valve2) annotation (Line(
            points={{58.2,60},{110,60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(fillTank2.activePort, or1.u[1]) annotation (Line(
            points={{-15.28,-10},{-15.28,-10},{-5.68828,-10},{16,-10},{16,
                10.2175},{16,41.1178},{16,62.1},{45,62.1}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(emptyTanks.activePort, or1.u[2]) annotation (Line(
            points={{-15.28,-66},{-15.28,-66},{2,-66},{21,-66},{21,-44.8607},
                {21,35.1527},{21,57.9},{45,57.9}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{
                  -200,-200},{200,200}}), graphics={Text(
                          extent={{130,118},{182,94}},
                          lineColor={0,0,0},
                          textString="2"),Text(
                          extent={{130,70},{182,46}},
                          lineColor={0,0,0},
                          textString="3"),Text(
                          extent={{128,170},{180,146}},
                          lineColor={0,0,0},
                          textString="1"),Text(
                          extent={{-174,16},{148,-34}},
                          lineColor={0,0,0},
                          textString="MakeProduct"),Text(
                          extent={{-22,124},{120,96}},
                          lineColor={0,0,0},
                          textString="valves")}), Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics));
      end MakeProduct;

      model ShutStep

        extends Modelica_StateGraph2.PartialParallel(
          final use_suspend=true,
          final use_activePort=false,
          final use_inPort=true,
          final use_outPort=true,
          final nEntry=2,
          final nExit=2);
        parameter Modelica.SIunits.Height minLevel(min=0) = 0.01
          "Minimum fill level of a tank";

        SignalBus bus annotation (Placement(transformation(
              extent={{-20,20},{20,-20}},
              rotation=90,
              origin={100,0}), iconTransformation(
              extent={{-20,20},{20,-20}},
              rotation=90,
              origin={200,0})));
        Modelica_StateGraph2.Step shutTank1(
          nIn=1,
          nOut=1,
          use_activePort=true)
          annotation (Placement(transformation(extent={{-20,52},{-12,60}})));
        Modelica_StateGraph2.Transition T13(delayedTransition=false,
            condition=bus.level1 < minLevel)
          annotation (Placement(transformation(extent={{-20,37},{-12,45}})));
        Modelica_StateGraph2.Step shutTank2(
          nIn=1,
          nOut=1,
          initialStep=false,
          use_activePort=true)
          annotation (Placement(transformation(extent={{16,52},{24,60}})));
        Modelica_StateGraph2.Step tank1Empty(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{-20,19},{-12,27}})));
        Modelica_StateGraph2.Step tank2Empty(nIn=1, nOut=1)
          annotation (Placement(transformation(extent={{16,19},{24,27}})));
        Modelica_StateGraph2.Transition T11(delayedTransition=false,
            condition=bus.level2 < minLevel)
          annotation (Placement(transformation(extent={{16,37},{24,45}})));
        Modelica.Blocks.Interfaces.BooleanOutput valve2
          "Value of Boolean output" annotation (Placement(transformation(
                extent={{100,70},{120,90}}), iconTransformation(extent={{200,
                  124},{220,144}})));
        Modelica.Blocks.Interfaces.BooleanOutput valve3
          "Value of Boolean output" annotation (Placement(transformation(
                extent={{100,40},{120,60}}), iconTransformation(extent={{200,
                  68},{220,88}})));
      equation
        connect(shutTank1.outPort[1], T13.inPort) annotation (Line(
            points={{-16,51.4},{-16,45}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T13.outPort, tank1Empty.inPort[1]) annotation (Line(
            points={{-16,36},{-16,27}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank2.outPort[1], T11.inPort) annotation (Line(
            points={{20,51.4},{20,45}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(T11.outPort, tank2Empty.inPort[1]) annotation (Line(
            points={{20,36},{20,27}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank1.inPort[1], entry[1]) annotation (Line(
            points={{-16,60},{-16,87.9297},{-16,100},{-30,100}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank2.inPort[1], entry[2]) annotation (Line(
            points={{20,60},{20,91},{20,99},{30,99},{30,100}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(tank1Empty.outPort[1], exit[1]) annotation (Line(
            points={{-16,18.4},{-16,-40.8},{-16,-79.483},{-16,-105},{-30,-105}},
            color={0,0,0},
            smooth=Smooth.Bezier));

        connect(tank2Empty.outPort[1], exit[2]) annotation (Line(
            points={{20,18.4},{20,-79.6934},{20,-105},{30,-105}},
            color={0,0,0},
            smooth=Smooth.Bezier));
        connect(shutTank1.activePort, valve2) annotation (Line(
            points={{-11.28,56},{-11.28,56},{-7.95723,56},{5,56},{5,67.9531},
                {5,80},{19,80},{110,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(shutTank2.activePort, valve3) annotation (Line(
            points={{24.72,56},{24.72,56},{52.9371,56},{60,56},{60,52.959},{
                60,50},{65.4199,50},{110,50}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              grid={1,1}), graphics), Icon(coordinateSystem(
                preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
              graphics={Text(
                          extent={{132,146},{184,122}},
                          lineColor={0,0,0},
                          textString="2"),Text(
                          extent={{136,88},{188,64}},
                          lineColor={0,0,0},
                          textString="3"),Text(
                          extent={{-166,26},{156,-22}},
                          lineColor={0,0,0},
                          textString="ShutStep"),Text(
                          extent={{-2,120},{140,92}},
                          lineColor={0,0,0},
                          textString="valves")}));
      end ShutStep;

      expandable connector SignalBus
        extends Modelica.Icons.SignalBus;
        Boolean valve1 annotation (HideResult=false);
        Boolean valve2 annotation (HideResult=false);
        Boolean valve3 annotation (HideResult=false);
        Boolean start annotation (HideResult=false);
        Boolean stop annotation (HideResult=false);
        Boolean shut annotation (HideResult=false);
        Modelica.SIunits.Length level1 annotation (HideResult=false);
        Modelica.SIunits.Length level2 annotation (HideResult=false);

        annotation (Icon(graphics={Rectangle(
                          extent={{0,0},{0,0}},
                          lineThickness=0.5,
                          lineColor={255,128,0})}));
      end SignalBus;

    end Internal;
    end ControlledTanks;

  package ProductionLine "Production line with simple robots"
    model MainSimple
      extends Modelica.Icons.Example;

      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton3
        annotation (Placement(transformation(
            origin={37,-9},
            extent={{-5,-5},{5,5}},
            rotation=90)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp3
        annotation (Placement(transformation(
            origin={15,-11},
            extent={{-5,-5},{15,15}},
            rotation=270)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.StartTable
        startTable annotation (Placement(transformation(extent={{-60,34},{-40,
                54}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table annotation (Placement(transformation(extent={{-40,34},{-20,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table1 annotation (Placement(transformation(extent={{-20,34},{0,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table2 annotation (Placement(transformation(extent={{0,34},{20,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.EndTable
        endTable annotation (Placement(transformation(extent={{40,34},{60,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table3 annotation (Placement(transformation(extent={{20,34},{40,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
        robot annotation (Placement(transformation(extent={{-20,34},{0,60}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
        robot1 annotation (Placement(transformation(extent={{0,34},{20,60}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermHorizontal
        robotTermHorizontal annotation (Placement(transformation(extent={{-40,
                34},{-20,60}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotComTerm
        robotComTerm annotation (Placement(transformation(extent={{20,14},{40,
                34}}, rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton
        annotation (Placement(transformation(extent={{-90,54},{-80,64}},
              rotation=0)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp
        annotation (Placement(transformation(
            origin={-95,35},
            extent={{-15,-15},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp1
        annotation (Placement(transformation(
            origin={-95,19},
            extent={{-15,-15},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton2
        annotation (Placement(transformation(
            origin={85,40},
            extent={{-5,-5},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp2
        annotation (Placement(transformation(extent={{80,44},{100,64}},
              rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton1
        annotation (Placement(transformation(
            origin={85,25},
            extent={{-5,-5},{5,5}},
            rotation=180)));
    equation
      connect(startTable.tableComNext, table.tableComPrev) annotation (Line(
            points={{-42,37},{-40,37},{-38,37}}, color={0,0,0}));
      connect(table.robotComTable, robotTermHorizontal.robotComRobot)
        annotation (Line(points={{-32,37},{-31.1538,37},{-28,37}}, color={0,0,
              0}));
      connect(table2.robotComTable, robot1.robotComRobot) annotation (Line(
            points={{8,37},{8.84615,37},{12,37}}, color={0,0,0}));
      connect(table2.tableComNext, table3.tableComPrev) annotation (Line(
            points={{18,37},{19.8462,37},{22,37}}, color={0,0,0}));
      connect(table3.robotComTable, robotComTerm.robotComRobot) annotation (
          Line(points={{28,37},{28,27.1923},{35,27.1923},{35,19}}, color={0,0,
              0}));
      connect(table3.tableComNext, endTable.tableComPrev) annotation (Line(
            points={{38,37},{39.8462,37},{42,37}}, color={0,0,0}));
      connect(table2.tableComPrev, table1.tableComNext) annotation (Line(
          points={{2,37},{0,37},{-2,37}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(table1.tableComPrev, table.tableComNext) annotation (Line(
          points={{-18,37},{-20,37},{-22,37}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(robot.robotComRobot, table1.robotComTable) annotation (Line(
          points={{-8,37},{-10,37},{-12,37}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(indicatorLamp.activePort, startTable.next_idle) annotation (
          Line(
          points={{-78.5,40},{-69.75,40},{-61,40}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(trigButton.y, startTable.next_ready) annotation (Line(
          points={{-80,59},{-80,59},{-70,59},{-70,52},{-70,44},{-61.1,44}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(indicatorLamp1.activePort, startTable.next_transport)
        annotation (Line(
          points={{-78.5,24},{-70,24},{-70,30},{-70,36},{-61,36}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(trigButton2.y, endTable.prev_idle) annotation (Line(
          points={{80,40},{72,40},{61.2,40}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(indicatorLamp2.activePort, endTable.prev_ready) annotation (
          Line(
          points={{78.5,54},{70,54},{70,49.6445},{70,44},{61,44}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(endTable.prev_transport, trigButton1.y) annotation (Line(
          points={{61.2,36},{64.543,36},{70,36},{70,30.1885},{70,25},{80,25}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(trigButton3.y, robotComTerm.u) annotation (Line(
          points={{37,-4},{37,12.9}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(robotComTerm.y, indicatorLamp3.activePort) annotation (Line(
          points={{33,13},{33,4},{28,4},{20,4},{20,-4.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-160,-160},{160,160}},
            initialScale=0.1), graphics={Text(
                      extent={{-114,30},{-114,22}},
                      lineColor={0,0,0},
                      textString="Next.Ready"),Text(
                      extent={{-110,64},{-110,56}},
                      lineColor={0,0,0},
                      textString="Next.Idle"),Text(
                      extent={{-120,46},{-120,38}},
                      lineColor={0,0,0},
                      textString="Next.Transport"),Text(
                      extent={{124,30},{124,22}},
                      lineColor={0,0,0},
                      textString="Prev.Transport off"),Text(
                      extent={{108,44},{108,36}},
                      lineColor={0,0,0},
                      textString="Prev.Idle"),Text(
                      extent={{112,58},{112,50}},
                      lineColor={0,0,0},
                      textString="Prev.Ready"),Text(
                      extent={{-18,-6},{-18,-14}},
                      lineColor={0,0,0},
                      textString="Robot.StartWork"),Text(
                      extent={{78,-6},{78,-14}},
                      lineColor={0,0,0},
                      textString="Robot.WorkDone")}));
    end MainSimple;

    model MainExtended
      extends Modelica.Icons.Example;

      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton
        annotation (Placement(transformation(extent={{-100,74},{-90,84}},
              rotation=0)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp
        annotation (Placement(transformation(
            origin={-107,55},
            extent={{-15,-15},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp1
        annotation (Placement(transformation(
            origin={-107,39},
            extent={{-15,-15},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton2
        annotation (Placement(transformation(
            origin={105,-20},
            extent={{-5,-5},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp2
        annotation (Placement(transformation(extent={{100,-16},{120,4}},
              rotation=0)));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton trigButton1
        annotation (Placement(transformation(
            origin={105,-35},
            extent={{-5,-5},{5,5}},
            rotation=180)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.StartTable
        startTable annotation (Placement(transformation(extent={{-80,54},{-60,
                74}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.EndTable
        endTable annotation (Placement(transformation(extent={{60,-26},{80,-6}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table annotation (Placement(transformation(extent={{-60,54},{-40,74}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table2 annotation (Placement(transformation(extent={{-20,54},{0,74}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TurnTableRight
        turnTableRight1 annotation (Placement(transformation(extent={{0,54},{
                20,74}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableVertical
        tableDown annotation (Placement(transformation(extent={{0,34},{20,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableVertical
        tableDown1 annotation (Placement(transformation(extent={{0,14},{20,34}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TurnTableLeft
        turnTableLeft2 annotation (Placement(transformation(extent={{0,-6},{
                20,14}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TurnTableRight
        turnTableRight annotation (Placement(transformation(extent={{20,-6},{
                40,14}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TurnTableLeft
        turnTableLeft annotation (Placement(transformation(extent={{20,-26},{
                40,-6}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        table1 annotation (Placement(transformation(extent={{40,-26},{60,-6}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
        robot annotation (Placement(transformation(extent={{-20,54},{0,80}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermHorizontal
        robotTermHorizontal annotation (Placement(transformation(extent={{-60,
                54},{-40,80}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotTermVertical
        robotTermVertical annotation (Placement(transformation(extent={{0,14},
                {26,34}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotVertical
        robotDown annotation (Placement(transformation(extent={{0,34},{26,54}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
        robot1 annotation (Placement(transformation(extent={{40,-26},{60,0}},
              rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Tables.TableHorizontal
        tableHorizontal annotation (Placement(transformation(extent={{-40,54},
                {-20,74}}, rotation=0)));
      Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Utilities.RobotHorizontal
        robotHorizontal annotation (Placement(transformation(extent={{-40,54},
                {-20,80}}, rotation=0)));
    equation
      connect(startTable.tableComNext, table.tableComPrev) annotation (Line(
            points={{-62,57},{-60,57},{-58,57}}, color={0,0,0}));
      connect(table.robotComTable, robotTermHorizontal.robotComRobot)
        annotation (Line(points={{-52,57},{-51.1538,57},{-48,57}}, color={0,0,
              0}));
      connect(tableDown.robotComTable, robotDown.robotComRobot)
        annotation (Line(points={{3,46},{3,45.1923},{3,42}}, color={0,0,0}));
      connect(tableDown1.robotComTable, robotTermVertical.robotComRobot)
        annotation (Line(points={{3,26},{3,25.1923},{3,22}}, color={0,0,0}));
      connect(turnTableLeft2.tableComNext, turnTableRight.tableComPrev)
        annotation (Line(points={{18,-3},{21.2,-3}}, color={0,0,0}));
      connect(turnTableLeft.tableComNext, table1.tableComPrev)
        annotation (Line(points={{38,-23},{42,-23}}, color={0,0,0}));
      connect(table1.robotComTable, robot1.robotComRobot) annotation (Line(
            points={{48,-23},{48.8462,-23},{52,-23}}, color={0,0,0}));
      connect(table1.tableComNext, endTable.tableComPrev) annotation (Line(
            points={{58,-23},{59.8462,-23},{62,-23}}, color={0,0,0}));
      connect(tableHorizontal.robotComTable, robotHorizontal.robotComRobot)
        annotation (Line(points={{-32,57},{-31.1538,57},{-28,57}}, color={0,0,
              0}));
      connect(table2.robotComTable, robot.robotComRobot) annotation (Line(
            points={{-12,57},{-11.1539,57},{-8,57}}, color={0,0,0}));
      connect(tableHorizontal.tableComPrev, table.tableComNext) annotation (
          Line(
          points={{-38,57},{-40,57},{-42,57}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(table2.tableComPrev, tableHorizontal.tableComNext) annotation (
          Line(
          points={{-18,57},{-20,57},{-22,57}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(turnTableRight1.tableComPrev, table2.tableComNext) annotation (
          Line(
          points={{1.2,57},{1.2,57},{-2,57}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(tableDown.tableComPrev, turnTableRight1.tableComNext)
        annotation (Line(
          points={{3,52},{3,55.2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(tableDown.tableComNext, tableDown1.tableComPrev) annotation (
          Line(
          points={{3,36},{3,36},{3,32}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(tableDown1.tableComNext, turnTableLeft2.tableComPrev)
        annotation (Line(
          points={{3,16},{3,11.8},{2.2,11.8}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(turnTableRight.tableComNext, turnTableLeft.tableComPrev)
        annotation (Line(
          points={{23,-4.8},{23,-4.8},{23,-8.2},{22.2,-8.2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(trigButton.y, startTable.next_ready) annotation (Line(
          points={{-90,79},{-86,79},{-86,74},{-86,69.459},{-86,64},{-81.1,64}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(indicatorLamp.activePort, startTable.next_idle) annotation (
          Line(
          points={{-90.5,60},{-88,60},{-81,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(indicatorLamp1.activePort, startTable.next_transport)
        annotation (Line(
          points={{-90.5,44},{-86,44},{-86,49.6602},{-86,56},{-81,56}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(indicatorLamp2.activePort, endTable.prev_ready) annotation (
          Line(
          points={{98.5,-6},{88,-6},{88,-10},{88,-16},{81,-16}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(trigButton2.y, endTable.prev_idle) annotation (Line(
          points={{100,-20},{100,-20},{81.2,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(trigButton1.y, endTable.prev_transport) annotation (Line(
          points={{100,-35},{100,-35},{94,-35},{90,-35},{90,-31},{90,-24},{
              81.2,-24}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(
            preserveAspectRatio=true,
            extent={{-160,-160},{160,160}},
            initialScale=0.1), graphics={Text(
                      extent={{-124,48},{-124,40}},
                      lineColor={0,0,0},
                      textString="Next.Ready"),Text(
                      extent={{-120,82},{-120,74}},
                      lineColor={0,0,0},
                      textString="Next.Idle"),Text(
                      extent={{-130,64},{-130,56}},
                      lineColor={0,0,0},
                      textString="Next.Transport"),Text(
                      extent={{144,-30},{144,-38}},
                      lineColor={0,0,0},
                      textString="Prev.Transport off"),Text(
                      extent={{128,-16},{128,-24}},
                      lineColor={0,0,0},
                      textString="Prev.Idle"),Text(
                      extent={{132,-2},{132,-10}},
                      lineColor={0,0,0},
                      textString="Prev.Ready")}));
    end MainExtended;

    package Internal
      package Connectors
        connector TableComNext "Connects with the successor table"
          output Modelica.Blocks.Interfaces.BooleanOutput Ready
            "Sends signal to successor that table is ready to commence out-transport of the car";
          input Modelica.Blocks.Interfaces.BooleanInput Idle
            "Receives signal from successor that its table is Idle";
          input Modelica.Blocks.Interfaces.BooleanInput Transport
            "Receives signal from successor when out-transport should be performed";
          annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent=
                   {{-100,-100},{100,100}}), graphics={Ellipse(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={0,0,255},
                              fillPattern=FillPattern.Solid)}));
        end TableComNext;

        connector TableComPrev "Connects with the predecessor table"
          input Modelica.Blocks.Interfaces.BooleanInput Ready
            "Receives signal from predecessor that table is ready to commence out-transport of the car";
          output Modelica.Blocks.Interfaces.BooleanOutput Idle
            "Sends signal to predecessor that table is Idle";
          output Modelica.Blocks.Interfaces.BooleanOutput Transport
            "Sends signal to predecessor that out-transport should be performed";
          annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent=
                   {{-100,-100},{100,100}}), graphics={Ellipse(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={170,85,255},
                              fillPattern=FillPattern.Solid)}));
        end TableComPrev;

        connector RobotComTable "Connects table to robot"
          output Modelica.Blocks.Interfaces.BooleanOutput StartWork
            "Sends signal when car is in place and robot can start working";
          input Modelica.Blocks.Interfaces.BooleanInput WorkDone
            "Receives signal when robot has finished working";
          annotation (Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,100}},
                initialScale=0.1), graphics={Ellipse(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,0},
                              fillPattern=FillPattern.Solid)}));
        end RobotComTable;

        connector RobotComRobot "Connects robot to table"
          input Modelica.Blocks.Interfaces.BooleanInput StartWork
            "Receives signal when car is in place and work can be commenced";
          output Modelica.Blocks.Interfaces.BooleanOutput WorkDone
            "Sends signal when work is done";
          annotation (Icon(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-200,-200},{200,200}},
                initialScale=1), graphics={Ellipse(
                              extent={{-198,198},{198,-198}},
                              lineColor={0,0,0},
                              fillColor={255,255,0},
                              fillPattern=FillPattern.Solid)}));
        end RobotComRobot;
      end Connectors;

      package Tables
        model StartTable
          "Generates cars that are sent on to the production line"

          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext annotation (Placement(transformation(extent={{76,-73},
                    {84,-65}}, rotation=0), iconTransformation(extent={{76,-74},
                    {84,-66}})));
          Modelica.Blocks.Interfaces.BooleanInput next_ready annotation (
              Placement(transformation(extent={{-122,-10},{-100,10}},
                  rotation=0)));
          Modelica.Blocks.Interfaces.BooleanOutput next_idle annotation (
              Placement(transformation(
                origin={-110,-40},
                extent={{-10,-10},{10,10}},
                rotation=180)));
          Modelica.Blocks.Interfaces.BooleanOutput next_transport annotation (
             Placement(transformation(
                origin={-110,-80},
                extent={{-10,-10},{10,10}},
                rotation=180)));
        equation
          connect(next_ready, tableComNext.Ready) annotation (Line(
              points={{-111,0},{55.9385,0},{80,0},{80,-22.8428},{80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(next_idle, tableComNext.Idle) annotation (Line(
              points={{-110,-40},{45.8594,-40},{80,-40},{80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(next_transport, tableComNext.Transport) annotation (Line(
              points={{-110,-80},{63.4863,-80},{80,-80},{80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics), Icon(
                coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={Rectangle(
                              extent={{100,-100},{-100,100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Text(
                              extent={{-58,100},{54,46}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid,
                              textString="Start"),Rectangle(
                              extent={{-100,46},{100,-46}},
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid)}));
        end StartTable;

        model EndTable "Ends the line"

          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev annotation (Placement(transformation(extent={{-84,-73},
                    {-76,-65}}, rotation=0), iconTransformation(extent={{-84,
                    -74},{-76,-66}})));
          Modelica.Blocks.Interfaces.BooleanOutput prev_ready annotation (
              Placement(transformation(extent={{100,-10},{120,10}}, rotation=
                    0)));
          Modelica.Blocks.Interfaces.BooleanInput prev_idle annotation (
              Placement(transformation(
                origin={112,-40},
                extent={{-12,-12},{12,12}},
                rotation=180)));
          Modelica.Blocks.Interfaces.BooleanInput prev_transport annotation (
              Placement(transformation(
                origin={112,-80},
                extent={{-12,-12},{12,12}},
                rotation=180)));
          Modelica.Blocks.Logical.Not Not annotation (Placement(
                transformation(
                origin={-10,-80},
                extent={{-10,-10},{10,10}},
                rotation=180)));
        equation
          connect(prev_ready, tableComPrev.Ready) annotation (Line(
              points={{110,0},{-54.3945,0},{-80,0},{-80,-25.6729},{-80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));

          connect(prev_idle, tableComPrev.Idle) annotation (Line(
              points={{112,-40},{-50.375,-40},{-80,-40},{-80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.y, tableComPrev.Transport) annotation (Line(
              points={{-21,-80},{-66.8633,-80},{-80,-80},{-80,-69}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.u, prev_transport) annotation (Line(
              points={{2,-80},{112,-80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics), Icon(
                coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={Rectangle(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Text(
                              extent={{-54,100},{56,38}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid,
                              textString="End"),Rectangle(
                              extent={{-100,46},{100,-46}},
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid)}));
        end EndTable;

        model TableVertical
          "Vertical table operating in southbound direction"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.Table(
            Prev_Ready(y=tableComPrev.Ready),
            CarInPosition(y=carInPosition),
            Robot_WorkDone(y=robotComTable.WorkDone),
            Next_Idle(y=tableComNext.Idle),
            Next_Transport(y=tableComNext.Transport));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComTable
            robotComTable annotation (Placement(transformation(extent={{-96,-6},
                    {-84,6}}), iconTransformation(extent={{-74,16},{-66,24}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext annotation (Placement(transformation(extent={{-96,-86},
                    {-84,-74}}), iconTransformation(extent={{-74,-84},{-66,-76}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev annotation (Placement(transformation(extent={{-96,74},
                    {-84,86}}), iconTransformation(extent={{-74,76},{-66,84}})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
                InTransport.active) annotation (Placement(transformation(
                  extent={{-34,60},{-60,80}})));
          Modelica.Blocks.Sources.BooleanExpression OutTransport_active(y=
                OutTransport.active) annotation (Placement(transformation(
                  extent={{-34,40},{-60,60}})));
          Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
                extent={{-6,-6},{6,6}},
                rotation=0,
                origin={-72,30})));
          Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp
            annotation (Placement(transformation(
                extent={{-6,-6},{14,14}},
                rotation=0,
                origin={-44,26})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
            annotation (Placement(transformation(extent={{-34,80},{-60,100}})));
          Modelica.Blocks.Sources.BooleanExpression Robot_StartWork(y=
                Occupied.active) annotation (Placement(transformation(extent=
                    {{-40,-10},{-60,10}})));
          Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
            annotation (Placement(transformation(extent={{-40,-90},{-60,-70}})));
        equation
          carInPosition = pos >= -0.5 and pos < 0.5;
          if InTransport.active or OutTransport.active then
            der(pos) = transportLength/transportTime;
          else
            der(pos) = 0;
          end if;

          if Empty.active then
            newPoints = [zeros(4), zeros(4)];
          else
            newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
              ones(4)];
          end if;

          when Empty.active then
            reinit(pos, -transportLength);
          end when;
          connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
              points={{-61.3,90},{-80.2185,90},{-90,90},{-90,80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
              points={{-61.3,70},{-68,70},{-90,70},{-90,80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(or1.u1, OutTransport_active.y) annotation (Line(
              points={{-79.2,30},{-84,30},{-84,40},{-84,50},{-71.3643,50},{-61.3,
                  50}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(or1.u2, Prev_Transport.y) annotation (Line(
              points={{-79.2,25.2},{-90,25.2},{-90,39.5414},{-90,60},{-90,70},
                  {-76.3787,70},{-61.3,70}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Robot_StartWork.y, robotComTable.StartWork) annotation (
              Line(
              points={{-61,0},{-75.5,0},{-90,0}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
              points={{-61,-80},{-76,-80},{-75.5,-80},{-90,-80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(indicatorLamp.activePort, or1.y) annotation (Line(
              points={{-51.5,30},{-58,30},{-65.4,30},{-65.4,30}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics), Icon(
                coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={Rectangle(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent={{-46,100},{46,-100}},
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect([zeros(4), zeros(4)],
                    newPoints),
                              lineColor={0,0,0},
                              fillColor={255,0,0},
                              fillPattern=FillPattern.Solid)}));
        end TableVertical;

        model TurnTableRight
          "Table which turns the track direction southbound"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.TurnTable;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev annotation (Placement(transformation(extent={{-96,-66},
                    {-84,-54}}, rotation=0), iconTransformation(extent={{-92,
                    -74},{-84,-66}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext annotation (Placement(transformation(extent={{-66,-96},
                    {-54,-84}}, rotation=0), iconTransformation(extent={{-74,
                    -92},{-66,-84}})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
            annotation (Placement(transformation(
                origin={-47,-54},
                extent={{-27,-14},{5,6}},
                rotation=180)));
          Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
            annotation (Placement(transformation(
                origin={-31,-84},
                extent={{-27,-14},{5,6}},
                rotation=180)));
          Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
                InTransport.active) annotation (Placement(transformation(
                origin={-47,-34},
                extent={{-27,-14},{5,6}},
                rotation=180)));
          Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp
            "Motor" annotation (Placement(transformation(
                origin={-88,74},
                extent={{-18,-18},{2,2}},
                rotation=90)));
          Modelica.Blocks.Sources.BooleanExpression OutTransport_Active(y=
                OutTransport.active) annotation (Placement(transformation(
                origin={-47,-14},
                extent={{-27,-14},{9,6}},
                rotation=180)));
          Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
                origin={-78,26},
                extent={{-4,-4},{8,8}},
                rotation=90)));
        equation
          carInPosition = pos >= -0.5 and pos < 0.5;

          if InTransport.active or OutTransport.active then
            der(pos) = transportLength/transportTime;
          else
            der(pos) = 0;
          end if;

          if Empty.active then
            rectangle1 = {{-46,100},{46,-100}};
            rectangle2 = {{-100,46},{100,-46}};
            newPoints = [zeros(4), zeros(4)];
          elseif Occupied.active or OutTransport.active then
            rectangle1 = {{-100,46},{100,-46}};
            rectangle2 = {{-46,100},{46,-100}};
            newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
              ones(4)];
          else
            newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
              zeros(4)];
            rectangle1 = {{-46,100},{46,-100}};
            rectangle2 = {{-100,46},{100,-46}};
          end if;

          when Empty.active then
            reinit(pos, -transportLength);
          end when;
          connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
              points={{-37.6,-80},{-49.6,-80},{-49.6,-90},{-60,-90}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
              points={{-53.6,-50},{-61.2395,-50},{-70,-50},{-70,-55},{-70,-60},
                  {-79.0527,-60},{-88,-60},{-90,-60}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
              points={{-53.6,-30},{-90,-30},{-90,-60}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(or1.u1, Prev_Transport.y) annotation (Line(
              points={{-80,20.8},{-80,20.8},{-80,-5.88984},{-80,-30},{-53.6,-30}},
              color={255,0,255},
              smooth=Smooth.Bezier));

          connect(OutTransport_Active.y, or1.u2) annotation (Line(
              points={{-57.8,-10},{-75.2,-10},{-75.2,8.40781},{-75.2,20.8}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(indicatorLamp.activePort, or1.y) annotation (Line(
              points={{-80,54.5},{-80,54.5},{-80,34.6},{-80,34.6}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics={Text(
                              extent={{-196,64},{-116,46}},
                              lineColor={0,0,0},
                              textString="Motor"),Text(
                              extent={{-96,78},{-64,68}},
                              lineColor={0,0,0},
                              textString="Motor")}), Icon(coordinateSystem(
                  preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                graphics={Rectangle(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent=DynamicSelect({{-46,100},{46,-100}},
                    rectangle1),
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent=DynamicSelect({{-100,46},{100,-46}},
                    rectangle2),
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect([zeros(4), zeros(4)],
                    newPoints),
                              lineColor={0,0,0},
                              fillColor={255,0,0},
                              fillPattern=FillPattern.Solid)}));
        end TurnTableRight;

        model TableHorizontal
          "Horizontal table operating in eastbound direction"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.Table(
            Occupied(use_activePort=false),
            Prev_Ready(y=tableComPrev.Ready),
            CarInPosition(y=carInPosition),
            Next_Transport(y=tableComNext.Transport),
            Robot_WorkDone(y=robotComTable.WorkDone),
            Next_Idle(y=tableComNext.Idle));

          Modelica.Blocks.Sources.BooleanExpression OutTransport_active(y=
                OutTransport.active) annotation (Placement(transformation(
                  extent={{-100,-10},{-76,10}})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
                InTransport.active) annotation (Placement(transformation(
                  extent={{-100,-30},{-76,-10}})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
            annotation (Placement(transformation(extent={{-100,-50},{-76,-30}})));
          Modelica.Blocks.Sources.BooleanExpression Robot_StartWork(y=
                Occupied.active) annotation (Placement(transformation(extent=
                    {{-40,-100},{-20,-80}})));
          Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
            annotation (Placement(transformation(extent={{40,-100},{60,-80}})));
          Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
                extent={{-6,-6},{6,6}},
                rotation=90,
                origin={-68,16})));
          Modelica_StateGraph2.Blocks.MathBoolean.ShowValue indicatorLamp
            annotation (Placement(transformation(
                extent={{-14,-14},{6,6}},
                rotation=90,
                origin={-72,50})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev annotation (Placement(transformation(extent={{-86,-96},
                    {-74,-84}}), iconTransformation(extent={{-84,-74},{-76,-66}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComTable
            robotComTable annotation (Placement(transformation(extent={{-6,-96},
                    {6,-84}}), iconTransformation(extent={{-24,-74},{-16,-66}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext annotation (Placement(transformation(extent={{74,-96},
                    {86,-84}}), iconTransformation(extent={{76,-74},{84,-66}})));
        equation
          carInPosition = pos >= -0.5 and pos < 0.5;

          if InTransport.active or OutTransport.active then
            der(pos) = transportLength/transportTime;
          else
            der(pos) = 0;
          end if;

          if Empty.active then
            newPoints = [zeros(4), zeros(4)];
          else
            newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
              zeros(4)];
          end if;

          when Empty.active then
            reinit(pos, -transportLength);
          end when;

          connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
              points={{61,-90},{80,-90}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Robot_StartWork.y, robotComTable.StartWork) annotation (
              Line(
              points={{-19,-90},{-19,-90},{0,-90}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
              points={{-74.8,-40},{-72,-40},{-72,-52.9433},{-72,-76.8164},{-72,
                  -90},{-80,-90}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
              points={{-74.8,-20},{-62,-20},{-62,-33.3984},{-62,-74.0808},{-62,
                  -90},{-80,-90}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(or1.u1, OutTransport_active.y) annotation (Line(
              points={{-68,8.8},{-68,0},{-74.8,0}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Transport.y, or1.u2) annotation (Line(
              points={{-74.8,-20},{-63,-20},{-63,8.8},{-63.2,8.8}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(indicatorLamp.activePort, or1.y) annotation (Line(
              points={{-68,34.5},{-68,34.5},{-68,22.6}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics), Icon(
                coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                    {100,100}}), graphics={Rectangle(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent={{-100,46},{100,-46}},
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect([zeros(4), zeros(4)],
                    newPoints),
                              lineColor={0,0,0},
                              fillColor={255,0,0},
                              fillPattern=FillPattern.Solid),Ellipse(
                              extent=DynamicSelect({{0,0},{0,0}},
                    newBlinkPoints),
                              lineColor={255,0,0},
                              fillColor={255,17,0},
                              fillPattern=FillPattern.Solid)}));
        end TableHorizontal;

        model TurnTableLeft "Table which turns the track direction eastbound"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.TurnTable;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev annotation (Placement(transformation(extent={{-86,86},
                    {-74,74}}, rotation=0), iconTransformation(extent={{-82,
                    82},{-74,74}})));
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext annotation (Placement(transformation(extent={{86,-74},
                    {74,-86}}, rotation=0), iconTransformation(extent={{84,-66},
                    {76,-74}})));
          Modelica.Blocks.Sources.BooleanExpression Prev_Idle(y=Empty.active)
            annotation (Placement(transformation(
                origin={-19,94},
                extent={{1,-6},{27,14}},
                rotation=180)));
          Modelica.Blocks.Sources.BooleanExpression Next_Ready(y=Waiting.active)
            annotation (Placement(transformation(extent={{60,-18},{86,2}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Prev_Transport(y=
                InTransport.active) annotation (Placement(transformation(
                origin={-19,74},
                extent={{1,-6},{27,14}},
                rotation=180)));
          Modelica.Blocks.Logical.Or or1 annotation (Placement(transformation(
                origin={-80,30},
                extent={{-10,-10},{10,10}},
                rotation=270)));
          Modelica.Blocks.Sources.BooleanExpression OutTransport_Active(y=
                OutTransport.active) annotation (Placement(transformation(
                origin={-19,54},
                extent={{1,-6},{27,14}},
                rotation=180)));
          Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue
            annotation (Placement(transformation(
                extent={{-10,-10},{10,10}},
                rotation=270,
                origin={-80,-10})));
        equation
          carInPosition = pos >= -0.5 and pos < 0.5;

          if InTransport.active or OutTransport.active then
            der(pos) = transportLength/transportTime;
          else
            der(pos) = 0;
          end if;

          if Empty.active then
            rectangle1 = {{-100,46},{100,-46}};
            rectangle2 = {{-46,100},{46,-100}};
            newPoints = [zeros(4), zeros(4)];
          elseif Occupied.active or OutTransport.active then
            rectangle1 = {{-46,100},{46,-100}};
            rectangle2 = {{-100,46},{100,-46}};
            newPoints = {{-50,25},{-50,-25},{50,-25},{50,25}} + pos*[ones(4),
              zeros(4)];
          else
            rectangle1 = {{-100,46},{100,-46}};
            rectangle2 = {{-46,100},{46,-100}};
            newPoints = {{25,-50},{-25,-50},{-25,50},{25,50}} - pos*[zeros(4),
              ones(4)];
          end if;

          when Empty.active then
            reinit(pos, -transportLength);
          end when;
          connect(OutTransport_Active.y, or1.u1) annotation (Line(
              points={{-47.3,50},{-47.3,50},{-70.4519,50},{-80,50},{-80,42}},
              color={255,0,255},
              smooth=Smooth.Bezier));

          connect(Prev_Transport.y, or1.u2) annotation (Line(
              points={{-47.3,70},{-88,70},{-88,42}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Next_Ready.y, tableComNext.Ready) annotation (Line(
              points={{87.3,-8},{94,-8},{94,-19.5},{94,-72},{94,-80},{80,-80}},
              color={255,0,255},
              smooth=Smooth.Bezier));

          connect(showValue.activePort, or1.y) annotation (Line(
              points={{-80,1.5},{-80,19},{-80,19}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Idle.y, tableComPrev.Idle) annotation (Line(
              points={{-47.3,90},{-52,90},{-66.9023,90},{-80,90},{-80,80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Prev_Transport.y, tableComPrev.Transport) annotation (Line(
              points={{-47.3,70},{-69.2703,70},{-80,70},{-80,80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics={Text(
                              extent={{-96,-16},{-64,-26}},
                              lineColor={0,0,0},
                              textString="Motor")}), Icon(coordinateSystem(
                  preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
                graphics={Rectangle(
                              extent={{-100,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent=DynamicSelect({{-100,46},{100,-46}},
                    rectangle1),
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent=DynamicSelect({{-46,100},{46,-100}},
                    rectangle2),
                              lineColor={95,95,95},
                              fillColor={135,135,135},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect([zeros(4), zeros(4)],
                    newPoints),
                              lineColor={0,0,0},
                              fillColor={255,0,0},
                              fillPattern=FillPattern.Solid)}));
        end TurnTableLeft;
      end Tables;

      package Utilities
        model RobotComTerm "Connects to table RobotCom, used for testing"

          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot annotation (Placement(transformation(extent={{40,-60},
                    {60,-40}}, rotation=0)));
          Modelica.Blocks.Interfaces.BooleanInput u annotation (Placement(
                transformation(
                origin={70,-111},
                extent={{-11,-12},{11,12}},
                rotation=90)));
          Modelica.Blocks.Interfaces.BooleanOutput y annotation (Placement(
                transformation(
                origin={30,-110},
                extent={{-10,-10},{10,10}},
                rotation=270)));
        equation
          connect(y, robotComRobot.StartWork) annotation (Line(
              points={{30,-110},{30,-50},{50,-50}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(u, robotComRobot.WorkDone) annotation (Line(
              points={{70,-111},{70,-50},{50,-50}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=false,
                  extent={{-100,-100},{100,100}}), graphics), Icon(
                coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},
                    {100,100}}), graphics={Ellipse(
                              extent={{30,-30},{70,-70}},
                              lineColor={0,0,0},
                              fillColor={0,0,0},
                              fillPattern=FillPattern.Solid)}));
        end RobotComTerm;

        model RobotHorizontal
          "Robot that can be connected to a horizontal table"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.Robot;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot annotation (Placement(transformation(extent={{-4,-84},
                    {4,-76}}, rotation=0), iconTransformation(extent={{16,-74},
                    {24,-66}})));

          Modelica.Blocks.Sources.BooleanExpression Work_Done(y=WorkDone.active)
            annotation (Placement(transformation(extent={{-98,-94},{-40,-66}},
                  rotation=0)));
        equation

          if robotComRobot.StartWork then
            PolOnePoints = [-34, 100; -52, 92; 18, 44; 22, 54; -34, 100];
            PolTwoPoints = [22, 54; 12, 46; 24, 18; 26, 24; 22, 54];
            PolThreePoints = [18, 24; 26, 24; 26, 6; 24, 8; 24, 12; 18, 24];
          else
            PolOnePoints = [-58, 94; -28, 92; 6, 148; -4, 156; -58, 94];
            PolTwoPoints = [-4, 154; 4, 146; 38, 148; 36, 152; -4, 154];
            PolThreePoints = [30, 150; 38, 150; 38, 132; 36, 134; 36, 138; 30,
              150];
          end if;
          connect(Work_Done.y, robotComRobot.WorkDone) annotation (Line(
              points={{-37.1,-80},{-18,-80},{0,-80}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,160}},
                initialScale=0.1), graphics), Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,160}},
                initialScale=0.1), graphics={Rectangle(
                              extent={{-100,162},{100,100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent={{-58,56},{-28,96}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.VerticalCylinder,
                              fillColor={255,128,0}),Ellipse(
                              extent={{-58,100},{-26,90}},
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{-58,94},{-28,92},{6,148},
                    {-4,156},{-58,94}}, PolOnePoints),
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{-4,154},{4,146},{38,148},
                    {36,152},{-4,154}}, PolTwoPoints),
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{30,150},{38,150},{38,132},
                    {36,134},{36,138},{30,150}}, PolThreePoints),
                              lineColor={0,0,0},
                              fillColor={0,0,0},
                              fillPattern=FillPattern.Solid),Ellipse(
                              extent={{-84,50},{-4,60}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.VerticalCylinder,
                              fillColor={255,128,0}),Rectangle(
                              extent={{-62,54},{-24,70}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.VerticalCylinder,
                              fillColor={255,128,0})}));
        end RobotHorizontal;

        model RobotVertical "Robot than can be connected with vertical table"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.Robot;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot annotation (Placement(transformation(extent={{-73,-4},
                    {-81,4}}, rotation=0), iconTransformation(extent={{-66,-24},
                    {-74,-16}})));

          Modelica.Blocks.Sources.BooleanExpression Work_Done(y=WorkDone.active)
            annotation (Placement(transformation(
                origin={-37,84},
                extent={{-29,-14},{29,14}},
                rotation=180)));
        equation
          if robotComRobot.StartWork then
            PolOnePoints = [100, 34; 92, 52; 44, -18; 54, -22; 100, 34];
            PolTwoPoints = [54, -22; 46, -12; 18, -24; 24, -26; 54, -22];
            PolThreePoints = [24, -18; 24, -26; 6, -26; 8, -24; 12, -24; 24,
              -18];
          else
            PolOnePoints = [94, 58; 92, 28; 148, -6; 156, 4; 94, 58];
            PolTwoPoints = [154, 4; 146, -4; 148, -38; 152, -36; 154, 4];
            PolThreePoints = [150, -30; 150, -38; 132, -38; 134, -36; 138, -36;
              150, -30];
          end if;
          connect(Work_Done.y, robotComRobot.WorkDone) annotation (Line(
              points={{-68.9,84},{-77,84},{-77,76.3711},{-77,0}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{160,100}},
                initialScale=0.1), graphics), Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{160,100}},
                initialScale=0.1), graphics={Rectangle(
                              extent={{100,-100},{162,100}},
                              lineColor={0,0,0},
                              fillColor={255,255,255},
                              fillPattern=FillPattern.Solid),Rectangle(
                              extent={{56,28},{96,58}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.HorizontalCylinder,
                              fillColor={255,128,0}),Ellipse(
                              extent={{90,58},{100,26}},
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{94,58},{92,28},{148,-6},
                    {156,4},{94,58}}, PolOnePoints),
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{154,4},{146,-4},{148,-38},
                    {152,-36},{154,4}}, PolTwoPoints),
                              lineColor={0,0,0},
                              fillColor={255,128,0},
                              fillPattern=FillPattern.Solid),Polygon(
                              points=DynamicSelect({{150,-30},{150,-38},{132,
                    -38},{134,-36},{138,-36},{150,-30}}, PolThreePoints),
                              lineColor={0,0,0},
                              fillColor={0,0,0},
                              fillPattern=FillPattern.Solid),Ellipse(
                              extent={{60,4},{50,84}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.VerticalCylinder,
                              fillColor={255,128,0}),Rectangle(
                              extent={{54,62},{70,24}},
                              lineColor={0,0,0},
                              fillPattern=FillPattern.HorizontalCylinder,
                              fillColor={255,128,0})}));
        end RobotVertical;

        model RobotTermHorizontal
          "Terminator for horizontal tables used solely for transportation"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.RobotTerm;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot annotation (Placement(transformation(extent={{-4,-80},
                    {4,-72}}, rotation=0), iconTransformation(extent={{16,-74},
                    {24,-66}})));

          Modelica.Blocks.Sources.BooleanExpression Start_Work(y=
                robotComRobot.StartWork) annotation (Placement(transformation(
                  extent={{-98,-74},{-40,-46}}, rotation=0)));
        equation
          connect(Start_Work.y, robotComRobot.WorkDone) annotation (Line(
              points={{-37.1,-60},{-30.0028,-60},{-20,-60},{-20,-68.1719},{-20,
                  -76},{-11.8359,-76},{0,-76}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{100,160}},
                initialScale=0.1), graphics), Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{100,160}},
                initialScale=0.1), graphics={Rectangle(
                              extent={{-100,120},{100,100}},
                              lineColor={0,0,0},
                              fillColor={255,255,0},
                              fillPattern=FillPattern.Solid)}));
        end RobotTermHorizontal;

        model RobotTermVertical
          "Terminator for vertical tables used solely for transportation"
          extends
            Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Interfaces.RobotTerm;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot annotation (Placement(transformation(extent={{-81,4},
                    {-73,-4}}, rotation=0), iconTransformation(extent={{-74,-16},
                    {-66,-24}})));
          Modelica.Blocks.Sources.BooleanExpression Start_Work(y=
                robotComRobot.StartWork) annotation (Placement(transformation(
                origin={9,0},
                extent={{-29,-14},{29,14}},
                rotation=180)));
        equation
          connect(Start_Work.y, robotComRobot.WorkDone) annotation (Line(
              points={{-22.9,5.68298e-015},{-48.45,5.68298e-015},{-48.45,0},{
                  -77,0}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(
                preserveAspectRatio=false,
                extent={{-100,-100},{160,100}},
                initialScale=0.1), graphics), Icon(coordinateSystem(
                preserveAspectRatio=true,
                extent={{-100,-100},{160,100}},
                initialScale=0.1), graphics={Rectangle(
                              extent={{120,100},{100,-100}},
                              lineColor={0,0,0},
                              fillColor={255,255,0},
                              fillPattern=FillPattern.Solid)}));
        end RobotTermVertical;
      end Utilities;

      package Interfaces
        partial model Table "Table Logic"
          extends Task;
          parameter Real transportLength=2*100
            "Length of the table in pixels";
          parameter Real transportTime=4
            "Desired time to travel through table length";
          Real pos(start=-2*transportLength, fixed=true)
            "Current position of the car";
          Real[4, 2] newPoints "Coordinates for animation of the car";
          parameter Real carLength=100 "Length of the car";
          Boolean carInPosition "Signal that car is in position";

          Modelica.Blocks.Sources.BooleanExpression Prev_Ready annotation (
              Placement(transformation(extent={{10,52},{40,72}}, rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Next_Idle annotation (
              Placement(transformation(extent={{10,-44},{40,-24}}, rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Next_Transport
            annotation (Placement(transformation(extent={{8,-72},{38,-52}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Robot_WorkDone
            annotation (Placement(transformation(extent={{-10,-10},{20,10}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression CarInPosition annotation (
             Placement(transformation(extent={{10,24},{40,44}}, rotation=0)));
          Modelica.Blocks.Logical.Not Not annotation (Placement(
                transformation(extent={{44,-66},{52,-58}}, rotation=0)));
          Modelica_StateGraph2.Step InTransport(nIn=1, nOut=1)
            annotation (Placement(transformation(extent={{56,44},{64,52}})));
          Modelica_StateGraph2.Transition limit_switch(use_conditionPort=true,
              loopCheck=false)
            annotation (Placement(transformation(extent={{56,30},{64,38}})));
          Modelica_StateGraph2.Transition prev_ready(use_conditionPort=true)
            annotation (Placement(transformation(extent={{56,58},{64,66}})));
          Modelica_StateGraph2.Step Empty(
            initialStep=true,
            nOut=2,
            nIn=2)
            annotation (Placement(transformation(extent={{36,76},{44,84}})));
          Modelica_StateGraph2.Transition prev_receive(condition=false,
              loopCheck=false)
            annotation (Placement(transformation(extent={{-4,42},{4,50}})));
          Modelica_StateGraph2.Step Occupied(nIn=2, nOut=1)
            annotation (Placement(transformation(extent={{36,10},{44,18}})));
          Modelica_StateGraph2.Transition robot_work_done(use_conditionPort=
                true, loopCheck=false)
            annotation (Placement(transformation(extent={{36,-4},{44,4}})));
          Modelica_StateGraph2.Step Waiting(nIn=1, nOut=2) annotation (
              Placement(transformation(extent={{36,-18},{44,-10}})));
          Modelica_StateGraph2.Transition next_idle(use_conditionPort=true)
            annotation (Placement(transformation(extent={{56,-38},{64,-30}})));
          Modelica_StateGraph2.Transition next_remove(condition=false)
            annotation (Placement(transformation(extent={{-4,-52},{4,-44}})));
          Modelica_StateGraph2.Step OutTransport(nIn=1, nOut=1) annotation (
              Placement(transformation(extent={{56,-52},{64,-44}})));
          Modelica_StateGraph2.Transition next_transport(use_conditionPort=
                true) annotation (Placement(transformation(extent={{56,-66},{
                    64,-58}})));
        equation
          connect(prev_ready.outPort, InTransport.inPort[1]) annotation (Line(
              points={{60,57},{60,52}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Empty.outPort[1], prev_receive.inPort) annotation (Line(
              points={{39,75.4},{39,72},{21.8994,72},{0,72},{0,50}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Empty.outPort[2], prev_ready.inPort) annotation (Line(
              points={{41,75.4},{41,72},{50.6113,72},{60,72},{60,66}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(limit_switch.inPort, InTransport.outPort[1]) annotation (
              Line(
              points={{60,38},{60,38},{60,43.4}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Prev_Ready.y, prev_ready.conditionPort) annotation (Line(
              points={{41.5,62},{48,62},{55,62}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(prev_receive.outPort, Occupied.inPort[1]) annotation (Line(
              points={{0,41},{0,24},{17.7227,24},{26,24},{39,24},{39,18}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(limit_switch.outPort, Occupied.inPort[2]) annotation (Line(
              points={{60,29},{60,24},{52.0586,24},{41,24},{41,18}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(CarInPosition.y, limit_switch.conditionPort) annotation (
              Line(
              points={{41.5,34},{41.5,34},{55,34}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(robot_work_done.inPort, Occupied.outPort[1]) annotation (
              Line(
              points={{40,4},{40,9.4}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Waiting.inPort[1], robot_work_done.outPort) annotation (
              Line(
              points={{40,-10},{40,-5}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(OutTransport.inPort[1], next_idle.outPort) annotation (Line(
              points={{60,-44},{60,-39}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_transport.inPort, OutTransport.outPort[1]) annotation (
             Line(
              points={{60,-58},{60,-52.6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_remove.inPort, Waiting.outPort[1]) annotation (Line(
              points={{0,-44},{0,-24},{20,-24},{39,-24},{39,-18.6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Waiting.outPort[2], next_idle.inPort) annotation (Line(
              points={{41,-18.6},{41,-24},{50.4443,-24},{60,-24},{60,-30}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Robot_WorkDone.y, robot_work_done.conditionPort)
            annotation (Line(
              points={{21.5,0},{28,0},{35,0}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Next_Idle.y, next_idle.conditionPort) annotation (Line(
              points={{41.5,-34},{55,-34}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.y, next_transport.conditionPort) annotation (Line(
              points={{52.4,-62},{52.4,-62},{55,-62}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.u, Next_Transport.y) annotation (Line(
              points={{43.2,-62},{39.5,-62}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(next_transport.outPort, Empty.inPort[1]) annotation (Line(
              points={{60,-67},{60,-74},{44.3713,-74},{-4.53125,-74},{-20,-74},
                  {-20,-56.6602},{-20,18},{-20,78.3418},{-20,92},{-1.85059,92},
                  {32.4974,92},{39,92},{39,84}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_remove.outPort, Empty.inPort[2]) annotation (Line(
              points={{0,-53},{0,-74},{-9.53125,-74},{-20,-74},{-20,-52.6133},
                  {-20,76},{-20,92},{-4,92},{30,92},{41,90},{41,84}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics));
        end Table;

        partial model TurnTable "Table which turns the track"
          extends Task;
          parameter Real transportLength=2*100
            "Length of the track in pixels";
          parameter Real transportTime=4
            "Desired time to travel through table length";
          Real pos(start=-transportLength, fixed=true)
            "Current position of the car";
          Real[4, 2] newPoints "Coordinates for animation of the car";
          Real[2, 2] rectangle1
            "Coordinates for animation of bottom track rectangle";
          Real[2, 2] rectangle2
            "Coordinates for animation of top track rectangle";
          parameter Real carLength=286 "Length of the car";
          Boolean carInPosition "Signal that car is in position";

          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComNext
            tableComNext;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.TableComPrev
            tableComPrev;

          Modelica.Blocks.Sources.BooleanExpression Prev_Ready(y=tableComPrev.Ready)
            annotation (Placement(transformation(extent={{10,52},{40,72}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Next_Idle(y=tableComNext.Idle)
            annotation (Placement(transformation(extent={{10,-58},{40,-38}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Next_Transport(y=
                tableComNext.Transport) annotation (Placement(transformation(
                  extent={{8,-98},{38,-78}}, rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression Robot_WorkDone(y=true)
            annotation (Placement(transformation(extent={{-10,-22},{20,-2}},
                  rotation=0)));
          Modelica.Blocks.Sources.BooleanExpression CarInPosition(y=
                carInPosition) annotation (Placement(transformation(extent={{
                    10,12},{40,32}}, rotation=0)));
          Modelica.Blocks.Logical.Not Not annotation (Placement(
                transformation(extent={{44,-92},{52,-84}}, rotation=0)));
          Modelica_StateGraph2.Step InTransport(nIn=1, nOut=1)
            annotation (Placement(transformation(extent={{56,38},{64,46}})));
          Modelica_StateGraph2.Transition limit_switch(use_conditionPort=true,
              loopCheck=false)
            annotation (Placement(transformation(extent={{56,18},{64,26}})));
          Modelica_StateGraph2.Transition prev_ready(use_conditionPort=true)
            annotation (Placement(transformation(extent={{56,58},{64,66}})));
          Modelica_StateGraph2.Step Empty(
            initialStep=true,
            nOut=2,
            nIn=2)
            annotation (Placement(transformation(extent={{36,78},{44,86}})));
          Modelica_StateGraph2.Transition prev_receive(condition=false,
              loopCheck=false)
            annotation (Placement(transformation(extent={{-4,38},{4,46}})));
          Modelica_StateGraph2.Step Occupied(nIn=2, nOut=1)
            annotation (Placement(transformation(extent={{36,-2},{44,6}})));
          Modelica_StateGraph2.Transition robot_work_done(use_conditionPort=
                true, loopCheck=false)
            annotation (Placement(transformation(extent={{36,-16},{44,-8}})));
          Modelica_StateGraph2.Step Waiting(nIn=1, nOut=2) annotation (
              Placement(transformation(extent={{36,-32},{44,-24}})));
          Modelica_StateGraph2.Transition next_idle(use_conditionPort=true)
            annotation (Placement(transformation(extent={{56,-52},{64,-44}})));
          Modelica_StateGraph2.Transition next_remove(condition=false)
            annotation (Placement(transformation(extent={{-4,-70},{4,-62}})));
          Modelica_StateGraph2.Step OutTransport(nIn=1, nOut=1) annotation (
              Placement(transformation(extent={{56,-72},{64,-64}})));
          Modelica_StateGraph2.Transition next_transport(use_conditionPort=
                true) annotation (Placement(transformation(extent={{56,-92},{
                    64,-84}})));
        equation
          connect(prev_ready.outPort, InTransport.inPort[1]) annotation (Line(
              points={{60,57},{60,46}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Empty.outPort[1], prev_receive.inPort) annotation (Line(
              points={{39,77.4},{39,74},{21.8994,74},{0,74},{0,46}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Empty.outPort[2], prev_ready.inPort) annotation (Line(
              points={{41,77.4},{41,74},{50.6113,74},{60,74},{60,66}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(limit_switch.inPort, InTransport.outPort[1]) annotation (
              Line(
              points={{60,26},{60,37.4}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Prev_Ready.y, prev_ready.conditionPort) annotation (Line(
              points={{41.5,62},{55,62}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(prev_receive.outPort, Occupied.inPort[1]) annotation (Line(
              points={{0,37},{0,12},{17.7227,12},{26,12},{39,12},{39,6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(limit_switch.outPort, Occupied.inPort[2]) annotation (Line(
              points={{60,17},{60,12},{52.0586,12},{41,12},{41,6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(CarInPosition.y, limit_switch.conditionPort) annotation (
              Line(
              points={{41.5,22},{41.5,22},{55,22}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(robot_work_done.inPort, Occupied.outPort[1]) annotation (
              Line(
              points={{40,-8},{40,-2.6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Waiting.inPort[1], robot_work_done.outPort) annotation (
              Line(
              points={{40,-24},{40,-17}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(OutTransport.inPort[1], next_idle.outPort) annotation (Line(
              points={{60,-64},{60,-56},{60,-53}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_transport.inPort, OutTransport.outPort[1]) annotation (
             Line(
              points={{60,-84},{60,-72.6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_remove.inPort, Waiting.outPort[1]) annotation (Line(
              points={{0,-62},{0,-38},{20,-38},{39,-38},{39,-32.6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Waiting.outPort[2], next_idle.inPort) annotation (Line(
              points={{41,-32.6},{41,-38},{50.4443,-38},{60,-38},{60,-44}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_transport.outPort, Empty.inPort[1]) annotation (Line(
              points={{60,-93},{60,-98},{50.9766,-98},{-32.4726,-98},{-60,-98},
                  {-60,-68},{-60,80.4922},{-60,98},{-40,98},{30.8994,98},{39,
                  98},{39,86}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(next_remove.outPort, Empty.inPort[2]) annotation (Line(
              points={{0,-71},{0,-85.2646},{0,-98},{-9.7422,-98},{-34.0858,-98},
                  {-60,-98},{-60,-74},{-60,58.0234},{-60,78.7925},{-60,98},{-35.2432,
                  98},{29.3104,98},{41,98},{41,86}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Robot_WorkDone.y, robot_work_done.conditionPort)
            annotation (Line(
              points={{21.5,-12},{35,-12}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Next_Idle.y, next_idle.conditionPort) annotation (Line(
              points={{41.5,-48},{55,-48}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.y, next_transport.conditionPort) annotation (Line(
              points={{52.4,-88},{52.4,-88},{55,-88}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          connect(Not.u, Next_Transport.y) annotation (Line(
              points={{43.2,-88},{39.5,-88}},
              color={255,0,255},
              smooth=Smooth.Bezier));

          annotation (Diagram(coordinateSystem(preserveAspectRatio=false,
                  extent={{-100,-100},{100,100}}), graphics));
        end TurnTable;

        partial model Robot
          "Robot that can be connected to a horizontal table"
          extends Task;
          Modelica.Blocks.Sources.BooleanExpression StartWork(y=robotComRobot.StartWork)
            annotation (Placement(transformation(extent={{-80,20},{-50,40}},
                  rotation=0)));

          Real[5, 2] PolOnePoints "Coordinates of polygon number one";
          Real[5, 2] PolTwoPoints "Coordinates of polygon number two";
          Real[6, 2] PolThreePoints "Coordinates of polygon number three";
          parameter Real[18, 2] weldPoints={{16,24},{30,16},{30.2285,22.627},
              {32,74},{32,25.1191},{32,16},{40,22},{32,16},{34.5977,13.7734},
              {46,4},{33.2656,13.5508},{30,16},{26,2},{30,16},{18,12},{30,16},
              {30,16},{16,24}};
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot;

          Modelica_StateGraph2.Step Waiting(
            initialStep=true,
            nOut=1,
            nIn=1)
            annotation (Placement(transformation(extent={{16,46},{24,54}})));
          Modelica_StateGraph2.Transition start_work(use_conditionPort=true)
            annotation (Placement(transformation(extent={{16,26},{24,34}})));
          Modelica_StateGraph2.Step Working(nIn=1, nOut=1)
            annotation (Placement(transformation(extent={{16,6},{24,14}})));
          Modelica_StateGraph2.Transition finished_work(delayedTransition=
                true, waitTime=3)
            annotation (Placement(transformation(extent={{16,-14},{24,-6}})));
          Modelica_StateGraph2.Step WorkDone(nIn=1, nOut=1) annotation (
              Placement(transformation(extent={{16,-34},{24,-26}})));
          Modelica_StateGraph2.Transition return_to_wait annotation (
              Placement(transformation(extent={{16,-54},{24,-46}})));
        equation
          connect(Waiting.outPort[1], start_work.inPort) annotation (Line(
              points={{20,45.4},{20,34}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(start_work.outPort, Working.inPort[1]) annotation (Line(
              points={{20,25},{20,14}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Working.outPort[1], finished_work.inPort) annotation (Line(
              points={{20,5.4},{20,-6}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(finished_work.outPort, WorkDone.inPort[1]) annotation (Line(
              points={{20,-15},{20,-26}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(WorkDone.outPort[1], return_to_wait.inPort) annotation (
              Line(
              points={{20,-34.6},{20,-46}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(Waiting.inPort[1], return_to_wait.outPort) annotation (Line(
              points={{20,54},{20,60},{1.17188,60},{-20,60},{-20,41.6172},{-20,
                  -38.5547},{-20,-60},{0,-60},{20,-60},{20,-55}},
              color={0,0,0},
              smooth=Smooth.Bezier));
          connect(StartWork.y, start_work.conditionPort) annotation (Line(
              points={{-48.5,30},{15,30}},
              color={255,0,255},
              smooth=Smooth.Bezier));
          annotation (Diagram(coordinateSystem(preserveAspectRatio=true,
                  extent={{-100,-100},{100,100}}), graphics));
        end Robot;

        partial model RobotTerm
          "Terminator interface for tables used solely for transportation"
          extends Task;
          Modelica_StateGraph2.Examples.Applications.ProductionLine.Internal.Connectors.RobotComRobot
            robotComRobot;
        end RobotTerm;

        partial block Task
          parameter String processor=""
            "The processor that will execute the task";
          parameter String container=""
            "The task in which the controller will run";
          parameter Integer priority=1 "Priority of the task";
          parameter Real sampleTime=0.01 "Sample time of the task";
          parameter Real phase=0 "Phase of the task";
        end Task;
      end Interfaces;
    end Internal;
  end ProductionLine;

  package HarelsWristWatch

    model WristWatch

      extends Modelica.Icons.Example;
      Parallel main(
        use_outPort=true,
        use_suspend=true,
        nExit=1,
        nOut=1,
        nIn=1,
        nEntry=6,
        nSuspend=1)
        annotation (Placement(transformation(extent={{-280,-200},{280,60}})));
      Modelica_StateGraph2.Step dead(
        initialStep=true,
        nOut=1,
        nIn=2,
        use_activePort=true)
        annotation (Placement(transformation(extent={{4,96},{-4,104}})));
      Modelica_StateGraph2.Transition battery_removed(use_conditionPort=true)
        annotation (Placement(transformation(
            extent={{2,2},{10,10}},
            rotation=180,
            origin={-314,46})));
      Parallel alarms_beep(
        use_suspend=true,
        nEntry=1,
        initialStep=false,
        use_inPort=true,
        nIn=1,
        nSuspend=2)
        annotation (Placement(transformation(extent={{-20,-140},{20,0}})));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton insert_battery(label=
           "Insert Battery")
        annotation (Placement(transformation(extent={{0,220},{-80,240}})));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton remove_battery(label=
           "Remove Battery")
        annotation (Placement(transformation(extent={{0,200},{-80,220}})));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton kill_battery(label=
            "Kill Battery")
        annotation (Placement(transformation(extent={{0,160},{-80,180}})));
      Modelica_StateGraph2.Step alarm1_beeps(nIn=1, use_activePort=true)
        annotation (Placement(transformation(extent={{4,-54},{-4,-46}})));
      Modelica_StateGraph2.Step alarm1_status_disabled(nOut=1, nIn=2)
        annotation (Placement(transformation(extent={{76,6},{84,14}})));
      Modelica_StateGraph2.Step alarm1_status_enabled(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{76,-34},{84,-26}})));
      Modelica_StateGraph2.Transition alarm1_disabled_d(use_conditionPort=
            true)
        annotation (Placement(transformation(extent={{76,-14},{84,-6}})));
      Modelica_StateGraph2.Transition alarm1_enabled_d(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{76,-54},{84,-46}})));
      Modelica_StateGraph2.Step alarm2_beeps(nIn=1, use_activePort=true)
        annotation (Placement(transformation(extent={{4,-94},{-4,-86}})));
      Modelica_StateGraph2.Step both_beep(nIn=1, use_activePort=true)
        annotation (Placement(transformation(extent={{4,-134},{-4,-126}})));
      Modelica_StateGraph2.Transition t_hits_t2_p2(use_conditionPort=true)
        annotation (Placement(transformation(extent={{4,-74},{-4,-66}})));
      Modelica_StateGraph2.Transition t_hits_t1_p(use_conditionPort=true)
        annotation (Placement(transformation(extent={{4,-114},{-4,-106}})));
      Modelica_StateGraph2.Step choose_alarm(nIn=1, nOut=3)
        annotation (Placement(transformation(extent={{-4,-24},{4,-16}})));
      Modelica_StateGraph2.Transition p_or_p1_or_p2(use_conditionPort=true)
        annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-40,-8})));
      Modelica_StateGraph2.Transition any_button_pressed(
        delayedTransition=false,
        loopCheck=false,
        condition=edge(A.y) or edge(B.y) or edge(C.y) or edge(D.y))
        annotation (Placement(transformation(extent={{-44,-82},{-36,-74}})));
      Modelica_StateGraph2.Transition thirty_secs_in_alarms_beep(
          delayedTransition=true, waitTime=30)
        annotation (Placement(transformation(extent={{-34,-104},{-26,-96}})));
      Modelica_StateGraph2.Blocks.Interactive.TrigButton weaken_battery(label=
           "Weaken Battery")
        annotation (Placement(transformation(extent={{0,180},{-80,200}})));
      Modelica_StateGraph2.Step alarm2_status_disabled(nOut=1, nIn=2)
        annotation (Placement(transformation(extent={{76,-94},{84,-86}})));
      Modelica_StateGraph2.Step alarm2_status_enabled(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{76,-134},{84,-126}})));
      Modelica_StateGraph2.Transition alarm2_disabled_d(use_conditionPort=
            true)
        annotation (Placement(transformation(extent={{76,-114},{84,-106}})));
      Modelica_StateGraph2.Transition alarm2_enabled_d(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{76,-154},{84,-146}})));
      Modelica_StateGraph2.Step light_off(
        nOut=1,
        nIn=2,
        use_activePort=true)
        annotation (Placement(transformation(extent={{236,6},{244,14}})));
      Modelica_StateGraph2.Step light_on(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{236,-34},{244,-26}})));
      Modelica_StateGraph2.Transition light_off_b_down(use_conditionPort=true)
        annotation (Placement(transformation(extent={{236,-14},{244,-6}})));
      Modelica_StateGraph2.Transition light_on_b_up(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{236,-54},{244,-46}})));
      Modelica_StateGraph2.Step chime_enabled_quiet(nOut=1, nIn=2)
        annotation (Placement(transformation(extent={{156,-68},{164,-60}})));
      Modelica_StateGraph2.Step chime_enabled_beep(nOut=1, nIn=1) annotation (
         Placement(transformation(extent={{156,-108},{164,-100}})));
      Modelica_StateGraph2.Transition chime_enabled_quiet_t_is_whole_hour(
          use_conditionPort=true)
        annotation (Placement(transformation(extent={{156,-88},{164,-80}})));
      Modelica_StateGraph2.Transition two_secs_in_chime_enabled_beeps(
        delayedTransition=true,
        waitTime=2,
        loopCheck=false) annotation (Placement(transformation(extent={{156,-128},
                {164,-120}})));
      Parallel chime_enabled(
        nEntry=1,
        nIn=1,
        use_suspend=true,
        nSuspend=1)
        annotation (Placement(transformation(extent={{130,-148},{210,-28}})));
      Modelica_StateGraph2.Step chime_disabled(nOut=1, nIn=2)
        annotation (Placement(transformation(extent={{166,-6},{174,2}})));
      Modelica_StateGraph2.Transition chime_disabled_d(use_conditionPort=true,
          delayedTransition=false)
        annotation (Placement(transformation(extent={{174,-20},{166,-12}})));
      Modelica_StateGraph2.Transition chime_enabled_d(
        use_conditionPort=true,
        delayedTransition=false,
        loopCheck=false)
        annotation (Placement(transformation(extent={{116,-24},{124,-32}})));
      Modelica_StateGraph2.Step power_ok(nOut=1, nIn=1)
        annotation (Placement(transformation(extent={{246,-94},{254,-86}})));
      Modelica_StateGraph2.Step power_blink(nIn=1, nOut=1) annotation (
          Placement(transformation(extent={{246,-154},{254,-146}})));
      Modelica_StateGraph2.Transition power_ok_battery_weakens(
          use_conditionPort=true, loopCheck=false) annotation (Placement(
            transformation(extent={{246,-124},{254,-116}})));
      Modelica_StateGraph2.Transition battery_dies(use_conditionPort=true)
        annotation (Placement(transformation(extent={{4,-224},{-4,-216}})));
      Parallel displays(
        use_outPort=false,
        use_suspend=true,
        nSuspend=1,
        nResume=2,
        initialStep=false,
        use_inPort=true,
        nIn=1,
        nEntry=1)
        annotation (Placement(transformation(extent={{-60,-160},{-260,20}})));
      Regular regular(
        nOut=1,
        nIn=4,
        nSuspend=1,
        nResume=1,
        time_setting(y_start=3600*5 + 60*59 + 30),
        date_setting(y_start=625),
        year_setting(y_start=2009))
        annotation (Placement(transformation(extent={{-208,-66},{-112,-6}})));
      Out out(
        nIn=1,
        nSuspend=1,
        nOut=1,
        alarm1_setting(y_start=3600*6)) annotation (Placement(transformation(
              extent={{-170,-140},{-74,-100}})));
      Stopwatch stopwatch(
        nResume=1,
        nSuspend=1,
        use_activePort=true) annotation (Placement(transformation(extent={{-200,
                -140},{-240,-100}})));
      Modelica_StateGraph2.Transition regular_a(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-156,-82},{-164,-74}})));
      Modelica_StateGraph2.Transition two_min_in_out(delayedTransition=true,
          waitTime=120) annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-186,-80})));
      Modelica_StateGraph2.Transition out_a(use_conditionPort=true, loopCheck=
           false) annotation (Placement(transformation(extent={{-182,-138},{-190,
                -146}})));
      Modelica_StateGraph2.Transition stopwatch_a(use_conditionPort=true)
        annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-194,-90})));
      Modelica_StateGraph2.Blocks.Interactive.PressButton C(label="C")
        annotation (Placement(transformation(extent={{-160,180},{-140,200}})));
      Modelica_StateGraph2.Blocks.Interactive.PressButton D(label="D")
        annotation (Placement(transformation(extent={{-160,160},{-140,180}})));
      Modelica_StateGraph2.Blocks.Interactive.PressButton B(label="B")
        annotation (Placement(transformation(extent={{-160,200},{-140,220}})));
      Modelica_StateGraph2.Blocks.Interactive.PressButton A(label="A")
        annotation (Placement(transformation(extent={{-160,220},{-140,240}})));
      protected
      inner
        Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        signalBus
        annotation (Placement(transformation(extent={{-132,198},{-92,238}})));
      public
      Modelica_StateGraph2.Transition battery_inserted(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{-4,76},{4,84}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        displays_bus_node
        annotation (Placement(transformation(extent={{-100,-80},{-80,-60}})));
      public
      Modelica_StateGraph2.Transition t_hits_t1(use_conditionPort=true)
        annotation (Placement(transformation(extent={{4,-42},{-4,-34}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        top_level_bus_node
        annotation (Placement(transformation(extent={{-122,80},{-102,100}})));
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        main_bus_node
        annotation (Placement(transformation(extent={{200,-10},{220,10}})));
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        alarms_bus_node
        annotation (Placement(transformation(extent={{50,-200},{70,-180}})));
      public
      Modelica.Blocks.Logical.And and1
        annotation (Placement(transformation(extent={{188,-20},{180,-12}})));
      Modelica.Blocks.Logical.And and2
        annotation (Placement(transformation(extent={{134,-10},{126,-2}})));
      Modelica_StateGraph2.Transition regular_time_c(use_conditionPort=true,
          delayedTransition=false) annotation (Placement(transformation(
              extent={{-232,-26},{-224,-18}})));
      Modelica_StateGraph2.Step wait(nIn=1, nOut=2) annotation (Placement(
            transformation(extent={{-232,-44},{-224,-36}})));
      Modelica_StateGraph2.Transition two_sec_in_wait(
        delayedTransition=true,
        use_conditionPort=false,
        waitTime=2) annotation (Placement(transformation(extent={{-228,-60},{
                -220,-52}})));
      Modelica_StateGraph2.Transition wait_c_up_1(
        delayedTransition=true,
        use_conditionPort=true,
        waitTime=0.01) annotation (Placement(transformation(extent={{-244,-24},
                {-236,-32}})));
      Modelica.Blocks.Logical.Not not1 annotation (Placement(transformation(
              extent={{-258,-32},{-250,-24}})));
      Modelica.Blocks.Logical.And and3
        annotation (Placement(transformation(extent={{-218,6},{-226,14}})));
      Modelica.Blocks.Logical.Edge edge1
        annotation (Placement(transformation(extent={{-198,2},{-206,10}})));
      Modelica.Blocks.Logical.Pre pre1
        annotation (Placement(transformation(extent={{-234,6},{-242,14}})));
      Modelica.Blocks.Logical.Edge edge2
        annotation (Placement(transformation(extent={{152,-16},{144,-8}})));
      Modelica.Blocks.Logical.Edge edge3 annotation (Placement(transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={194,-8})));
      Modelica.Blocks.Logical.Not not2 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=270,
            origin={232,-38})));
      Modelica.Blocks.Logical.Edge edge4 annotation (Placement(transformation(
            extent={{4,-4},{-4,4}},
            rotation=270,
            origin={56,-162})));
      Modelica.Blocks.Logical.And and4
        annotation (Placement(transformation(extent={{62,-114},{70,-106}})));
      Modelica.Blocks.Logical.And and5
        annotation (Placement(transformation(extent={{62,-154},{70,-146}})));
      Modelica.Blocks.Logical.And and6
        annotation (Placement(transformation(extent={{62,-54},{70,-46}})));
      Modelica.Blocks.Logical.And and7
        annotation (Placement(transformation(extent={{62,-14},{70,-6}})));
      Modelica.Blocks.Logical.Edge edge5 annotation (Placement(transformation(
              extent={{-120,-82},{-128,-74}})));
      Utilities.WatchDisplay watchDisplay
        annotation (Placement(transformation(extent={{116,196},{240,240}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch set_illumination(
        nu=2,
        expr={1,2},
        y_default=0,
        use_pre_as_default=false) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=90,
            origin={370,40})));
      public
      Modelica.Blocks.Logical.Edge edge6 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-36,100})));
      Utilities.AlarmTrigger alarmTrigger annotation (Placement(
            transformation(
            extent={{-10,10},{10,-10}},
            rotation=90,
            origin={24,-154})));
      Modelica.Blocks.Logical.Edge edge7 annotation (Placement(transformation(
            extent={{4,4},{-4,-4}},
            rotation=270,
            origin={-26,-18})));
      Utilities.WatchController watchController
        annotation (Placement(transformation(extent={{20,140},{60,180}})));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue annotation (
         Placement(transformation(extent={{-232,210},{-272,250}})));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue1
        annotation (Placement(transformation(extent={{-232,190},{-272,230}})));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue2
        annotation (Placement(transformation(extent={{-232,170},{-272,210}})));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue3
        annotation (Placement(transformation(extent={{-232,150},{-272,190}})));
      Modelica_StateGraph2.Blocks.MathBoolean.ShowValue showValue4
        annotation (Placement(transformation(extent={{-232,130},{-272,170}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        top_level_bus_node1 annotation (Placement(transformation(extent={{-190,
                140},{-170,160}}), iconTransformation(extent={{-82,110},{-62,
                130}})));
      public
      Modelica_StateGraph2.Blocks.MathBoolean.Or or1(nu=2) annotation (
          Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-208,150})));
      public
      Modelica_StateGraph2.Blocks.MathBoolean.Or or2(nu=2) annotation (
          Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-208,170})));
    equation

      connect(alarm1_enabled_d.inPort, alarm1_status_enabled.outPort[1])
        annotation (Line(
          points={{80,-46},{80,-34.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_status_enabled.inPort[1], alarm1_disabled_d.outPort)
        annotation (Line(
          points={{80,-26},{80,-15}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_disabled_d.inPort, alarm1_status_disabled.outPort[1])
        annotation (Line(
          points={{80,-6},{80,5.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(t_hits_t1_p.outPort, both_beep.inPort[1]) annotation (Line(
          points={{0,-115},{0,-126}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(t_hits_t2_p2.outPort, alarm2_beeps.inPort[1]) annotation (Line(
          points={{0,-75},{0,-86}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarms_beep.entry[1], choose_alarm.inPort[1]) annotation (Line(
          points={{0,-7},{0,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(alarm2_enabled_d.inPort, alarm2_status_enabled.outPort[1])
        annotation (Line(
          points={{80,-146},{80,-134.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_status_enabled.inPort[1], alarm2_disabled_d.outPort)
        annotation (Line(
          points={{80,-126},{80,-115}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_disabled_d.inPort, alarm2_status_disabled.outPort[1])
        annotation (Line(
          points={{80,-106},{80,-94.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(light_on_b_up.inPort, light_on.outPort[1]) annotation (Line(
          points={{240,-46},{240,-34.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(light_on.inPort[1], light_off_b_down.outPort) annotation (Line(
          points={{240,-26},{240,-15}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(light_off_b_down.inPort, light_off.outPort[1]) annotation (Line(
          points={{240,-6},{240,5.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(two_secs_in_chime_enabled_beeps.inPort, chime_enabled_beep.outPort[
        1]) annotation (Line(
          points={{160,-120},{160,-108.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_enabled_beep.inPort[1],
        chime_enabled_quiet_t_is_whole_hour.outPort) annotation (Line(
          points={{160,-100},{160,-89}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_enabled_quiet_t_is_whole_hour.inPort, chime_enabled_quiet.outPort[
        1]) annotation (Line(
          points={{160,-80},{160,-68.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_enabled.entry[1], chime_enabled_quiet.inPort[1])
        annotation (Line(
          points={{170,-34},{170,-34},{170,-48},{159,-48},{159,-60}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(two_secs_in_chime_enabled_beeps.outPort, chime_enabled_quiet.inPort[
        2]) annotation (Line(
          points={{160,-129},{160,-134},{168,-134},{180,-134},{180,-119.924},
              {180,-64.7031},{180,-54},{169.665,-54},{161,-54},{161,-60}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(chime_disabled.outPort[1], chime_disabled_d.inPort) annotation (
         Line(
          points={{170,-6.6},{170,-12}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_disabled_d.outPort, chime_enabled.inPort[1]) annotation (
          Line(
          points={{170,-21},{170,-28}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_enabled_d.inPort, chime_enabled.suspend[1]) annotation (
          Line(
          points={{120,-32},{120,-54.25},{128,-54.25}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_enabled_d.outPort, chime_disabled.inPort[1]) annotation (
          Line(
          points={{120,-23},{120,-23},{120,-6},{120,12},{138.592,12},{158,12},
              {169,12},{169,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(power_blink.inPort[1], power_ok_battery_weakens.outPort)
        annotation (Line(
          points={{250,-146},{250,-125}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(power_ok_battery_weakens.inPort, power_ok.outPort[1])
        annotation (Line(
          points={{250,-116},{250,-94.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(power_blink.outPort[1], main.exit[1]) annotation (Line(
          points={{250,-154.6},{250,-180},{217.041,-180},{12.2933,-180},{0,-180},
              {0,-188.625}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(battery_dies.inPort, main.outPort[1]) annotation (Line(
          points={{0,-216},{0,-210},{0,-203.25}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(regular_a.inPort, regular.outPort[1]) annotation (Line(
          points={{-160,-74},{-160,-74},{-160,-67.05},{-159.76,-67.05}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(regular_a.outPort, out.inPort[1]) annotation (Line(
          points={{-160,-83},{-160,-83},{-160,-94},{-150.595,-94},{-132.947,-94},
              {-122,-94},{-122,-100}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(two_min_in_out.inPort, out.suspend[1]) annotation (Line(
          points={{-186,-84},{-186,-108},{-171.92,-108}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(out.outPort[1], out_a.inPort) annotation (Line(
          points={{-121.76,-140.7},{-121.76,-152.35},{-135.255,-152.35},{-173.516,
              -152.35},{-186,-152.35},{-186,-146}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(out_a.outPort, stopwatch.resume[1]) annotation (Line(
          points={{-186,-137},{-186,-132},{-194,-132},{-199.95,-132}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(stopwatch_a.inPort, stopwatch.suspend[1]) annotation (Line(
          points={{-194,-94},{-194,-94},{-194,-108},{-199.2,-108}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(p_or_p1_or_p2.inPort, displays.suspend[1]) annotation (Line(
          points={{-40,-12},{-40,-19},{-48.0859,-19},{-55,-19},{-55,-19.375}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(p_or_p1_or_p2.outPort, alarms_beep.inPort[1]) annotation (Line(
          points={{-40,-3},{-40,8},{-23,8},{-6,8},{0,8},{0,0}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(any_button_pressed.inPort, alarms_beep.suspend[1]) annotation (
          Line(
          points={{-40,-74},{-40,-40.0273},{-40,-24.5},{-21,-24.5}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(thirty_secs_in_alarms_beep.inPort, alarms_beep.suspend[2])
        annotation (Line(
          points={{-30,-96},{-30,-52.4199},{-30,-36.75},{-21,-36.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(any_button_pressed.outPort, displays.resume[1]) annotation (
          Line(
          points={{-40,-83},{-40,-83},{-40,-112.75},{-60,-112.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(thirty_secs_in_alarms_beep.outPort, displays.resume[2])
        annotation (Line(
          points={{-30,-105},{-30,-128.5},{-60,-128.5}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(A.y, signalBus.a) annotation (Line(
          points={{-140,230},{-112,230},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(B.y, signalBus.b) annotation (Line(
          points={{-140,210},{-130,210},{-130,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(C.y, signalBus.c) annotation (Line(
          points={{-140,190},{-124,190},{-124,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(D.y, signalBus.d) annotation (Line(
          points={{-140,170},{-118,170},{-118,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(battery_inserted.outPort, main.inPort[1]) annotation (Line(
          points={{0,75},{0,68},{0,60}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(dead.outPort[1], battery_inserted.inPort) annotation (Line(
          points={{0,95.4},{0,84}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(displays.inPort[1], main.entry[1]) annotation (Line(
          points={{-160,20},{-160,20},{-160,40},{-139.046,40},{-40.0574,40},{
              -23.3333,40},{-23.3333,47}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(main.entry[2], alarm1_status_disabled.inPort[1]) annotation (
          Line(
          points={{-14,47},{-14,34},{6.8477,34},{32,34},{79,34},{79,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_enabled_d.outPort, alarm1_status_disabled.inPort[2])
        annotation (Line(
          points={{80,-55},{80,-60},{87.93,-60},{100,-60},{100,-50.3548},{100,
              7.188},{100,20},{90.704,20},{81,20},{81,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_status_disabled.inPort[1], main.entry[3]) annotation (
          Line(
          points={{79,-86},{79,-70},{92,-70},{110,-70},{110,-45.956},{110,
              14.031},{110,36},{81.367,36},{8.8965,36},{-4.66667,36},{-4.66667,
              47}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_enabled_d.outPort, alarm2_status_disabled.inPort[2])
        annotation (Line(
          points={{80,-155},{80,-160},{90.332,-160},{100,-160},{100,-146.268},
              {100,-91.4062},{100,-80},{90.018,-80},{81,-80},{81,-86}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(main.entry[4], chime_disabled.inPort[2]) annotation (Line(
          points={{4.66667,47},{5,47},{5,38},{23.7549,38},{146.124,38},{171,
              38},{171,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(main.entry[5], light_off.inPort[1]) annotation (Line(
          points={{14,47},{14,40},{30.3125,40},{209.857,40},{239,40},{239,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(light_on_b_up.outPort, light_off.inPort[2]) annotation (Line(
          points={{240,-55},{240,-60},{249.297,-60},{260,-60},{260,-44.5312},
              {260,7.207},{260,20},{250.018,20},{241,20},{241,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(main.entry[6], power_ok.inPort[1]) annotation (Line(
          points={{23.3333,47},{25,47},{25,42},{39.3192,42},{247.165,42},{272,
              42},{272,20},{272,-57.4453},{272,-72},{260.012,-72},{250,-72},{
              250,-86}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(stopwatch_a.conditionPort, regular_a.conditionPort) annotation (
         Line(
          points={{-189,-90},{-155.888,-90},{-148,-90},{-148,-83.7305},{-148,
              -78},{-155,-78}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(out_a.conditionPort, stopwatch_a.conditionPort) annotation (
          Line(
          points={{-181,-142},{-181,-142},{-178,-142},{-178,-136.609},{-178,-96},
              {-178,-90},{-189,-90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(two_min_in_out.outPort, regular.inPort[1]) annotation (Line(
          points={{-186,-75},{-186,-75},{-186,-68},{-199.975,-68},{-216,-68},
              {-216,-50.6912},{-216,-18.629},{-216,-2},{-192.102,-2},{-174.156,
              -2},{-167.2,-2},{-167.2,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(stopwatch_a.outPort, regular.inPort[2]) annotation (Line(
          points={{-194,-85},{-194,-85},{-194,-81.0352},{-194,-70},{-205.156,
              -70},{-218,-70},{-218,-58.3203},{-218,-18},{-218,0},{-198.988,0},
              {-168.986,0},{-162.4,0},{-162.4,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(choose_alarm.outPort[1], t_hits_t1_p.inPort) annotation (Line(
          points={{-1.33333,-24.6},{-1.33333,-24.6984},{-1.33333,-30},{-5.7812,
              -30},{-12,-30},{-12,-38.75},{-12,-87.8164},{-12,-98},{-5.95312,
              -98},{0,-98},{0,-106}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(t_hits_t1.outPort, alarm1_beeps.inPort[1]) annotation (Line(
          points={{0,-43},{0,-46}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(choose_alarm.outPort[2], t_hits_t2_p2.inPort) annotation (Line(
          points={{1.11022e-016,-24.6},{0,-24.6},{0,-26},{0,-32},{-4.5996,-32},
              {-10,-32},{-10,-37.5898},{-10,-58},{0,-58},{0,-66}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(choose_alarm.outPort[3], t_hits_t1.inPort) annotation (Line(
          points={{1.33333,-24.6},{1.33333,-34},{0,-34}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(battery_removed.inPort, main.suspend[1]) annotation (Line(
          points={{-320,36},{-320,3.125},{-294,3.125}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(battery_removed.outPort, dead.inPort[2]) annotation (Line(
          points={{-320,45},{-320,45},{-320,100},{-320,120},{-297.586,120},{-18,
              120},{-1,120},{-1,104}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(battery_dies.outPort, dead.inPort[1]) annotation (Line(
          points={{0,-225},{0,-240},{20.5078,-240},{280,-240},{320,-240},{320,
              -197.962},{320,78.867},{320,120},{280.532,120},{20.626,120},{1,
              120},{1,104}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(insert_battery.y, signalBus.insert_battery) annotation (Line(
          points={{-80,230},{-108,230},{-108,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(remove_battery.y, signalBus.remove_battery) annotation (Line(
          points={{-80,210},{-94,210},{-94,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(kill_battery.y, signalBus.kill_battery) annotation (Line(
          points={{-80,170},{-106,170},{-106,214},{-112,214},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(weaken_battery.y, signalBus.weaken_battery) annotation (Line(
          points={{-80,190},{-102,190},{-102,218},{-112,218}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(signalBus, top_level_bus_node) annotation (Line(
          points={{-112,218},{-112,218},{-112,172},{-112,90}},
          color={255,204,51},
          smooth=Smooth.Bezier,
          thickness=0.5));
      connect(top_level_bus_node, displays_bus_node) annotation (Line(
          points={{-112,90},{-90,90},{-90,64},{-90,-70}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));
      connect(top_level_bus_node, main_bus_node) annotation (Line(
          points={{-112,90},{-112,90},{190.504,90},{210,90},{210,69.521},{210,
              0}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));

      connect(alarms_bus_node, main_bus_node) annotation (Line(
          points={{60,-190},{60,-190},{204.906,-190},{226,-190},{226,-168.494},
              {226,-36},{226,0},{210,0}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));
      connect(light_off_b_down.conditionPort, main_bus_node.b) annotation (
          Line(
          points={{235,-10},{222,-10},{210,-10},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(power_ok_battery_weakens.conditionPort, main_bus_node.weaken_battery)
        annotation (Line(
          points={{245,-120},{236.879,-120},{218,-120},{218,-99.73},{218,-22.0937},
              {218,-16},{212.58,-16},{208,-16},{208,-7.437},{208,0},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(battery_inserted.conditionPort, top_level_bus_node.insert_battery)
        annotation (Line(
          points={{-5,80},{-95.281,80},{-112,80},{-112,90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(battery_removed.conditionPort, top_level_bus_node.remove_battery)
        annotation (Line(
          points={{-315,40},{-299.688,40},{-280,40},{-280,60.313},{-280,90},{
              -252.602,90},{-112,90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(chime_enabled_quiet_t_is_whole_hour.conditionPort,
        alarms_bus_node.T_is_whole_hour) annotation (Line(
          points={{155,-84},{144,-84},{144,-94.4705},{144,-143.898},{144,-166},
              {123.424,-166},{70.3281,-166},{60,-166},{60,-177.766},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(chime_disabled_d.conditionPort, and1.y) annotation (Line(
          points={{175,-16},{179.6,-16}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and2.y, chime_enabled_d.conditionPort) annotation (Line(
          points={{125.6,-6},{112,-6},{112,-22.2422},{112,-28},{115,-28}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and2.u1, main_bus_node.chime_on) annotation (Line(
          points={{134.8,-6},{144,-6},{144,1.875},{144,8},{152,8},{200,8},{
              210,8},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(regular_time_c.inPort, regular.suspend[1]) annotation (Line(
          points={{-228,-18},{-228,-18},{-228,-12},{-222.238,-12},{-213.603,-12},
              {-208,-12},{-208,-16.4063},{-208,-18},{-209.92,-18}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(wait.inPort[1], regular_time_c.outPort) annotation (Line(
          points={{-228,-36},{-228,-32},{-228,-30},{-228,-27}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(two_sec_in_wait.outPort, regular.resume[1]) annotation (Line(
          points={{-224,-61},{-224,-68},{-216,-68},{-212,-68},{-212,-59.4414},
              {-212,-54},{-208.12,-54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(wait_c_up_1.outPort, regular.inPort[3]) annotation (Line(
          points={{-240,-23},{-240,-16.9209},{-240,2},{-220.919,2},{-166.819,
              2},{-157.6,2},{-157.6,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(displays.entry[1], regular.inPort[4]) annotation (Line(
          points={{-160,11},{-154,11},{-154,-6},{-152.8,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(wait_c_up_1.inPort, wait.outPort[1]) annotation (Line(
          points={{-240,-32},{-240,-43.0918},{-240,-50},{-233.802,-50},{-229,
              -50},{-229,-44.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(two_sec_in_wait.inPort, wait.outPort[2]) annotation (Line(
          points={{-224,-52},{-224,-48},{-227,-48},{-227,-44.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(pre1.y, regular_time_c.conditionPort) annotation (Line(
          points={{-242.4,10},{-252,10},{-252,1.40625},{-252,-9.74829},{-252,
              -22},{-240,-22},{-233,-22}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and3.y, pre1.u) annotation (Line(
          points={{-226.4,10},{-233.2,10},{-233.2,10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge1.y, and3.u2) annotation (Line(
          points={{-206.4,6},{-212.15,6},{-212.15,6.8},{-217.2,6.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge1.u, top_level_bus_node.c) annotation (Line(
          points={{-197.2,6},{-184,6},{-184,20.926},{-184,60.1992},{-184,80},
              {-165.377,80},{-125.143,80},{-114,80},{-114,90},{-112,90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and3.u1, top_level_bus_node.time_active) annotation (Line(
          points={{-217.2,10},{-210,10},{-210,19.0669},{-210,67.668},{-210,86},
              {-193.737,86},{-116,86},{-116,88},{-112,88},{-112,90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not1.u, edge1.u) annotation (Line(
          points={{-258.8,-28},{-272,-28},{-272,-16},{-272,7.99414},{-272,26},
              {-247.154,26},{-191.992,26},{-184,26},{-184,20},{-184,6},{-197.2,
              6}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(not1.y, wait_c_up_1.conditionPort) annotation (Line(
          points={{-249.6,-28},{-245,-28}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and1.u2, main_bus_node.chime_off) annotation (Line(
          points={{188.8,-19.2},{200,-19.2},{200,-7.36875},{200,0},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.y, and2.u2) annotation (Line(
          points={{143.6,-12},{142,-12},{142,-9.2},{134.8,-9.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.u, main_bus_node.d) annotation (Line(
          points={{152.8,-12},{160,-12},{160,-4.3409},{160,-0.380859},{160,6},
              {168.281,6},{200,6},{206,6},{206,0},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge3.y, and1.u1) annotation (Line(
          points={{194,-12.4},{194,-16},{188.8,-16}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge3.u, main_bus_node.d) annotation (Line(
          points={{194,-3.2},{194,2},{198.859,2},{210,2},{210,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not2.u, light_off_b_down.conditionPort) annotation (Line(
          points={{232,-33.2},{232,-13.9648},{232,-10},{235,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not2.y, light_on_b_up.conditionPort) annotation (Line(
          points={{232,-42.4},{232,-46.2223},{232,-50},{235,-50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge4.u, alarms_bus_node.d) annotation (Line(
          points={{56,-166.8},{56,-166.8},{56,-181.108},{56,-190},{59.0703,-190},
              {60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge4.y, and5.u2) annotation (Line(
          points={{56,-157.6},{56,-154},{61.2,-154},{61.2,-153.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and5.y, alarm2_enabled_d.conditionPort) annotation (Line(
          points={{70.4,-150},{75,-150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and4.y, alarm2_disabled_d.conditionPort) annotation (Line(
          points={{70.4,-110},{75,-110}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and7.y, alarm1_disabled_d.conditionPort) annotation (Line(
          points={{70.4,-10},{75,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and6.y, alarm1_enabled_d.conditionPort) annotation (Line(
          points={{70.4,-50},{75,-50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and4.u2, edge4.y) annotation (Line(
          points={{61.2,-113.2},{56,-113.2},{56,-118.62},{56,-157.6}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and6.u2, and4.u2) annotation (Line(
          points={{61.2,-53.2},{56,-53.2},{56,-58.5979},{56,-107.927},{56,-113.2},
              {61.2,-113.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and7.u2, and6.u2) annotation (Line(
          points={{61.2,-13.2},{56,-13.2},{56,-18.1609},{56,-47.0408},{56,-53.2},
              {61.2,-53.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and5.u1, alarms_bus_node.alarm2_on) annotation (Line(
          points={{61.2,-150},{50,-150},{50,-160.195},{50,-179.318},{50,-190},
              {60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and4.u1, alarms_bus_node.alarm2_off) annotation (Line(
          points={{61.2,-110},{48,-110},{48,-119.766},{48,-174.979},{48,-190},
              {60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and6.u1, alarms_bus_node.alarm1_on) annotation (Line(
          points={{61.2,-50},{46,-50},{46,-67.9102},{46,-170.804},{46,-190},{
              60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and7.u1, alarms_bus_node.alarm1_off) annotation (Line(
          points={{61.2,-10},{44,-10},{44,-28.6328},{44,-169.199},{44,-190},{
              60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(battery_dies.conditionPort, alarms_bus_node.kill_battery)
        annotation (Line(
          points={{5,-220},{60,-220},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge5.y, regular_a.conditionPort) annotation (Line(
          points={{-128.4,-78},{-155,-78},{-155,-78}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge5.u, displays_bus_node.a) annotation (Line(
          points={{-119.2,-78},{-119.2,-78},{-100.209,-78},{-90,-78},{-90,-70}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(light_off.activePort, set_illumination.u[1]) annotation (Line(
          points={{244.72,10},{244.72,10},{332,10},{358.5,10},{358.5,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(set_illumination.y, watchDisplay.illumination) annotation (Line(
          points={{360,71},{360,260},{194,260},{168,260},{168,242}},
          color={255,127,0},
          smooth=Smooth.Bezier));

      connect(alarmTrigger.alarm1_enabled, alarm1_status_enabled.activePort)
        annotation (Line(
          points={{33.2857,-165.429},{33.2857,-170},{37.6525,-170},{42.7188,-170},
              {82,-170},{106,-170},{106,-146.127},{106,-51.3281},{106,-30},{
              84.72,-30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarmTrigger.alarm2_enabled, alarm2_status_enabled.activePort)
        annotation (Line(
          points={{26.1429,-165.429},{26.1429,-172},{37.5295,-172},{85.7158,-172},
              {110,-172},{110,-149.4},{110,-130},{84.72,-130}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarmTrigger.T1, alarms_bus_node.T1) annotation (Line(
          points={{18.2857,-165.429},{18.2857,-174},{24.5039,-174},{34,-174},
              {34,-183.035},{34,-192},{47.8047,-192},{58,-192},{58,-190},{60,
              -190}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(alarmTrigger.T2, alarms_bus_node.T2) annotation (Line(
          points={{14.7143,-165.429},{14.7143,-176},{21.9609,-176},{32,-176},
              {32,-185.58},{32,-194},{44.5039,-194},{60,-194},{60,-190}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(edge7.y, p_or_p1_or_p2.conditionPort) annotation (Line(
          points={{-26,-13.6},{-26,-8},{-35,-8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarmTrigger.T_hits_T1, alarms_bus_node.T_hits_T1) annotation (
          Line(
          points={{29.7143,-165.429},{29.7143,-171},{36.0851,-171},{42,-171},
              {42,-178.96},{42,-190},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarmTrigger.T_hits_T2, alarms_bus_node.T_hits_T2) annotation (
          Line(
          points={{22.5714,-165.429},{22.5714,-173},{30.0898,-173},{38,-173},
              {38,-181.234},{38,-190},{46.4434,-190},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(t_hits_t1.conditionPort, alarmTrigger.P1) annotation (Line(
          points={{5,-38},{31,-38},{31,-63.7046},{31,-143.286},{31.1429,-143.286}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(t_hits_t2_p2.conditionPort, alarmTrigger.P2) annotation (Line(
          points={{5,-70},{27,-70},{27,-93.6891},{27,-143.286},{26.8571,-143.286}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(t_hits_t1_p.conditionPort, alarmTrigger.P) annotation (Line(
          points={{5,-110},{23,-110},{23,-130.251},{23,-143.286},{22.7143,-143.286}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(alarmTrigger.alarms_beep, edge7.u) annotation (Line(
          points={{17,-143.286},{17,-142},{13.2627,-142},{-26,-142},{-26,-103.586},
              {-26,-22.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(set_illumination.u[2], light_on.activePort) annotation (Line(
          points={{361.5,30},{361.5,-0.527344},{361.5,-30},{330.936,-30},{
              244.72,-30}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(stopwatch.activePort, displays_bus_node.stopwatch_mode)
        annotation (Line(
          points={{-241,-120.1},{-250,-120.1},{-250,-130},{-250,-154},{-228.958,
              -154},{-90.3945,-154},{-68,-154},{-68,-130.326},{-68,-92},{-68,
              -70},{-90,-70}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(watchController.large_digit1, watchDisplay.large_digit1)
        annotation (Line(
          points={{62,176},{62,176},{109.76,176},{128,176},{128,194}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(watchController.large_digit2, watchDisplay.large_digit2)
        annotation (Line(
          points={{62,170},{62,170},{124.736,170},{148,170},{148,194}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(watchController.large_digit3, watchDisplay.large_digit3)
        annotation (Line(
          points={{62,164},{62,164},{160,164},{190,164},{190,194}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(watchController.large_digit4, watchDisplay.large_digit4)
        annotation (Line(
          points={{62,158},{62,158},{186.756,158},{208,158},{208,174.77},{208,
              194}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(watchController.small_digit, watchDisplay.small_digit)
        annotation (Line(
          points={{62,152},{62,152},{234,152},{254,152},{254,167.947},{254,
              194.973},{254,208},{242,208}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(watchController.text_digit, watchDisplay.text_digit)
        annotation (Line(
          points={{62,146},{62,146},{246,146},{272,146},{272,167.225},{272,
              205.545},{272,232},{242,232}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(dead.activePort, edge6.u) annotation (Line(
          points={{-4.72,100},{-31.2,100}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge6.y, top_level_bus_node.dead_active) annotation (Line(
          points={{-40.4,100},{-40.4,100},{-92,100},{-108,100},{-108,90},{-112,
              90}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(watchController.display_node, top_level_bus_node) annotation (
          Line(
          points={{37.6,140},{33.6,140},{33.6,128},{14.1535,128},{-71.7609,
              128},{-112,128},{-112,90}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));
      connect(alarm1_beeps.activePort, displays_bus_node.alarm1_beeps)
        annotation (Line(
          points={{-4.72,-50},{-4.72,-50},{-74.7595,-50},{-90,-50},{-90,-70}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(alarm2_beeps.activePort, displays_bus_node.alarm2_beeps)
        annotation (Line(
          points={{-4.72,-90},{-16,-90},{-71.7891,-90},{-90,-90},{-90,-70}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(both_beep.activePort, displays_bus_node.both_beep) annotation (
          Line(
          points={{-4.72,-130},{-54,-130},{-54,-86.3008},{-54,-64},{-76,-64},
              {-88,-64},{-88,-70},{-90,-70}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(top_level_bus_node1, top_level_bus_node) annotation (Line(
          points={{-180,150},{-180,126},{-146,126},{-112,126},{-112,90}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));
      connect(or1.y, showValue4.activePort) annotation (Line(
          points={{-212.8,150},{-229,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or1.u[1], top_level_bus_node1.alarm2_beeps) annotation (Line(
          points={{-204,148.6},{-182,148.6},{-182,150},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or1.u[2], top_level_bus_node1.both_beep) annotation (Line(
          points={{-204,151.4},{-204,152},{-182,152},{-182,150},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or2.y, showValue3.activePort) annotation (Line(
          points={{-212.8,170},{-229,170},{-229,170}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or2.u[1], top_level_bus_node1.alarm1_beeps) annotation (Line(
          points={{-204,168.6},{-204,168},{-184,168},{-184,152},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or2.u[2], top_level_bus_node1.both_beep) annotation (Line(
          points={{-204,171.4},{-198.844,171.4},{-180,171.4},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(showValue2.activePort, top_level_bus_node1.chime_on)
        annotation (Line(
          points={{-229,190},{-210,190},{-180,190},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm2_status_enabled.activePort, alarms_bus_node.alarm2_enabled)
        annotation (Line(
          points={{84.72,-130},{110,-130},{110,-152},{110,-186},{74,-186},{60,
              -186},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm1_status_enabled.activePort, alarms_bus_node.alarm1_enabled)
        annotation (Line(
          points={{84.72,-30},{106,-30},{106,-52},{106,-151.773},{106,-184},{
              74,-184},{60,-184},{60,-190}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(showValue.activePort, top_level_bus_node1.alarm1_enabled)
        annotation (Line(
          points={{-229,230},{-178,230},{-178,180},{-178,150},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(showValue1.activePort, top_level_bus_node1.alarm2_enabled)
        annotation (Line(
          points={{-229,210},{-178,210},{-178,160},{-178,150},{-180,150}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      annotation (
        Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-400,-300},
                {400,300}}), graphics={Text(
                      extent={{-308,240},{-308,220}},
                      lineColor={0,0,0},
                      lineThickness=0.5,
                      textString="Alarm 1 on"),Text(
                      extent={{-308,220},{-308,200}},
                      lineColor={0,0,0},
                      lineThickness=0.5,
                      textString="Alarm 2 on"),Text(
                      extent={{-304,200},{-304,180}},
                      lineColor={0,0,0},
                      lineThickness=0.5,
                      textString="Chime on"),Text(
                      extent={{-324,180},{-324,160}},
                      lineColor={0,0,0},
                      lineThickness=0.5,
                      textString="Alarm 1 beeps"),Text(
                      extent={{-324,160},{-324,140}},
                      lineColor={0,0,0},
                      lineThickness=0.5,
                      textString="Alarm 2 beeps")}),
        experiment(StopTime=200, Interval=0.01),
        Documentation(info="<html>
<p>This example is a StateGraph2 implementation of David Harel&apos;s Wristwatch presented in &QUOT;Statecharts: A Visual Formalism for Complex Systems&QUOT;, see <a href=\"modelica://Modelica_StateGraph2.UsersGuide.Literature\">literature</a>.</p>
<p>As an application example, D. Harel used a Citizen Quartz Multi-Alarm III wristwatch as a case study to prove that his new formalism was flexible and powerful enough to describe a behavior that contains numerous modes with only four input signals coming from the buttons of the watch. </p>
<p>The watch display comprises six different displays showing time, 12/24h time setting, AM/PM setting, alarm on/off, chime on/offand stop watch indication. It is operated by four buttons: A, B, C and D. The watch can display time and date (day of month, weekday, date, month, year). It has a chime function, display back-light for improved illumination, low-battery warning, a stop watch with lap/reg mode options and two alarms.</p>
<p>Button A works as a switch between display modes of the watch. The different display modes are: Time (default), alarm1, alarm2, and stopwatch. In each of these, button C will enter update mode where the current time or the alarm time can be set. Inside the update modes, C will flip through different time entities and finally return from update mode. Button B is used to exit update regardless of which internal state being active. In stopwatch mode, button B is used as on/off switch. Additionally, the illumination is turned on every time B is pressed down, and shut off on release. Button D serves as an on/off switch of the current active display mode. If in time mode, pressing button D will result in display of the current date. In stopwatch mode, button D works as a selector between reg/lap display mode.</p>
<p>To run model interactively, enable Realtime in the Experiment setup and set load result interval to 0.01.</p>
</html>"));
    end WristWatch;

    model Regular
      extends Modelica_StateGraph2.PartialParallel(nEntry=2, nExit=1);
      Modelica_StateGraph2.Step time_(
        initialStep=false,
        nIn=6,
        use_activePort=true,
        nOut=3) annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=0,
            origin={20,78})));
      Parallel update(
        use_outPort=true,
        nExit=1,
        nEntry=1,
        nResume=1,
        use_suspend=true,
        nOut=1,
        nSuspend=3,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-140,-80},{-20,80}})));
      Modelica_StateGraph2.Transition time_c_down(
        delayedTransition=false,
        use_conditionPort=true,
        loopCheck=false) annotation (Placement(transformation(
            extent={{4,4},{-4,-4}},
            rotation=180,
            origin={0,60})));
      Modelica_StateGraph2.Transition mode_c(delayedTransition=false,
          use_conditionPort=true) annotation (Placement(transformation(
            extent={{4,-4},{-4,4}},
            rotation=180,
            origin={-12,-40})));
      Modelica_StateGraph2.Step second(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-124,46},{-116,54}})));
      Modelica_StateGraph2.Step minute(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-124,6},{-116,14}})));
      Modelica_StateGraph2.Step ten_minutes(
        nIn=1,
        nOut=1,
        use_activePort=true) annotation (Placement(transformation(extent={{-124,
                -34},{-116,-26}})));
      Modelica_StateGraph2.Transition second_c(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{-124,26},{-116,34}})));
      Modelica_StateGraph2.Transition minute_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-124,-14},{-116,-6}})));
      Modelica_StateGraph2.Transition ten_minutes_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-124,-54},{-116,-46}})));
      Modelica_StateGraph2.Step hour(
        nOut=1,
        use_activePort=true,
        nIn=1)
        annotation (Placement(transformation(extent={{-84,46},{-76,54}})));
      Modelica_StateGraph2.Step month(
        nIn=1,
        use_activePort=true,
        nOut=1)
        annotation (Placement(transformation(extent={{-84,6},{-76,14}})));
      Modelica_StateGraph2.Transition hour_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-84,26},{-76,34}})));
      Modelica_StateGraph2.Transition month_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-84,-12},{-76,-4}})));
      Modelica_StateGraph2.Transition date_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-84,-52},{-76,-44}})));
      Modelica_StateGraph2.Step day(
        nOut=1,
        use_activePort=true,
        nIn=1)
        annotation (Placement(transformation(extent={{-44,46},{-36,54}})));
      Modelica_StateGraph2.Step year(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-44,6},{-36,14}})));
      Modelica_StateGraph2.Step mode(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-44,-34},{-36,-26}})));
      Modelica_StateGraph2.Transition day_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-44,26},{-36,34}})));
      Modelica_StateGraph2.Transition year_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-44,-14},{-36,-6}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch time_quantity(
        nu=4,
        use_pre_as_default=false,
        expr={1,60,60*10,60*60}) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={20,-70})));
      Modelica_StateGraph2.Transition perform_increment(
        use_firePort=true,
        use_conditionPort=true,
        loopCheck=false)
        annotation (Placement(transformation(extent={{-154,-6},{-146,2}})));
      Modelica_StateGraph2.Step date(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-84,-30},{-76,-22}})));
      Modelica_StateGraph2.Transition two_min_in_update(
        use_conditionPort=false,
        delayedTransition=true,
        waitTime=120) annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-154,72})));
      Modelica_StateGraph2.Step IO(nIn=2, nOut=2)
        annotation (Placement(transformation(extent={{100,-6},{108,2}})));
      Modelica_StateGraph2.Step OO(nOut=2, nIn=3)
        annotation (Placement(transformation(extent={{120,34},{128,42}})));
      Modelica_StateGraph2.Transition OO_b_down(use_conditionPort=true)
        annotation (Placement(transformation(extent={{110,14},{118,22}})));
      Modelica_StateGraph2.Transition OO_d_down(use_conditionPort=true)
        annotation (Placement(transformation(extent={{132,14},{140,22}})));
      Modelica_StateGraph2.Step OI(nIn=2, nOut=2)
        annotation (Placement(transformation(extent={{140,-6},{148,2}})));
      Modelica_StateGraph2.Step beep(nOut=2, nIn=2)
        annotation (Placement(transformation(extent={{120,-46},{128,-38}})));
      Modelica_StateGraph2.Transition IO_d_down(use_conditionPort=true)
        annotation (Placement(transformation(extent={{110,-26},{118,-18}})));
      Modelica_StateGraph2.Transition OI_b_down(use_conditionPort=true)
        annotation (Placement(transformation(extent={{130,-26},{138,-18}})));
      Modelica_StateGraph2.Transition beep_d_up(
        delayedTransition=true,
        waitTime=0.5,
        use_conditionPort=true)
        annotation (Placement(transformation(extent={{90,-18},{98,-26}})));
      Modelica_StateGraph2.Transition beep_b_up(
        delayedTransition=true,
        waitTime=0.5,
        use_conditionPort=true)
        annotation (Placement(transformation(extent={{150,-18},{158,-26}})));
      Modelica_StateGraph2.Transition IO_b_up(
        delayedTransition=true,
        waitTime=0.5,
        use_conditionPort=true)
        annotation (Placement(transformation(extent={{90,22},{98,14}})));
      Modelica_StateGraph2.Transition OI_d_up(
        delayedTransition=true,
        waitTime=0.5,
        use_conditionPort=true)
        annotation (Placement(transformation(extent={{150,22},{158,14}})));
      Modelica_StateGraph2.Step date_(
        nOut=2,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{26,42},{34,50}})));
      Modelica_StateGraph2.Transition time_d_b_up(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{34,56},{26,64}})));
      Modelica_StateGraph2.Transition two_min_in_date(delayedTransition=true,
          waitTime=120)
        annotation (Placement(transformation(extent={{40,28},{48,36}})));
      Modelica_StateGraph2.Transition date_d(use_conditionPort=true)
        annotation (Placement(transformation(extent={{13,28},{21,36}})));
      protected
      outer
        Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        signalBus
        annotation (Placement(transformation(extent={{120,-100},{160,-60}})));
      public
      Modelica.Blocks.Logical.And and1
        annotation (Placement(transformation(extent={{46,56},{38,64}})));
      Modelica.Blocks.Logical.Edge edge1 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={56,50})));
      Modelica.Blocks.Logical.Not not1 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={56,60})));
      Modelica.Blocks.Logical.Not not2 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={156,-56})));
      Modelica.Blocks.Logical.Not not3 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={86,-46})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        bus_node1
        annotation (Placement(transformation(extent={{80,60},{100,80}})));
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        bus_node2 annotation (Placement(transformation(extent={{-160,-100},{-140,
                -80}})));
      public
      Modelica.Blocks.Logical.Not not4 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=270,
            origin={84,44})));
      Modelica.Blocks.Logical.Not not5 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=270,
            origin={146,46})));
      Modelica_StateGraph2.Transition T2(use_conditionPort=true) annotation (
          Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-144,78})));
      Modelica.Blocks.Logical.Edge pre1 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={-130,-86})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd time_setting(
          use_reset=true)
        annotation (Placement(transformation(extent={{48,-76},{60,-64}})));
      Modelica_StateGraph2.Blocks.MathBoolean.Or show_time(nu=5)
        annotation (Placement(transformation(extent={{-92,-97},{-84,-89}})));
      Modelica_StateGraph2.Blocks.MathBoolean.Or show_date(nu=3)
        annotation (Placement(transformation(extent={{-16,-92},{-8,-84}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch date_quantity(
        nu=2,
        use_pre_as_default=false,
        expr={100,1}) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={20,-50})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd date_setting(
          use_reset=true)
        annotation (Placement(transformation(extent={{48,-56},{60,-44}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch mode_quantity(
        nu=1,
        use_pre_as_default=false,
        expr={1}) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={20,-30})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd mode_setting(
          use_reset=true)
        annotation (Placement(transformation(extent={{48,-36},{60,-24}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch year_quantity(
        nu=1,
        use_pre_as_default=false,
        expr={1}) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={20,-10})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd year_setting(
          use_reset=true)
        annotation (Placement(transformation(extent={{48,-16},{60,-4}})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch day_quantity(
        nu=1,
        use_pre_as_default=false,
        expr={1}) annotation (Placement(transformation(
            extent={{-20,-10},{20,10}},
            rotation=0,
            origin={20,10})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd day_setting(
          use_reset=true)
        annotation (Placement(transformation(extent={{48,4},{60,16}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        bus_node3
        annotation (Placement(transformation(extent={{64,-30},{84,-10}})));
      public
      Modelica.Blocks.Logical.Edge pre2 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={-152,-72})));
      Modelica.Blocks.Logical.Edge edge2 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={78,90})));
    equation
      connect(second_c.inPort, second.outPort[1]) annotation (Line(
          points={{-120,34},{-120,45.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(second_c.outPort, minute.inPort[1]) annotation (Line(
          points={{-120,25},{-120,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(minute_c.inPort, minute.outPort[1]) annotation (Line(
          points={{-120,-6},{-120,5.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(minute_c.outPort, ten_minutes.inPort[1]) annotation (Line(
          points={{-120,-15},{-120,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(ten_minutes_c.inPort, ten_minutes.outPort[1]) annotation (Line(
          points={{-120,-46},{-120,-34.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(hour_c.inPort, hour.outPort[1]) annotation (Line(
          points={{-80,34},{-80,45.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(hour_c.outPort, month.inPort[1]) annotation (Line(
          points={{-80,25},{-80,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(day_c.outPort, year.inPort[1]) annotation (Line(
          points={{-40,25},{-40,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(year_c.inPort, year.outPort[1]) annotation (Line(
          points={{-40,-6},{-40,5.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(year_c.outPort, mode.inPort[1]) annotation (Line(
          points={{-40,-15},{-40,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(date_c.inPort, date.outPort[1]) annotation (Line(
          points={{-80,-44},{-80,-30.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update.entry[1], second.inPort[1]) annotation (Line(
          points={{-80,72},{-80,72},{-80,68},{-102.969,68},{-120,68},{-120,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(day_c.inPort, day.outPort[1]) annotation (Line(
          points={{-40,34},{-40,45.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update.resume[1], perform_increment.outPort) annotation (Line(
          points={{-140,-45},{-150,-45},{-150,-7}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(mode.outPort[1], update.exit[1]) annotation (Line(
          points={{-40,-34.6},{-40,-34.6},{-40,-62},{-68.5156,-62},{-80,-62},
              {-80,-73}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(two_min_in_update.outPort, time_.inPort[1]) annotation (Line(
          points={{-154,77},{-154,96},{-134.396,96},{-1.18348,96},{18.3333,96},
              {18.3333,82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(mode_c.outPort, time_.inPort[2]) annotation (Line(
          points={{-12,-35},{-12,-35},{-12,60.4336},{-12,86},{5.5625,86},{19,
              86},{19,82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OO.outPort[1], OO_b_down.inPort) annotation (Line(
          points={{123,33.4},{123,28},{114,28},{114,22}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(beep_d_up.inPort, beep.outPort[1]) annotation (Line(
          points={{94,-26},{94,-56},{113.343,-56},{123,-56},{123,-46.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(beep_d_up.outPort, IO.inPort[1]) annotation (Line(
          points={{94,-17},{94,10},{103,10},{103,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OO_b_down.outPort, IO.inPort[2]) annotation (Line(
          points={{114,13},{114,10},{110,10},{105,10},{105,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OO_d_down.outPort, OI.inPort[1]) annotation (Line(
          points={{136,13},{136,8},{140,8},{143,8},{143,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(IO.outPort[1], IO_b_up.inPort) annotation (Line(
          points={{103,-6.6},{103,-12},{94,-12},{94,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(IO.outPort[2], IO_d_down.inPort) annotation (Line(
          points={{105,-6.6},{105,-12},{114,-12},{114,-18}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(two_min_in_date.outPort, time_.inPort[3]) annotation (Line(
          points={{44,27},{44,27},{44,24},{48,24},{64,24},{64,41.4023},{64,
              72.3461},{64,88},{46.5,88},{32,88},{19.6667,88},{19.6667,82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(IO_d_down.outPort, beep.inPort[1]) annotation (Line(
          points={{114,-27},{114,-32},{123,-32},{123,-38}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OI_b_down.outPort, beep.inPort[2]) annotation (Line(
          points={{134,-27},{134,-32},{125,-32},{125,-38}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(beep_b_up.inPort, beep.outPort[2]) annotation (Line(
          points={{154,-26},{154,-56},{136,-56},{125,-56},{125,-46.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(beep_b_up.outPort, OI.inPort[2]) annotation (Line(
          points={{154,-17},{154,-14},{154,4},{145,4},{145,2}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OI.outPort[1], OI_b_down.inPort) annotation (Line(
          points={{143,-6.6},{143,-12},{134,-12},{134,-18}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OI_d_up.inPort, OI.outPort[2]) annotation (Line(
          points={{154,14},{154,-10},{145,-10},{145,-6.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OO.outPort[2], OO_d_down.inPort) annotation (Line(
          points={{125,33.4},{125,28},{136,28},{136,22}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(mode_c.inPort, update.outPort[1]) annotation (Line(
          points={{-12,-44},{-12,-86},{-72.6016,-86},{-80,-86},{-80,-82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(month.outPort[1], month_c.inPort) annotation (Line(
          points={{-80,5.4},{-80,5.4},{-80,-4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(month_c.outPort, date.inPort[1]) annotation (Line(
          points={{-80,-13},{-80,-22}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(date_c.outPort, day.inPort[1]) annotation (Line(
          points={{-80,-53},{-80,-60},{-71.471,-60},{-65.8906,-60},{-52,-60},
              {-52,-46.1797},{-52,55.4215},{-52,62},{-46,62},{-40,62},{-40,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(ten_minutes_c.outPort, hour.inPort[1]) annotation (Line(
          points={{-120,-55},{-120,-60},{-113.246,-60},{-106,-60},{-92,-60},{
              -92,-45.9852},{-92,54.6182},{-92,62},{-85.0039,62},{-80,62},{-80,
              54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(second.activePort, time_quantity.u[1]) annotation (Line(
          points={{-115.28,50},{-104,50},{-104,35.0267},{-104,-36.625},{-104,
              -47.3312},{-104,-67.75},{-86.4297,-67.75},{0,-67.75}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(minute.activePort, time_quantity.u[2]) annotation (Line(
          points={{-115.28,10},{-106,10},{-106,-1.11504},{-106,-28.774},{-106,
              -51.4036},{-106,-69},{-88,-69},{0,-69},{0,-69.25}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(ten_minutes.activePort, time_quantity.u[3]) annotation (Line(
          points={{-115.28,-30},{-108,-30},{-108,-39.9852},{-108,-58.5069},{-108,
              -70.75},{-92.0742,-70.75},{0,-70.75}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(hour.activePort, time_quantity.u[4]) annotation (Line(
          points={{-75.28,50},{-58,50},{-58,33.2079},{-58,-51.7461},{-58,-72},
              {-40.2266,-72},{-30,-72},{0,-72.25}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(IO_b_up.outPort, OO.inPort[1]) annotation (Line(
          points={{94,23},{94,23},{94,40},{94,70},{122.667,70},{122.667,42}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(entry[2], OO.inPort[2]) annotation (Line(
          points={{30,100},{30,100},{124,100.8},{124,42}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(OI_d_up.outPort, OO.inPort[3]) annotation (Line(
          points={{154,23},{154,23},{154,46},{154,70},{125.333,70},{125.333,
              42}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(date_.outPort[1], date_d.inPort) annotation (Line(
          points={{29,41.4},{29,41.4},{29,38},{22,38},{17,38},{17,36}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(time_d_b_up.outPort, date_.inPort[1]) annotation (Line(
          points={{30,55},{30,50}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(date_.outPort[2], two_min_in_date.inPort) annotation (Line(
          points={{31,41.4},{31,38},{35.6143,38},{44,38},{44,36}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(entry[1], time_.inPort[4]) annotation (Line(
          points={{-30,100},{0,100},{0,98},{20.3333,98},{20.3333,82}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(ten_minutes_c.conditionPort, minute_c.conditionPort)
        annotation (Line(
          points={{-125,-50},{-130,-50},{-130,-43.9063},{-130,-14.8674},{-130,
              -10},{-125,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(minute_c.conditionPort, second_c.conditionPort) annotation (
          Line(
          points={{-125,-10},{-130,-10},{-130,-3.55469},{-130,25.8057},{-130,
              30},{-125,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(second_c.conditionPort, hour_c.conditionPort) annotation (Line(
          points={{-125,30},{-128,30},{-128,35.3223},{-128,40},{-121.137,40},
              {-100,40},{-90,40},{-90,35},{-90,30},{-85,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(hour_c.conditionPort, month_c.conditionPort) annotation (Line(
          points={{-85,30},{-90,30},{-90,25.0273},{-90,-2.22667},{-90,-8},{-85,
              -8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(month_c.conditionPort, date_c.conditionPort) annotation (Line(
          points={{-85,-8},{-90,-8},{-90,-12.2578},{-90,-42.7294},{-90,-48},{
              -85,-48}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(hour_c.conditionPort, day_c.conditionPort) annotation (Line(
          points={{-85,30},{-90,30},{-90,34.834},{-90,40},{-82.7813,40},{-56.6267,
              40},{-50,40},{-50,34.5215},{-50,30},{-45,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(day_c.conditionPort, year_c.conditionPort) annotation (Line(
          points={{-45,30},{-50,30},{-50,26.3281},{-50,-4.50112},{-50,-10},{-45,
              -10}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(mode_c.conditionPort, year_c.conditionPort) annotation (Line(
          points={{-17,-40},{-50,-40},{-50,-14.8613},{-50,-10},{-45,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(and1.y, time_d_b_up.conditionPort) annotation (Line(
          points={{37.6,60},{35,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not1.y, and1.u1) annotation (Line(
          points={{51.6,60},{48,59.8047},{48,60},{46.8,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not2.u, signalBus.b) annotation (Line(
          points={{156,-60.8},{156,-80},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(not2.y, beep_b_up.conditionPort) annotation (Line(
          points={{156,-51.6},{156,-42},{156,-36},{151.088,-36},{146,-36},{
              146,-31.42},{146,-25.5547},{146,-22},{149,-22}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not2.u, OI_b_down.conditionPort) annotation (Line(
          points={{156,-60.8},{156,-64},{152,-64},{144,-64},{144,-56.0898},{
              144,-36.5312},{144,-28},{135.992,-28},{128.157,-28},{124,-28},{
              124,-25.0059},{124,-22},{129,-22}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not3.y, beep_d_up.conditionPort) annotation (Line(
          points={{86,-41.6},{86,-27.034},{86,-22},{89,-22}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not3.u, IO_d_down.conditionPort) annotation (Line(
          points={{86,-50.8},{86,-60},{92.4863,-60},{106,-60},{106,-44.0293},
              {106,-28.4539},{106,-22},{109,-22}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not3.u, signalBus.d) annotation (Line(
          points={{86,-50.8},{86,-60},{94.0605,-60},{101.542,-60},{118,-60},{
              118,-80},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(signalBus, bus_node2) annotation (Line(
          points={{140,-80},{140,-98},{123.291,-98},{-137.99,-98},{-150,-98},
              {-150,-90}},
          color={255,204,51},
          smooth=Smooth.Bezier,
          thickness=0.5));
      connect(not4.u, bus_node1.b) annotation (Line(
          points={{84,48.8},{84,48.8},{84,70},{90,70}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(not4.y, IO_b_up.conditionPort) annotation (Line(
          points={{84,39.6},{84,39.6},{84,26.8805},{84,18},{89,18}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(OO_b_down.conditionPort, not4.u) annotation (Line(
          points={{109,18},{100,18},{100,32.4297},{100,52},{100,60},{92.5156,
              60},{84,60},{84,48.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(not5.u, bus_node1.d) annotation (Line(
          points={{146,50.8},{146,50.8},{146,60},{146,72},{125.656,72},{90,72},
              {90,70}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(not5.y, OI_d_up.conditionPort) annotation (Line(
          points={{146,41.6},{146,24.0844},{146,18},{149,18}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(OO_d_down.conditionPort, not5.u) annotation (Line(
          points={{131,18},{126,18},{126,21.4297},{126,26},{131.25,26},{138,
              26},{138,33.9314},{138,48.3125},{138,54},{142.188,54},{146,54},
              {146,50.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(T2.inPort, update.suspend[1]) annotation (Line(
          points={{-144,74},{-144,74},{-144,68},{-144,54.3333},{-143,54.3333}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(two_min_in_update.inPort, update.suspend[2]) annotation (Line(
          points={{-154,68},{-154,45},{-143,45}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(perform_increment.inPort, update.suspend[3]) annotation (Line(
          points={{-150,2},{-150,2},{-150,35.6667},{-143,35.6667}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(T2.conditionPort, bus_node2.b) annotation (Line(
          points={{-139,78},{-134,78},{-134,70.7813},{-134,-69.2743},{-134,-90},
              {-150,-90}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(T2.outPort, time_.inPort[5]) annotation (Line(
          points={{-144,83},{-144,94},{-131.994,94},{-10.3665,94},{21,94},{21,
              82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(not4.u, not1.u) annotation (Line(
          points={{84,48.8},{84,60},{76.1719,60},{68,60},{60.8,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(time_.activePort, bus_node1.time_active) annotation (Line(
          points={{24.72,78},{58,78},{68.6348,78},{88,78},{88,70},{90,70}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(pre1.u, bus_node2.c) annotation (Line(
          points={{-130,-90.8},{-130,-90.8},{-130,-96},{-135.703,-96},{-142.851,
              -96},{-150,-96},{-150,-90}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(pre1.y, ten_minutes_c.conditionPort) annotation (Line(
          points={{-130,-81.6},{-130,-56.0176},{-130,-50},{-125,-50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(time_setting.u, time_quantity.y) annotation (Line(
          points={{46.2,-70},{41,-70}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(time_setting.trigger, perform_increment.firePort) annotation (
          Line(
          points={{50.4,-77.2},{50,-80},{43.8444,-80},{-3.875,-80},{-10,-80},
              {-10,-78},{-16.5078,-78},{-99.6906,-78},{-108,-78},{-108,-70.4941},
              {-108,-64},{-116.818,-64},{-123.176,-64},{-136,-64},{-136,-50.9789},
              {-136,-12.7168},{-136,-2},{-145.8,-2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(time_setting.y, signalBus.update_time) annotation (Line(
          points={{61.2,-70},{61.2,-70},{71.6648,-70},{84,-70},{84,-82},{92,-82},
              {144,-82},{144,-80},{140,-80}},
          color={255,127,0},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(second.activePort, show_time.u[1]) annotation (Line(
          points={{-115.28,50},{-100,50},{-100,30.3125},{-100,-80.7181},{-100,
              -90.76},{-92,-90.76}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(minute.activePort, show_time.u[2]) annotation (Line(
          points={{-115.28,10},{-100,10},{-100,-5.04383},{-100,-81.6957},{-100,
              -91.88},{-92,-91.88}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(ten_minutes.activePort, show_time.u[3]) annotation (Line(
          points={{-115.28,-30},{-100,-30},{-100,-43.8752},{-100,-82.6229},{-100,
              -93},{-92,-93}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(hour.activePort, show_time.u[4]) annotation (Line(
          points={{-75.28,50},{-60,50},{-60,66},{-81.2542,66},{-102,66},{-102,
              46.1292},{-102,-81.4468},{-102,-94.12},{-92,-94.12}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(month.activePort, show_date.u[1]) annotation (Line(
          points={{-75.28,10},{-60,10},{-60,-6.5},{-60,-65.5815},{-60,-86},{-16,
              -86},{-16,-86.1333}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(date.activePort, show_date.u[2]) annotation (Line(
          points={{-75.28,-26},{-62,-26},{-62,-39.4814},{-62,-64.1352},{-62,-87.4},
              {-16,-87.4},{-16,-88}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(day.activePort, show_date.u[3]) annotation (Line(
          points={{-35.28,50},{-26,50},{-26,68},{-40.707,68},{-56,68},{-56,
              50.3432},{-56,-63.572},{-56,-89.8667},{-16,-89.8667}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(show_date.y, signalBus.show_date) annotation (Line(
          points={{-7.2,-88},{-7.2,-88},{122.894,-88},{140,-88},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(show_time.y, signalBus.show_time) annotation (Line(
          points={{-83.2,-93},{-83.2,-93},{123.652,-93},{140,-93},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(year.activePort, signalBus.show_year) annotation (Line(
          points={{-35.28,10},{-28,10},{-28,0.25},{-28,-72.1863},{-28,-94},{-4.70313,
              -94},{126.293,-94},{140,-94},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(mode.activePort, signalBus.mode_active) annotation (Line(
          points={{-35.28,-30},{-30,-30},{-30,-37.3621},{-30,-78.0176},{-30,-96},
              {-10.7811,-96},{128.711,-96},{140,-96},{140,-80}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(time_.outPort[1], time_c_down.inPort) annotation (Line(
          points={{18.6667,73.4},{18.6667,70},{16.8438,70},{4.89859e-016,70},
              {4.89859e-016,64}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(edge1.y, and1.u2) annotation (Line(
          points={{51.6,50},{50,50},{50,52.902},{50,56.8},{46.8,56.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(date_d.outPort, time_.inPort[6]) annotation (Line(
          points={{17,27},{17,22},{24.0375,22},{45.7109,22},{66,22},{66,
              40.2129},{66,72},{66,86},{51.9355,86},{28,86},{21.6667,86},{
              21.6667,82}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(date_setting.u, date_quantity.y) annotation (Line(
          points={{46.2,-50},{46.2,-50},{41,-50}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(mode_setting.u, mode_quantity.y) annotation (Line(
          points={{46.2,-30},{46.2,-30},{41,-30}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(year_setting.u, year_quantity.y) annotation (Line(
          points={{46.2,-10},{46.2,-10},{41,-10}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(time_setting.trigger, date_setting.trigger) annotation (Line(
          points={{50.4,-77.2},{50.4,-78},{43,-78},{43,-60},{50.4,-60},{50.4,
              -57.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(date_setting.trigger, mode_setting.trigger) annotation (Line(
          points={{50.4,-57.2},{50.4,-60},{43,-60},{43,-40},{50.4,-40},{50.4,
              -37.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(mode_setting.trigger, year_setting.trigger) annotation (Line(
          points={{50.4,-37.2},{50.4,-40},{43,-40},{43,-20},{50.4,-20},{50.4,
              -17.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(time_c_down.conditionPort, day_c.conditionPort) annotation (
          Line(
          points={{-5,60},{-5,60},{-10,60},{-17.7344,60},{-39.6649,60},{-50,
              60},{-50,50.4841},{-50,38.584},{-50,30},{-45,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(year_setting.trigger, day_setting.trigger) annotation (Line(
          points={{50.4,-17.2},{50.4,-20},{43,-20},{43,0},{50.4,0},{50.4,2.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(day.activePort, day_quantity.u[1]) annotation (Line(
          points={{-35.28,50},{-26,50},{-26,36},{-26,10},{0,10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(year_quantity.u[1], year.activePort) annotation (Line(
          points={{0,-10},{-18.3203,-10},{-28,-10},{-28,0},{-28,10},{-35.28,
              10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(mode_quantity.u[1], mode.activePort) annotation (Line(
          points={{0,-30},{-35.28,-30}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(bus_node3, signalBus) annotation (Line(
          points={{74,-20},{74,-20},{74,-30},{74,-64.2344},{74,-86},{93.541,-86},
              {132,-86},{132,-80},{140,-80}},
          color={255,204,51},
          smooth=Smooth.Bezier,
          thickness=0.5));
      connect(bus_node3, bus_node1) annotation (Line(
          points={{74,-20},{74,-20},{74,10},{74,56.1719},{74,70},{90,70}},
          color={255,204,51},
          thickness=0.5,
          smooth=Smooth.Bezier));
      connect(day_setting.y, bus_node3.day_setting) annotation (Line(
          points={{61.2,10},{72,10},{72,-20},{74,-20}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(year_setting.y, bus_node3.year_setting) annotation (Line(
          points={{61.2,-10},{70,-10},{70,-20},{74,-20}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(day_quantity.y, day_setting.u) annotation (Line(
          points={{41,10},{46.2,10}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(date_setting.y, bus_node3.date_setting) annotation (Line(
          points={{61.2,-50},{70,-50},{70,-20},{74,-20}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(time_c_down.outPort, update.inPort[1]) annotation (Line(
          points={{-6.12323e-016,55},{0,50},{-6,50},{-6,56.4453},{-6,74},{-6,
              90},{-20.9065,90},{-65.4688,90},{-80,90},{-80,80}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(time_.outPort[2], exit[1]) annotation (Line(
          points={{20,73.4},{20,73.4},{20,60.3422},{20,46},{8.06641,46},{-6,
              46},{-6,27.6523},{-6,-64.2581},{-6,-76},{0,-76},{0,-105}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(time_.outPort[3], time_d_b_up.inPort) annotation (Line(
          points={{21.3333,73.4},{22,73.4},{22,70},{30,70},{30,64}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(mode_setting.y, bus_node3.mode_setting) annotation (Line(
          points={{61.2,-30},{66,-30},{66,-20},{74,-20}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(pre2.y, perform_increment.conditionPort) annotation (Line(
          points={{-152,-67.6},{-152,-67.6},{-152,-10.8125},{-152,-6},{-156,-6},
              {-158,-6},{-158,-3.77734},{-158,-2},{-155,-2}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(pre2.u, bus_node2.d) annotation (Line(
          points={{-152,-76.8},{-152,-76.8},{-152,-90},{-150,-90}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update.activePort, bus_node3.update_active) annotation (Line(
          points={{-17.5,0},{-17.5,0},{55.9121,0},{76,0},{76,-20},{74,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(time_setting.reset, bus_node3.dead_active) annotation (Line(
          points={{57.6,-77.2},{57.6,-84},{64.7438,-84},{72,-84},{72,-74.3125},
              {72,-20},{74,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(date_setting.reset, time_setting.reset) annotation (Line(
          points={{57.6,-57.2},{57.6,-60},{66,-60},{66,-80},{57.6,-80},{57.6,
              -77.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(date_setting.reset, mode_setting.reset) annotation (Line(
          points={{57.6,-57.2},{57.6,-60},{66,-60},{66,-40},{57.6,-40},{57.6,
              -37.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(mode_setting.reset, year_setting.reset) annotation (Line(
          points={{57.6,-37.2},{57.6,-40},{66,-40},{66,-20},{57.6,-20},{57.6,
              -17.2}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(year_setting.reset, day_setting.reset) annotation (Line(
          points={{57.6,-17.2},{57.6,-20},{66,-20},{66,0},{57.6,0},{57.6,2.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(edge2.u, bus_node1.d) annotation (Line(
          points={{82.8,90},{92,90},{92,82.168},{92,70},{90,70}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.y, date_d.conditionPort) annotation (Line(
          points={{73.6,90},{73.6,90},{8.4125,90},{-16,90},{-16,64.2036},{-16,
              54.543},{-16,32},{12,32}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.y, edge1.u) annotation (Line(
          points={{73.6,90},{70,90},{70,84.8828},{70,57.8691},{70,50},{60.8,
              50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(month.activePort, date_quantity.u[1]) annotation (Line(
          points={{-75.28,10},{-60,10},{-60,-6},{-60,-35.6484},{-60,-50},{-46.5234,
              -50},{0,-50},{0,-48.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(date.activePort, date_quantity.u[2]) annotation (Line(
          points={{-75.28,-26},{-62,-26},{-62,-37.2808},{-62,-51.5},{-48.4375,
              -51.5},{0,-51.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(date_.activePort, bus_node3.date_active) annotation (Line(
          points={{34.72,46},{41.599,46},{50,46},{50,40},{59.3516,40},{78,40},
              {78,23.5938},{78,-20},{74,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(mode.activePort, show_time.u[5]) annotation (Line(
          points={{-35.28,-30},{-30,-30},{-30,-37.7363},{-30,-64},{-51.752,-64},
              {-80.3251,-64},{-104,-64},{-104,-78.0031},{-104,-95.24},{-92,-95.24}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
                {-160,-100},{160,100}}), graphics), Icon(coordinateSystem(
              preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
            graphics={Bitmap(extent={{-160,160},{160,-160}}, fileName=
              "Images/StateGraph/Examples/Regular_sm.png")}));
    end Regular;

    model Out
      extends Modelica_StateGraph2.PartialParallel(nEntry=1, nExit=1);
      Parallel chime(
        nEntry=1,
        use_suspend=true,
        nResume=1,
        use_inPort=false,
        nSuspend=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-220,-40},{-160,60}})));
      Modelica_StateGraph2.Step chime_off(
        nIn=2,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-204,36},{-196,44}})));
      Modelica_StateGraph2.Transition chime_off_d(use_conditionPort=true,
          use_firePort=false)
        annotation (Placement(transformation(extent={{-204,16},{-196,24}})));
      Modelica_StateGraph2.Step chime_on(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-204,-4},{-196,4}})));
      Modelica_StateGraph2.Transition chime_on_d(
        use_conditionPort=true,
        use_firePort=false,
        loopCheck=false) annotation (Placement(transformation(extent={{-204,-24},
                {-196,-16}})));
      Parallel alarm1(
        nEntry=1,
        use_suspend=true,
        nSuspend=2,
        nResume=3,
        use_inPort=false,
        use_activePort=true)
        annotation (Placement(transformation(extent={{60,-40},{120,60}})));
      Modelica_StateGraph2.Step alarm1_off(
        nIn=2,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{76,36},{84,44}})));
      Modelica_StateGraph2.Transition alarm1_off_d(use_conditionPort=true,
          use_firePort=false)
        annotation (Placement(transformation(extent={{76,16},{84,24}})));
      Modelica_StateGraph2.Step alarm1_on(
        nIn=1,
        nOut=1,
        initialStep=false,
        use_activePort=true)
        annotation (Placement(transformation(extent={{76,-4},{84,4}})));
      Modelica_StateGraph2.Transition alarm1_on_d(
        use_conditionPort=true,
        use_firePort=false,
        loopCheck=false)
        annotation (Placement(transformation(extent={{76,-24},{84,-16}})));
      Parallel update1(
        use_outPort=true,
        use_suspend=true,
        nEntry=1,
        nExit=1,
        nIn=1,
        nSuspend=2,
        nResume=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{150,-60},{210,80}})));
      Modelica_StateGraph2.Step update1_hour(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{166,46},{174,54}})));
      Modelica_StateGraph2.Transition update1_hour_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{166,26},{174,34}})));
      Modelica_StateGraph2.Step update1_ten_min(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{166,6},{174,14}})));
      Modelica_StateGraph2.Transition update1_ten_min_c(use_conditionPort=
            true)
        annotation (Placement(transformation(extent={{166,-14},{174,-6}})));
      Modelica_StateGraph2.Step update1_min(
        nIn=1,
        use_activePort=true,
        nOut=1)
        annotation (Placement(transformation(extent={{166,-34},{174,-26}})));
      Modelica_StateGraph2.Transition update1_d(
        use_firePort=true,
        use_conditionPort=true,
        loopCheck=false)
        annotation (Placement(transformation(extent={{138,14},{146,22}})));
      Modelica_StateGraph2.Transition update1_b(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{126,22},{134,30}})));
      Modelica_StateGraph2.Transition update1_c(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{176,-78},{184,-70}})));
      Parallel alarm2(
        nEntry=1,
        use_suspend=true,
        nSuspend=2,
        nResume=3,
        use_inPort=false,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-128,-40},{-68,60}})));
      Modelica_StateGraph2.Step alarm2_off(
        nIn=2,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-112,36},{-104,44}})));
      Modelica_StateGraph2.Transition alarm2_off_d(use_conditionPort=true,
          use_firePort=false)
        annotation (Placement(transformation(extent={{-112,16},{-104,24}})));
      Modelica_StateGraph2.Step alarm2_on(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-112,-4},{-104,4}})));
      Modelica_StateGraph2.Transition alarm2_on_d(
        use_conditionPort=true,
        use_firePort=false,
        loopCheck=false) annotation (Placement(transformation(extent={{-112,-24},
                {-104,-16}})));
      Parallel update2(
        use_outPort=true,
        use_suspend=true,
        nEntry=1,
        nExit=1,
        nIn=1,
        nSuspend=2,
        nResume=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-40,-60},{20,80}})));
      Modelica_StateGraph2.Step update2_hour(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-24,46},{-16,54}})));
      Modelica_StateGraph2.Transition update2_hour_c(use_conditionPort=true)
        annotation (Placement(transformation(extent={{-24,26},{-16,34}})));
      Modelica_StateGraph2.Step update2_ten_min(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-24,6},{-16,14}})));
      Modelica_StateGraph2.Transition update2_ten_min_c(use_conditionPort=
            true)
        annotation (Placement(transformation(extent={{-24,-14},{-16,-6}})));
      Modelica_StateGraph2.Step update2_min(
        nOut=1,
        nIn=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-24,-34},{-16,-26}})));
      Modelica_StateGraph2.Transition update2_d(
        use_firePort=true,
        use_conditionPort=true,
        loopCheck=false)
        annotation (Placement(transformation(extent={{-52,10},{-44,18}})));
      Modelica_StateGraph2.Transition update2_b(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{-62,24},{-54,32}})));
      Modelica_StateGraph2.Transition update2_c(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{-14,-72},{-6,-64}})));
      Modelica_StateGraph2.Transition alarm1_c(use_conditionPort=true)
        annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={50,60})));
      Modelica_StateGraph2.Transition alarm1_a(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{38,-38},{46,-30}})));
      Modelica_StateGraph2.Transition alarm2_a(use_conditionPort=true,
          loopCheck=false)
        annotation (Placement(transformation(extent={{-148,-8},{-156,0}})));
      Modelica_StateGraph2.Transition alarm2_c(use_conditionPort=true,
          loopCheck=false) annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={-138,60})));
      protected
      outer
        Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        signalBus
        annotation (Placement(transformation(extent={{-240,60},{-200,100}})));
      public
      Modelica.Blocks.Logical.Edge edge2
        annotation (Placement(transformation(extent={{-180,88},{-172,96}})));
      Modelica.Blocks.Logical.Edge edge3
        annotation (Placement(transformation(extent={{26,-38},{34,-30}})));
      Modelica.Blocks.Logical.Edge edge4
        annotation (Placement(transformation(extent={{-168,76},{-160,84}})));
      Modelica.Blocks.Logical.Edge edge5 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=270,
            origin={-212,46})));
      Modelica.Blocks.Logical.Edge edge6 annotation (Placement(transformation(
            extent={{4,-4},{-4,4}},
            rotation=90,
            origin={-80,-20})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        update2_bus_node annotation (Placement(transformation(extent={{-2,-44},
                {18,-24}}), iconTransformation(extent={{-10,-4},{10,16}})));
      public
      Modelica.Blocks.Logical.Edge edge8
        annotation (Placement(transformation(extent={{-16,-54},{-24,-46}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        alarm2_bus_node
        annotation (Placement(transformation(extent={{-88,-10},{-68,10}})));
      public
      Modelica.Blocks.Logical.Edge edge9 annotation (Placement(transformation(
            extent={{4,-4},{-4,4}},
            rotation=270,
            origin={-74,18})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        chime_bus_node
        annotation (Placement(transformation(extent={{-180,-10},{-160,10}})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        alarm1_bus_node
        annotation (Placement(transformation(extent={{100,-10},{120,10}})));
      public
      Modelica.Blocks.Logical.Edge edge10 annotation (Placement(
            transformation(
            extent={{-4,-4},{4,4}},
            rotation=270,
            origin={112,-14})));
      Modelica.Blocks.Logical.Edge edge7 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=90,
            origin={114,12})));
      protected
      Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        alarm1_bus_node1 annotation (Placement(transformation(extent={{190,-44},
                {210,-24}}), iconTransformation(extent={{190,-20},{210,0}})));
      public
      Modelica.Blocks.Logical.Edge edge1 annotation (Placement(transformation(
            extent={{-4,-4},{4,4}},
            rotation=180,
            origin={168,-50})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch quantity2(
        expr={60*60,60*10,60},
        nu=3,
        use_pre_as_default=false) annotation (Placement(transformation(
            extent={{-12,-6},{12,6}},
            rotation=270,
            origin={14,28})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd alarm2_setting
        annotation (Placement(transformation(
            extent={{-5,-5},{3,3}},
            rotation=270,
            origin={9,-3})));
      Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch quantity1(
        expr={60*60,60*10,60},
        nu=3,
        use_pre_as_default=false) annotation (Placement(transformation(
            extent={{-12,-6},{12,6}},
            rotation=270,
            origin={206,26})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd alarm1_setting
        annotation (Placement(transformation(
            extent={{-5,-5},{3,3}},
            rotation=270,
            origin={201,-5})));
      Modelica_StateGraph2.Blocks.MathBoolean.Or or1(nu=2) annotation (
          Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=270,
            origin={28,-12})));
      Modelica_StateGraph2.Blocks.MathBoolean.Or or2(nu=2) annotation (
          Placement(transformation(
            extent={{-6,-6},{6,6}},
            rotation=270,
            origin={222,-20})));
    equation
      connect(chime_off.inPort[1], chime.entry[1]) annotation (Line(
          points={{-201,44},{-200,44},{-200,55},{-190,55}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_off_d.inPort, chime_off.outPort[1]) annotation (Line(
          points={{-200,24},{-200,35.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_on.inPort[1], chime_off_d.outPort) annotation (Line(
          points={{-200,4},{-200,15}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_on_d.inPort, chime_on.outPort[1]) annotation (Line(
          points={{-200,-16},{-200,-4.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime_on_d.outPort, chime_off.inPort[2]) annotation (Line(
          points={{-200,-25},{-200,-34},{-188.926,-34},{-180,-34},{-180,-23.516},
              {-180,-20.289},{-180,44},{-180,50},{-189.723,50},{-199,50},{-199,
              44}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_off.inPort[1], alarm1.entry[1]) annotation (Line(
          points={{79,44},{80,44},{80,55},{90,55}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_off_d.inPort, alarm1_off.outPort[1]) annotation (Line(
          points={{80,24},{80,35.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_on_d.outPort, alarm1_off.inPort[2]) annotation (Line(
          points={{80,-25},{80,-34},{91.074,-34},{100,-34},{100,-23.516},{100,
              -20.289},{100,44},{100,50},{90.277,50},{81,50},{81,44}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1.entry[1], update1_hour.inPort[1]) annotation (Line(
          points={{180,73},{180,64},{170,64},{170,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_hour.outPort[1], update1_hour_c.inPort) annotation (
          Line(
          points={{170,45.4},{170,34}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_hour_c.outPort, update1_ten_min.inPort[1]) annotation (
          Line(
          points={{170,25},{170,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_ten_min_c.outPort, update1_min.inPort[1]) annotation (
          Line(
          points={{170,-15},{170,-15},{170,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_ten_min.outPort[1], update1_ten_min_c.inPort)
        annotation (Line(
          points={{170,5.4},{170,5.4},{170,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_d.outPort, update1.resume[1]) annotation (Line(
          points={{142,13},{142,13},{142,-17.457},{142,-29.375},{150,-29.375}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(update1.suspend[1], update1_d.inPort) annotation (Line(
          points={{148.5,55.5},{142,55.5},{142,47.7139},{142,22}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1.suspend[2], update1_b.inPort) annotation (Line(
          points={{148.5,43.25},{130,43.25},{130,30}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_b.outPort, alarm1.resume[1]) annotation (Line(
          points={{130,21},{130,21},{130,4},{130,-23.371},{130,-48},{105.244,
              -48},{79.35,-48},{52,-48},{52,-31.604},{52,-12.2917},{60,-12.2917}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(alarm1.resume[2], update1_c.outPort) annotation (Line(
          points={{60,-18.125},{44,-18},{44,-41.977},{44,-67.724},{44,-90},{
              68.248,-90},{165.594,-90},{180,-90},{180,-79}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update1_c.inPort, update1.outPort[1]) annotation (Line(
          points={{180,-70},{180,-61.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_off.inPort[1], alarm2.entry[1]) annotation (Line(
          points={{-109,44},{-108,44},{-108,55},{-98,55}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_off_d.inPort, alarm2_off.outPort[1]) annotation (Line(
          points={{-108,24},{-108,35.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_on.inPort[1], alarm2_off_d.outPort) annotation (Line(
          points={{-108,4},{-108,4},{-108,15}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_on_d.inPort, alarm2_on.outPort[1]) annotation (Line(
          points={{-108,-16},{-108,-4.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_on_d.outPort, alarm2_off.inPort[2]) annotation (Line(
          points={{-108,-25},{-108,-34},{-96.926,-34},{-88,-34},{-88,-23.516},
              {-88,-20.289},{-88,44},{-88,50},{-97.723,50},{-107,50},{-107,44}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(update2.entry[1], update2_hour.inPort[1]) annotation (Line(
          points={{-10,73},{-10,64},{-20,64},{-20,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_hour.outPort[1], update2_hour_c.inPort) annotation (
          Line(
          points={{-20,45.4},{-20,34}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_hour_c.outPort, update2_ten_min.inPort[1]) annotation (
          Line(
          points={{-20,25},{-20,14}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_min.outPort[1], update2.exit[1]) annotation (Line(
          points={{-20,-34.6},{-20,-44},{-14.8145,-44},{-10,-44},{-10,-53.875}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(update2_ten_min_c.outPort, update2_min.inPort[1]) annotation (
          Line(
          points={{-20,-15},{-20,-15},{-20,-26}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_ten_min.outPort[1], update2_ten_min_c.inPort)
        annotation (Line(
          points={{-20,5.4},{-20,5.4},{-20,-6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_d.outPort, update2.resume[1]) annotation (Line(
          points={{-48,9},{-48,9},{-48,-2},{-48,-29.375},{-40,-29.375}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2.suspend[1], update2_d.inPort) annotation (Line(
          points={{-41.5,55.5},{-48,55.5},{-48,48.4688},{-48,18}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2.suspend[2], update2_b.inPort) annotation (Line(
          points={{-41.5,43.25},{-58,43.25},{-58,32}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_b.outPort, alarm2.resume[1]) annotation (Line(
          points={{-58,23},{-58,23},{-58,4},{-58,-23.371},{-58,-48},{-82.756,
              -48},{-108.65,-48},{-136,-48},{-136,-31.604},{-136,-12.2917},{-128,
              -12.2917}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2.resume[2], update2_c.outPort) annotation (Line(
          points={{-128,-18.125},{-130,-18.125},{-130,-18},{-140,-18},{-140,-32.47},
              {-140,-57.724},{-140,-80},{-115.752,-80},{-26.627,-80},{-10,-80},
              {-10,-73}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(update2_c.inPort, update2.outPort[1]) annotation (Line(
          points={{-10,-64},{-10,-62},{-8,-61.75},{-10,-61.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1.suspend[1], alarm1_c.inPort) annotation (Line(
          points={{58.5,42.5},{50,42.5},{50,56}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_c.outPort, update1.inPort[1]) annotation (Line(
          points={{50,65},{50,65},{50,90},{78.6914,90},{163.181,90},{180,90},
              {180,80}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_a.inPort, alarm1.suspend[2]) annotation (Line(
          points={{42,-30},{42,15.9448},{42,33.75},{58.5,33.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_a.outPort, alarm2.resume[3]) annotation (Line(
          points={{42,-39},{42,-39},{42,-68},{42,-84},{30,-84},{-109.906,-84},
              {-146,-84},{-146,-54.265},{-146,-36.4429},{-146,-24},{-138,-24},
              {-138,-23.9583},{-128,-23.9583}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_a.inPort, alarm2.suspend[1]) annotation (Line(
          points={{-152,0},{-152,0},{-152,22},{-152,42.5},{-129.5,42.5}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_a.outPort, chime.resume[1]) annotation (Line(
          points={{-152,-9},{-152,-60},{-186,-60},{-224,-60},{-224,-23.209},{
              -224,-18},{-222,-18},{-220,-18.125}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm2_c.inPort, alarm2.suspend[2]) annotation (Line(
          points={{-138,56},{-138,56},{-138,46},{-138,33.75},{-129.5,33.75}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(alarm2_c.outPort, update2.inPort[1]) annotation (Line(
          points={{-138,65},{-138,88},{-109.531,88},{-24.123,88},{-10,88},{-10,
              80}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_on.outPort[1], alarm1_on_d.inPort) annotation (Line(
          points={{80,-4.6},{80,-4.6},{80,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(alarm1_off_d.outPort, alarm1_on.inPort[1]) annotation (Line(
          points={{80,15},{80,4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(entry[1], alarm1.resume[3]) annotation (Line(
          points={{0,100},{0,84},{13.6953,84},{36,84},{36,58.5685},{36,
              22.2439},{36,-23.9583},{60,-23.9583}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(chime.suspend[1], exit[1]) annotation (Line(
          points={{-221.5,38.125},{-230,38.125},{-230,26.9166},{-230,-56.6897},
              {-230,-88},{-200,-88},{-26.1719,-88},{0,-88},{0,-105}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(chime_off_d.conditionPort, chime_on_d.conditionPort)
        annotation (Line(
          points={{-205,20},{-212,20},{-212,10.4297},{-212,-9.98554},{-212,-20},
              {-205,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm2_off_d.conditionPort, alarm2_on_d.conditionPort)
        annotation (Line(
          points={{-113,20},{-116,20},{-120,20},{-120,13.5938},{-120,-13.0122},
              {-120,-20},{-113,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(alarm1_off_d.conditionPort, alarm1_on_d.conditionPort)
        annotation (Line(
          points={{75,20},{70,20},{70,14.4922},{70,-15.3516},{70,-20},{75,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(update2_ten_min_c.conditionPort, update2_hour_c.conditionPort)
        annotation (Line(
          points={{-25,-10},{-30,-10},{-30,-1.10243},{-30,22.6563},{-30,30},{
              -25,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1_hour_c.conditionPort, update1_ten_min_c.conditionPort)
        annotation (Line(
          points={{165,30},{160,30},{160,23.4766},{160,-3.10199},{160,-10},{
              165,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update2_ten_min_c.conditionPort, update2_c.conditionPort)
        annotation (Line(
          points={{-25,-10},{-30,-10},{-30,-15.3242},{-30,-52.1047},{-30,-68},
              {-15,-68}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(alarm1_c.conditionPort, alarm2_c.conditionPort) annotation (
          Line(
          points={{55,60},{60,60},{64,60},{64,65.4277},{64,82.209},{64,92},{
              54.9247,92},{-114.012,92},{-126,92},{-126,82.0313},{-126,70},{-126,
              60},{-133,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.u, signalBus.c) annotation (Line(
          points={{-180.8,92},{-208,92},{-220,86},{-220,80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge2.y, alarm2_c.conditionPort) annotation (Line(
          points={{-171.6,92},{-171.6,92},{-150.448,92},{-126,92},{-126,69.5},
              {-126,60},{-133,60}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge3.y, alarm1_a.conditionPort) annotation (Line(
          points={{34.4,-34},{34.4,-34},{37,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge4.u, signalBus.a) annotation (Line(
          points={{-168.8,80},{-220,80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge4.y, alarm2_a.conditionPort) annotation (Line(
          points={{-159.6,80},{-150,80},{-142,80},{-142,69.418},{-142,4.46028},
              {-142,-4},{-147,-4}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge5.u, signalBus.d) annotation (Line(
          points={{-212,50.8},{-212,68},{-220,68},{-220,80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge5.y, chime_off_d.conditionPort) annotation (Line(
          points={{-212,41.6},{-212,30.0195},{-212,20},{-205,20}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(edge6.u, alarm2_bus_node.d) annotation (Line(
          points={{-80,-15.2},{-80,0},{-78,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge6.y, alarm2_on_d.conditionPort) annotation (Line(
          points={{-80,-24.4},{-80,-36},{-89.1609,-36},{-111.223,-36},{-120,-36},
              {-120,-26.75},{-120,-20},{-113,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm2_off.activePort, alarm2_bus_node.alarm2_off) annotation (
          Line(
          points={{-103.28,40},{-82,40},{-82,20.4219},{-82,0},{-78,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm2_on.activePort, alarm2_bus_node.alarm2_on) annotation (
          Line(
          points={{-103.28,0},{-93.2769,0},{-80,0},{-78,0}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge6.y, update2_d.conditionPort) annotation (Line(
          points={{-80,-24.4},{-80,-36},{-70.4219,-36},{-62,-36},{-62,-26},{-62,
              3.0625},{-62,14},{-53,14}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge9.u, alarm2_bus_node.b) annotation (Line(
          points={{-74,13.2},{-74,4},{-76,0},{-78,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(update2_b.conditionPort, edge9.y) annotation (Line(
          points={{-63,28},{-68.1885,28},{-74,28},{-74,22.4}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(chime_off.activePort, chime_bus_node.chime_off) annotation (
          Line(
          points={{-195.28,40},{-170,40},{-170,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(chime_on.activePort, chime_bus_node.chime_on) annotation (Line(
          points={{-195.28,0},{-184,0},{-184,0},{-170,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(signalBus, chime_bus_node) annotation (Line(
          points={{-220,80},{-234,80},{-234,64.0078},{-234,-77.1162},{-234,-98},
              {-213.625,-98},{-190.577,-98},{-170,-98},{-170,-77.2324},{-170,
              0}},
          color={255,128,0},
          smooth=Smooth.Bezier));

      connect(alarm2_bus_node, chime_bus_node) annotation (Line(
          points={{-78,0},{-78,0},{-74,0},{-74,-6.93676},{-74,-76.6571},{-74,
              -98},{-93.2868,-98},{-148.527,-98},{-170,-98},{-170,-76.9453},{
              -170,0}},
          color={255,128,0},
          smooth=Smooth.Bezier));
      connect(update2_bus_node, alarm2_bus_node) annotation (Line(
          points={{8,-34},{8,-72},{8,-80},{16,-80},{24,-80},{24,-88},{24,-98},
              {3.94271,-98},{-54.0938,-98},{-74,-98},{-74,-77.2713},{-74,-9.1875},
              {-74,0},{-78,0}},
          color={255,128,0},
          smooth=Smooth.Bezier));
      connect(alarm1_on.activePort, alarm1_bus_node.alarm1_on) annotation (
          Line(
          points={{84.72,0},{96,0},{110,0},{110,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(alarm1_off.activePort, alarm1_bus_node.alarm1_off) annotation (
          Line(
          points={{84.72,40},{106,40},{106,15.0313},{106,6},{106,0},{110,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));

      connect(edge10.u, alarm1_bus_node.d) annotation (Line(
          points={{112,-9.2},{112,0},{110,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge10.y, alarm1_on_d.conditionPort) annotation (Line(
          points={{112,-18.4},{112,-36},{96.2971,-36},{82.2227,-36},{70,-36},
              {70,-24.6406},{70,-20},{75,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge10.y, update1_d.conditionPort) annotation (Line(
          points={{112,-18.4},{112,-27.4063},{112,-36},{119.438,-36},{126,-36},
              {126,-27.9844},{126,8.12054},{126,18},{137,18}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge7.u, alarm1_bus_node.b) annotation (Line(
          points={{114,7.2},{114,0},{110,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge7.y, update1_b.conditionPort) annotation (Line(
          points={{114,16.4},{114,26},{125,26}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update2_bus_node, alarm1_bus_node) annotation (Line(
          points={{8,-34},{8,-71.3301},{8,-80},{16,-80},{24,-80},{24,-88},{24,
              -98},{43.8594,-98},{84.6999,-98},{106,-98},{106,-77.232},{106,-8.0702},
              {106,0},{110,0}},
          color={255,128,0},
          smooth=Smooth.Bezier));
      connect(alarm1_bus_node, alarm1_bus_node1) annotation (Line(
          points={{110,0},{110,-2},{106,-2},{106,-6},{106,-78.6836},{106,-98},
              {125.277,-98},{180.298,-98},{200,-98},{200,-76.4082},{200,-34}},
          color={255,128,0},
          smooth=Smooth.Bezier));

      connect(update1_min.outPort[1], update1.exit[1]) annotation (Line(
          points={{170,-34.6},{170,-44},{175.322,-44},{180,-44},{180,-53.875}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(edge3.u, update2_bus_node.a) annotation (Line(
          points={{25.2,-34},{8,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge8.u, update2_bus_node.c) annotation (Line(
          points={{-15.2,-50},{0,-50},{0,-34},{8,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge8.y, update2_ten_min_c.conditionPort) annotation (Line(
          points={{-24.4,-50},{-30,-50},{-30,-44.0161},{-30,-14.375},{-30,-10},
              {-25,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update2_hour.activePort, quantity2.u[1]) annotation (Line(
          points={{-15.28,50},{-15.28,50},{-8.23785,50},{9,50},{9,34},{9.2,34}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(update2_ten_min.activePort, quantity2.u[2]) annotation (Line(
          points={{-15.28,10},{-12,10},{-12,14.5645},{-12,39.184},{-12,48},{-3.01563,
              48},{8,48},{8,34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update2_min.activePort, quantity2.u[3]) annotation (Line(
          points={{-15.28,-30},{-10,-30},{-10,-21.6616},{-10,34.1992},{-10,46},
              {-1.40313,46},{6.8,46},{6.8,34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm2_setting.u, quantity2.y) annotation (Line(
          points={{8,3.2},{8,4.75},{8,4.75},{8,6.3},{8,9.4},{8,9.4}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(alarm2_setting.trigger, update2_d.firePort) annotation (Line(
          points={{3.2,0.4},{-12,0.4},{-28.3828,0.4},{-36,0.4},{-36,7.39922},
              {-36,14},{-43.8,14}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge1.u, alarm1_bus_node1.c) annotation (Line(
          points={{172.8,-50},{178,-50},{200,-50},{200,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge1.y, update1_ten_min_c.conditionPort) annotation (Line(
          points={{163.6,-50},{160,-50},{160,-45.0195},{160,-16},{160,-10},{
              165,-10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1_c.conditionPort, edge1.y) annotation (Line(
          points={{175,-74},{160,-74},{160,-61.4001},{160,-56.4219},{160,-50},
              {163.6,-50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(alarm1_setting.u, quantity1.y) annotation (Line(
          points={{200,1.2},{200,7.4}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(quantity1.u[1], update1_hour.activePort) annotation (Line(
          points={{201.2,32},{201,32},{201,50},{181.829,50},{174.72,50}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1_ten_min.activePort, quantity1.u[2]) annotation (Line(
          points={{174.72,10},{182,10},{182,19.5371},{182,36.7983},{182,48},{
              191.053,48},{200,48},{200,32}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1_min.activePort, quantity1.u[3]) annotation (Line(
          points={{174.72,-30},{184,-30},{184,-19.8917},{184,36.3516},{184,46},
              {191.805,46},{198.8,46},{198.8,32}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1_d.firePort, alarm1_setting.trigger) annotation (Line(
          points={{146.2,18},{156,18},{156,9.09961},{156,-1.6},{195.2,-1.6}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(alarm1_setting.y, alarm1_bus_node1.T1) annotation (Line(
          points={{200,-8.8},{200,-8.8},{200,-34}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(alarm2_setting.y, update2_bus_node.T2) annotation (Line(
          points={{8,-6.8},{8,-6.8},{8,-34}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(alarm2.activePort, or1.u[1]) annotation (Line(
          points={{-66.75,10},{-64,10},{-64,18.3235},{-64,69.8145},{-64,90},{
              -41.5777,90},{8.75069,90},{30.1,90},{30.1,73.4063},{30.1,-6},{
              30.1,-6}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update2.activePort, or1.u[2]) annotation (Line(
          points={{21.25,10},{26,10},{26,3.34375},{26,-6},{25.9,-6}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or1.y, update2_bus_node.in_alarm2) annotation (Line(
          points={{28,-19.2},{28,-19.2},{28,-24},{18,-24},{8,-24},{8,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(or2.u[1], alarm1.activePort) annotation (Line(
          points={{224.1,-14},{224,-14},{224,74},{224,96},{204.01,96},{
              146.754,96},{124,96},{124,70.0633},{124,16.7188},{124,10},{
              121.25,10}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(update1.activePort, or2.u[2]) annotation (Line(
          points={{211.25,10},{220,10},{220,-2.11719},{220,-14},{219.9,-14}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(or2.y, alarm1_bus_node1.in_alarm1) annotation (Line(
          points={{222,-27.2},{222,-34},{211.215,-34},{200,-34}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(chime.activePort, chime_bus_node.in_chime) annotation (Line(
          points={{-158.75,10},{-148,10},{-148,20},{-170,20},{-170,0}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
                {-240,-100},{240,100}}), graphics), Icon(coordinateSystem(
              preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
            graphics={Bitmap(extent={{-190,190},{192,-192}}, fileName=
              "Images/StateGraph/Examples/Out_sm.png")}));
    end Out;

    model Stopwatch
      extends Modelica_StateGraph2.PartialParallel(nEntry=1, use_outPort=
            false);
      Parallel displayrun(
        nIn=1,
        nEntry=2,
        use_outPort=true,
        nExit=2,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-60,-72},{60,20}})));
      Modelica_StateGraph2.Step reg(
        nIn=2,
        use_activePort=true,
        nOut=2)
        annotation (Placement(transformation(extent={{-34,-4},{-26,4}})));
      Modelica_StateGraph2.Step lap(
        nIn=1,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-25,-44},{-33,-36}})));
      Modelica_StateGraph2.Step on(
        nIn=2,
        nOut=1,
        use_activePort=true)
        annotation (Placement(transformation(extent={{26,-4},{34,4}})));
      Modelica_StateGraph2.Step off(nIn=1, nOut=2)
        annotation (Placement(transformation(extent={{26,-44},{34,-36}})));
      Modelica_StateGraph2.Transition reg_d(use_conditionPort=true,
          delayedTransition=false)
        annotation (Placement(transformation(extent={{-33,-24},{-25,-16}})));
      Modelica_StateGraph2.Transition lap_d(
        use_conditionPort=true,
        delayedTransition=false,
        loopCheck=false)
        annotation (Placement(transformation(extent={{-14,-16},{-6,-24}})));
      Modelica_StateGraph2.Step zero(
        nOut=1,
        nIn=2,
        use_activePort=true)
        annotation (Placement(transformation(extent={{-4,46},{4,54}})));
      Modelica_StateGraph2.Transition zero_b(use_conditionPort=true,
          delayedTransition=false)
        annotation (Placement(transformation(extent={{-4,26},{4,34}})));
      Modelica_StateGraph2.Transition on_b(use_conditionPort=true,
          delayedTransition=false)
        annotation (Placement(transformation(extent={{26,-24},{34,-16}})));
      Modelica_StateGraph2.Transition off_b(
        use_conditionPort=true,
        delayedTransition=false,
        loopCheck=false)
        annotation (Placement(transformation(extent={{46,-16},{54,-24}})));
      Modelica_StateGraph2.Transition displayrun_d(
        use_conditionPort=true,
        delayedTransition=false,
        loopCheck=false)
        annotation (Placement(transformation(extent={{-4,-90},{4,-82}})));
      protected
      outer
        Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.SignalBus
        signalBus
        annotation (Placement(transformation(extent={{-100,60},{-60,100}})));
      public
      Modelica.Blocks.Logical.Edge edge1
        annotation (Placement(transformation(extent={{-32,26},{-24,34}})));
      Modelica.Blocks.Logical.Edge edge2
        annotation (Placement(transformation(extent={{-84,-24},{-76,-16}})));
      Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd stopwatch_clock(
          use_reset=true)
        annotation (Placement(transformation(extent={{44,78},{32,90}})));
      Modelica.Blocks.Sources.IntegerConstant unit_second(k=1)
        annotation (Placement(transformation(extent={{98,78},{86,90}})));
      Modelica.Blocks.Sources.SampleTrigger time_increment_trigger(period=
            0.01)
        annotation (Placement(transformation(extent={{98,56},{86,68}})));
      Modelica_StateGraph2.Blocks.MathBoolean.And increment_time(nu=2)
        annotation (Placement(transformation(extent={{66,54},{54,66}})));
      Blocks.MathInteger.MultiSwitch select_display_of_time_or_lap_time(nu=3,
          expr={stopwatch_clock.y,stopwatch_lap.y,0}) annotation (Placement(
            transformation(
            extent={{-29,-10},{29,10}},
            rotation=90,
            origin={-58,17})));
      Blocks.MathInteger.TriggeredAdd stopwatch_lap(use_reset=true, use_set=
            true)
        annotation (Placement(transformation(extent={{28,56},{16,68}})));
      Modelica_StateGraph2.Blocks.MathBoolean.And freeze_time(nu=2)
        annotation (Placement(transformation(extent={{50,32},{38,44}})));
    equation
      connect(reg.inPort[1], displayrun.entry[1]) annotation (Line(
          points={{-31,4},{-31,12},{-20,12},{-3,12},{-3,15.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(zero_b.inPort, zero.outPort[1]) annotation (Line(
          points={{0,34},{0,45.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(zero_b.outPort, displayrun.inPort[1]) annotation (Line(
          points={{0,25},{0,20}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(reg_d.outPort, lap.inPort[1]) annotation (Line(
          points={{-29,-25},{-29,-36}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(on.inPort[1], displayrun.entry[2]) annotation (Line(
          points={{29,4},{29,10},{19.7695,10},{12,10},{3,10},{3,15.4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(on_b.inPort, on.outPort[1]) annotation (Line(
          points={{30,-16},{30,-4.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(on_b.outPort, off.inPort[1]) annotation (Line(
          points={{30,-25},{30,-24},{30,-28},{30,-36}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(lap_d.inPort, lap.outPort[1]) annotation (Line(
          points={{-10,-24},{-10,-36.365},{-10,-50},{-20,-50},{-29,-50},{-29,
              -44.6}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(lap_d.outPort, reg.inPort[2]) annotation (Line(
          points={{-10,-15},{-10,-2.5},{-10,10},{-17.985,10},{-29,10},{-29,4}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(off_b.outPort, on.inPort[2]) annotation (Line(
          points={{50,-15},{50,-2.231},{50,10},{40.834,10},{31,10},{31,4}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(displayrun_d.inPort, displayrun.outPort[1]) annotation (Line(
          points={{0,-82},{0,-73.15}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(zero.inPort[1], entry[1]) annotation (Line(
          points={{-1,54},{-1,92},{0,92},{0,100}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(displayrun_d.outPort, zero.inPort[2]) annotation (Line(
          points={{0,-91},{0,-98},{11.9148,-98},{50.209,-98},{82,-98},{82,-67.8758},
              {82,64.3535},{82,92},{56.8948,92},{12.707,92},{1,92},{1,54}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(on_b.conditionPort, off_b.conditionPort) annotation (Line(
          points={{25,-20},{16,-20},{16,-26},{16,-32},{22,-32},{33.8828,-32},
              {40,-32},{40,-26.6191},{40,-20},{45,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(lap_d.conditionPort, reg_d.conditionPort) annotation (Line(
          points={{-15,-20},{-20,-20},{-20,-26},{-20,-32},{-26.9334,-32},{-35.8125,
              -32},{-42,-32},{-42,-26.6191},{-42,-20},{-34,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(displayrun_d.conditionPort, reg_d.conditionPort) annotation (
          Line(
          points={{-5,-86},{-24.5117,-86},{-42,-86},{-42,-66.7227},{-42,-26},
              {-42,-20},{-34,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge1.u, signalBus.b) annotation (Line(
          points={{-32.8,30},{-40,30},{-40,38.5449},{-40,59.9607},{-40,80},{-60,
              80},{-80,80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(edge1.y, zero_b.conditionPort) annotation (Line(
          points={{-23.6,30},{-5,30}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.y, reg_d.conditionPort) annotation (Line(
          points={{-75.6,-20},{-75.6,-20},{-34,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(edge2.u, signalBus.d) annotation (Line(
          points={{-84.8,-20},{-90,-20},{-90,-12.412},{-90,67.3047},{-90,80},
              {-80,80}},
          color={255,0,255},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(displayrun.activePort, signalBus.show_stopwatch) annotation (
          Line(
          points={{62.5,-26},{70,-26},{70,-36},{70,-69.0215},{70,-94},{
              45.7949,-94},{-64.8178,-94},{-92,-94},{-92,-66.1328},{-92,
              66.4428},{-92,80},{-80,80}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(unit_second.y, stopwatch_clock.u) annotation (Line(
          points={{85.4,84},{85.4,84},{45.8,84}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(time_increment_trigger.y, increment_time.u[1]) annotation (Line(
          points={{85.4,62},{80,62},{80,62.1},{66,62.1}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(on.activePort, increment_time.u[2]) annotation (Line(
          points={{34.72,0},{63.0676,0},{74,0},{74,9.4629},{74,34},{74,
              46.8836},{74,57.9},{66,57.9}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(increment_time.y, stopwatch_clock.trigger) annotation (Line(
          points={{52.8,60},{41.6,60},{41.6,76.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(zero.activePort, stopwatch_clock.reset) annotation (Line(
          points={{4.72,50},{10,50},{10,56.8906},{10,74},{27.3809,74},{32,74},
              {34.4,74},{34.4,76.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(freeze_time.u[1], on.activePort) annotation (Line(
          points={{50,40.1},{74,40.1},{74,11.1549},{74,0},{63.8348,0},{34.72,
              0}},
          color={255,0,255},
          smooth=Smooth.Bezier));

      connect(stopwatch_lap.trigger, freeze_time.y) annotation (Line(
          points={{25.6,54.8},{25.6,38},{36.8,38}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(stopwatch_lap.u, stopwatch_clock.u) annotation (Line(
          points={{29.8,62},{29.8,62},{52,62},{52,75.457},{52,84},{45.8,84}},
          color={255,127,0},
          smooth=Smooth.Bezier));

      connect(stopwatch_clock.y, stopwatch_lap.set) annotation (Line(
          points={{30.8,84},{20,84},{20,67.88},{20.32,67.88}},
          color={255,127,0},
          smooth=Smooth.Bezier));
      connect(reg.activePort, select_display_of_time_or_lap_time.u[1])
        annotation (Line(
          points={{-25.28,0},{-22,0},{-22,-4.3262},{-22,-10},{-32.1074,-10},{
              -60.704,-10},{-74.5,-10},{-74.5,2.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(lap.activePort, select_display_of_time_or_lap_time.u[2])
        annotation (Line(
          points={{-33.72,-40},{-49.6295,-40},{-72.5,-40},{-72.5,2.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(select_display_of_time_or_lap_time.y, signalBus.stopwatch_time)
        annotation (Line(
          points={{-72.5,61.95},{-72.5,78},{-80,78},{-80,80}},
          color={255,127,0},
          smooth=Smooth.Bezier), Text(
          string="%second",
          index=1,
          extent={{6,3},{6,3}}));
      connect(reg.outPort[1], displayrun.exit[1]) annotation (Line(
          points={{-31,-4.6},{-31,-8.8082},{-31,-16},{-38,-16},{-38,-23.3047},
              {-38,-44.2683},{-38,-60},{-22.6422,-60},{-12.8779,-60},{-3,-60},
              {-3,-67.975}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(off.outPort[1], displayrun.exit[2]) annotation (Line(
          points={{29,-44.6},{28,-44.6},{28,-60},{10.959,-60},{3,-60},{3,-67.975}},
          color={0,0,0},
          smooth=Smooth.Bezier));

      connect(off.outPort[2], off_b.inPort) annotation (Line(
          points={{31,-44.6},{31,-44.6},{31,-45},{31,-50},{38.3291,-50},{50,-50},
              {50,-36.2129},{50,-24}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(reg.outPort[2], reg_d.inPort) annotation (Line(
          points={{-29,-4.6},{-29,-16}},
          color={0,0,0},
          smooth=Smooth.Bezier));
      connect(zero_b.conditionPort, on_b.conditionPort) annotation (Line(
          points={{-5,30},{-14,30},{-14,20},{-14,1.19141},{-14,-10},{-2,-10},
              {4.04688,-10},{16,-10},{16,-20},{25,-20}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(reg.activePort, freeze_time.u[2]) annotation (Line(
          points={{-25.28,0},{7.10812,0},{24,0},{24,11.8828},{24,24},{37.6133,
              24},{44.0439,24},{58,24},{58,36},{50,36},{50,35.9}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(lap.activePort, stopwatch_lap.reset) annotation (Line(
          points={{-33.72,-40},{-40,-40},{-40,-46.4258},{-40,-54},{-31.4453,-54},
              {3.5535,-54},{18.4,-54},{18.4,-39.7625},{18.4,54.8}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      connect(zero.activePort, select_display_of_time_or_lap_time.u[3])
        annotation (Line(
          points={{4.72,50},{10,50},{10,43.1094},{10,2},{10,-8},{0.498854,-8},
              {-59.4941,-8},{-70.5,-8},{-70.5,2.5}},
          color={255,0,255},
          smooth=Smooth.Bezier));
      annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={
                {-100,-100},{100,100}}), graphics), Icon(coordinateSystem(
              preserveAspectRatio=true, extent={{-200,-200},{200,200}}),
            graphics={Bitmap(extent={{-180,180},{180,-180}}, fileName=
              "Images/StateGraph/Examples/stopwatch_sm.png")}));
    end Stopwatch;

    package Utilities
      expandable connector SignalBus
        extends Modelica.Icons.SignalBus;
        Boolean a;
        Boolean b;
        Boolean c;
        Boolean d;
      end SignalBus;

      model WatchDisplay
        parameter Integer precision(min=0) = 0;

        Modelica.Blocks.Interfaces.IntegerInput large_digit1 annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-500,-240})));
        Modelica.Blocks.Interfaces.IntegerInput small_digit annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=180,
              origin={640,-100})));
        Modelica.Blocks.Interfaces.IntegerInput text_digit
          "1 = Mo, 2 = Tu, 3 = We, 4 = Th, 5 = Fr, 6 = Sa, 7 = Su, 8 = AM, 9 = PM, 10 = Ch, 11 = SW"
          annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=180,
              origin={640,140})));
        Modelica.Blocks.Interfaces.IntegerInput illumination
          " 0 = dark {0,95,191}, 1 = standard {127,191,255}, 2 = bright {159,223,223}"
          annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={-100,240})));

        Integer dispColour[3]=if mod(illumination, 3) == 1 then {127,191,255}
             else if mod(illumination, 3) == 2 then {159,223,223} else {0,95,
            191};
        Modelica.Blocks.Interfaces.IntegerInput large_digit2 annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-300,-240})));
        Modelica.Blocks.Interfaces.IntegerInput large_digit3 annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={120,-240})));
        Modelica.Blocks.Interfaces.IntegerInput large_digit4 annotation (
            Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={300,-240})));
      equation

        annotation (
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-620,-220},
                  {620,220}}), graphics),
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-620,-220},
                  {620,220}}), graphics={Rectangle(
                          extent={{-620,220},{620,-220}},
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillColor={0,0,0},
                          fillPattern=FillPattern.Solid),Rectangle(
                          extent={{-600,200},{-400,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Rectangle(
                          extent={{-200,200},{0,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{-580,-180},{-400,180}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=DynamicSelect("0", realString(
                            mod(large_digit1, 10),
                            1,
                            integer(precision)))),Text(
                          extent={{-198,200},{2,-200}},
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillColor={127,191,255},
                          fillPattern=FillPattern.Solid,
                          textString=":"),Rectangle(
                          extent={{-400,200},{-200,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{-380,-180},{-200,180}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=DynamicSelect("0", realString(
                            mod(large_digit2, 10),
                            1,
                            integer(precision)))),Rectangle(
                          extent={{0,200},{200,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{20,-180},{200,180}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=DynamicSelect("0", realString(
                            mod(large_digit3, 10),
                            1,
                            integer(precision)))),Rectangle(
                          extent={{200,200},{400,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{220,-180},{400,180}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=DynamicSelect("0", realString(
                            mod(large_digit4, 10),
                            1,
                            integer(precision)))),Rectangle(
                          extent={{600,0},{400,-200}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{410,-190},{590,-10}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=DynamicSelect("0", if small_digit > 0
                   then realString(
                            small_digit,
                            1,
                            integer(precision)) else "")),Rectangle(
                          extent={{600,200},{400,0}},
                          fillColor=DynamicSelect({127,191,255}, dispColour),
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillPattern=FillPattern.Solid),Text(
                          extent={{404,10},{584,190}},
                          lineColor={0,0,255},
                          fillColor={127,255,255},
                          fillPattern=FillPattern.Solid,
                          textString=if text_digit == 1 then "Mo" else if
                  text_digit == 2 then "Tu" else if text_digit == 3 then "We"
                   else if text_digit == 4 then "Th" else if text_digit == 5
                   then "Fr" else if text_digit == 6 then "Sa" else if
                  text_digit == 7 then "Su" else if text_digit == 8 then "AM"
                   else if text_digit == 9 then "PM" else if text_digit == 10
                   then "Ch" else if text_digit == 11 then "SW" else " ")}),
          Documentation(info="<html>
<p>Displays four large digits, one small digit and one two letter text according to signals provided through the IntegerInputs. The top IntegerInput defines the level of illumination of the display.</p>
<p><img src=\"modelica://Modelica_StateGraph2/Resources/Images/StateGraph/Examples/WatchDisplay.png\"/></p>
<p>Signal inputs are:</p>
<p><ul>
<li>Large digits, input at the bottom. Range: 0-9</li>
<li>Small digit, input at the right bottom. Range: 0-99</li>
<li>Textual Input, input at top right.  Range: 0-11. Signals are decoded as: 0 = &QUOT;&QUOT;, 1 = &QUOT;Mo&QUOT;, 2 = &QUOT;Tu&QUOT;, 3 = &QUOT;We&QUOT;, 4 = &QUOT;Th&QUOT;, 5 = &QUOT;Fr&QUOT;, 6 = &QUOT;Sa&QUOT;, 7 = &QUOT;Su&QUOT;, 8 = &QUOT;AM&QUOT;, 9 =&QUOT; PM&QUOT;, 10=&QUOT;Ch&QUOT;, 11 = &QUOT;SW&QUOT;.</li>
<li>Illumination level at the top. Range 0-2. Signals are decoded as: 0 - dark, 1 - normal, 2 - bright.</li>
</ul></p>
</html>"));
      end WatchDisplay;

      model Time

        SignalBus signalBus annotation (Placement(transformation(extent={{-98,
                  -14},{-58,26}}), iconTransformation(extent={{-26,-124},{14,
                  -84}})));
        Modelica_StateGraph2.Blocks.MathInteger.TriggeredAdd clock(use_reset=
              true, use_set=true)
          annotation (Placement(transformation(extent={{-40,74},{-28,86}})));
        Modelica.Blocks.Sources.IntegerConstant time_scale(k=1)
          annotation (Placement(transformation(extent={{-94,70},{-74,90}})));
        Modelica.Blocks.Sources.SampleTrigger time_update_frequency(period=1)
          annotation (Placement(transformation(extent={{-100,40},{-80,60}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch time_to_display(
          nu=4,
          use_pre_as_default=false,
          expr={clock_time,update_time,alarm1_time,alarm2_time})
          annotation (Placement(transformation(extent={{52,-10},{92,10}})));
        protected
        Modelica.Blocks.Interfaces.IntegerOutput update_time
          annotation (Placement(transformation(extent={{2,-4},{22,16}})));
        Modelica.Blocks.Interfaces.IntegerOutput alarm1_time
          annotation (Placement(transformation(extent={{2,-24},{22,-4}})));
        Modelica.Blocks.Interfaces.IntegerOutput alarm2_time
          annotation (Placement(transformation(extent={{2,-44},{22,-24}})));
        Modelica.Blocks.Interfaces.IntegerOutput clock_time
          annotation (Placement(transformation(extent={{2,16},{22,36}})));
        protected
        SignalBus bus_node annotation (Placement(transformation(extent={{6,-74},
                  {26,-54}}), iconTransformation(extent={{-26,-124},{14,-84}})));
        public
        Modelica.Blocks.Interfaces.IntegerOutput y
          annotation (Placement(transformation(extent={{100,-10},{120,10}})));
        Modelica_StateGraph2.Blocks.MathBoolean.And and1(nu=2) annotation (
            Placement(transformation(
              extent={{-6,-6},{6,6}},
              rotation=90,
              origin={-32,42})));
        Modelica.Blocks.Logical.Pre pre1
          annotation (Placement(transformation(extent={{-56,24},{-44,36}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or or1(nu=2) annotation (
            Placement(transformation(
              extent={{-6,-6},{6,6}},
              rotation=90,
              origin={-30,60})));
        public
        Modelica.Blocks.Sources.BooleanExpression T_hits_T1(y=abs(mod(
              clock_time, 3600*24) - alarm1_time) == 0) annotation (Placement(
              transformation(extent={{-100,-80},{-20,-60}})));
        public
        Modelica.Blocks.Sources.BooleanExpression T_hits_T2(y=abs(mod(
              clock_time, 3600*24) - alarm2_time) == 0) annotation (Placement(
              transformation(extent={{-100,-100},{-20,-80}})));
        public
        Modelica.Blocks.Sources.BooleanExpression T_IS_WHOLE_HOUR(y=mod(
              clock_time, 3600) == 0) annotation (Placement(transformation(
              extent={{22,-11},{-28,9}},
              rotation=0,
              origin={68,-79})));
      equation

        connect(clock.u, time_scale.y) annotation (Line(
            points={{-41.8,80},{-41.8,80},{-73,80}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(time_update_frequency.y, clock.trigger) annotation (Line(
            points={{-79,50},{-79,50},{-37.6,50},{-37.6,72.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(update_time, signalBus.update_time) annotation (Line(
            points={{12,6},{12,6},{-15.389,6},{-78,6}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(clock_time, clock.y) annotation (Line(
            points={{12,26},{-12,26},{-12,47.1465},{-12,71.8508},{-12,80},{-26.8,
                80}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(alarm1_time, signalBus.T1) annotation (Line(
            points={{12,-14},{-10,-14},{-78,-14},{-78,6}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(alarm2_time, signalBus.T2) annotation (Line(
            points={{12,-34},{12,-34},{-4,-34},{-78,-34},{-78,6}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(time_to_display.u[1], bus_node.time_active) annotation (Line(
            points={{52,2.25},{52,2},{36,2},{36,-15.8535},{36,-43.7352},{36,-64},
                {16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_to_display.u[2], bus_node.show_time) annotation (Line(
            points={{52,0.75},{41,0.75},{41,-13.7302},{41,-43.7252},{41,-64},
                {16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_to_display.u[3], bus_node.in_alarm1) annotation (Line(
            points={{52,-0.75},{44,-1},{44,-19.9492},{44,-40.641},{44,-64},{
                16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_to_display.u[4], bus_node.in_alarm2) annotation (Line(
            points={{52,-2.25},{52,-2},{50,-2},{50,-13.0127},{50,-39.6663},{
                50,-65},{16,-65},{16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(bus_node, signalBus) annotation (Line(
            points={{16,-64},{16,-50},{-1.53198,-50},{-59.75,-50},{-80,-50},{
                -80,-27.1406},{-80,6},{-78,6}},
            color={255,255,0},
            smooth=Smooth.Bezier));
        connect(time_to_display.y, y) annotation (Line(
            points={{93,0},{110,0}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(update_time, clock.set) annotation (Line(
            points={{12,6},{36,6},{36,28.1165},{36,75.2578},{36,96},{14.2875,
                96},{-19.3578,96},{-32.32,96},{-32.32,85.88}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(pre1.u, signalBus.update_active) annotation (Line(
            points={{-57.2,30},{-78,30},{-78,6},{-78,6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(pre1.y, and1.u[1]) annotation (Line(
            points={{-43.4,30},{-34.1,30},{-34.1,36}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.u[2], signalBus.time_active) annotation (Line(
            points={{-29.9,36},{-30,36},{-30,10},{-78,10},{-78,6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or1.y, clock.reset) annotation (Line(
            points={{-30,67.2},{-30,72.8},{-30.4,72.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, or1.u[1]) annotation (Line(
            points={{-32,49.2},{-32,54},{-32.1,54}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or1.u[2], signalBus.dead_active) annotation (Line(
            points={{-27.9,54},{-27.9,50},{-20,50},{-20,41.3047},{-20,8},{-72,
                8},{-72,6},{-78,6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(clock_time, bus_node.main_time) annotation (Line(
            points={{12,26},{30,26},{30,12.5527},{30,-47.53},{30,-60},{20,-60},
                {20,-64},{16,-64}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(T_hits_T1.y, bus_node.T_hits_T1) annotation (Line(
            points={{-16,-70},{-16,-70},{7.5,-70},{16,-70},{16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(T_hits_T2.y, bus_node.T_hits_T2) annotation (Line(
            points={{-16,-90},{-4.01367,-90},{18,-90},{18,-64},{16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(T_IS_WHOLE_HOUR.y, bus_node.T_is_whole_hour) annotation (Line(
            points={{37.5,-80},{24,-80},{24,-64},{16,-64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (
          Icon(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              initialScale=0.1), graphics={Rectangle(
                          extent={{100,100},{-100,-100}},
                          lineColor={0,0,255},
                          pattern=LinePattern.None,
                          fillColor={127,191,255},
                          fillPattern=FillPattern.Solid),Ellipse(
                          extent={{-98,80},{62,-80}},
                          lineColor={0,0,0},
                          fillColor={135,135,135},
                          fillPattern=FillPattern.Solid),Ellipse(
                          extent={{-94,76},{66,-84}},
                          lineColor={0,0,0},
                          fillColor={255,255,255},
                          fillPattern=FillPattern.Solid),Line(points={{-14,-4},
                {16,58}}, color={0,0,0}),Line(points={{-14,-4},{20,-28}},
                color={0,0,0})}),
          Diagram(coordinateSystem(
              preserveAspectRatio=true,
              extent={{-100,-100},{100,100}},
              initialScale=0.1), graphics),
          Documentation(info="<html>
<p>Outputs a time integer signal depending on what mode the watch is currently in. As all four time signals, current time, time setting, alarm1 setting and alarm2 setting should be decoded in the exact same fashion, the output of Time is handled the same in DisplayDecoder. This model also contains the actual clock that makes one tick every second. when a user sets a new time, the discrete state in TriggeredAdd will be reset and the output will re-set to that value and continue ticking.</p>
</html>"));
      end Time;

      block DisplayDecoder

        Modelica.Blocks.Interfaces.IntegerInput time_signal
          "Raw input signal" annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-100,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-150,-180})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit_1 annotation (
            Placement(transformation(extent={{100,70},{120,90}}),
              iconTransformation(extent={{160,110},{180,130}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit_2 annotation (
            Placement(transformation(extent={{100,40},{120,60}}),
              iconTransformation(extent={{160,70},{180,90}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit_3 annotation (
            Placement(transformation(extent={{100,10},{120,30}}),
              iconTransformation(extent={{160,30},{180,50}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit_4 annotation (
            Placement(transformation(extent={{100,-20},{120,0}}),
              iconTransformation(extent={{160,-10},{180,10}})));
        Modelica.Blocks.Interfaces.IntegerOutput small_digit annotation (
            Placement(transformation(extent={{100,-50},{120,-30}}),
              iconTransformation(extent={{160,-50},{180,-30}})));
        Modelica.Blocks.Interfaces.IntegerOutput text_digit annotation (
            Placement(transformation(extent={{100,-80},{120,-60}}),
              iconTransformation(extent={{160,-90},{180,-70}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch digit1_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={div(mod(div(time_signal, 3600), 12), 10),div(mod(div(
              time_signal, 3600), 24), 10),div(mod(div(date_signal, 100), 12),
              10),div(mod(year_signal, 10000), 1000),div(mod(div(div(
              stopwatch_signal, 100), 60), 60), 10)})
          annotation (Placement(transformation(extent={{50,70},{90,90}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch digit2_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={mod(mod(div(time_signal, 3600), 12), 10),mod(mod(div(
              time_signal, 3600), 24), 10),mod(mod(div(date_signal, 100), 12),
              10),div(mod(year_signal, 1000), 100),mod(mod(div(div(
              stopwatch_signal, 100), 60), 60), 10)})
          annotation (Placement(transformation(extent={{50,40},{90,60}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch digit3_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={div(mod(div(time_signal, 60), 60), 10),div(mod(div(
              time_signal, 60), 60), 10),div(mod(mod(date_signal, 100), 30),
              10),div(mod(year_signal, 100), 10),div(mod(div(stopwatch_signal,
              100), 60), 10)})
          annotation (Placement(transformation(extent={{50,10},{90,30}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch digit4_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={mod(mod(div(time_signal, 60), 10), 10),mod(mod(div(
              time_signal, 60), 10), 10),mod(mod(mod(date_signal, 100), 30),
              10),mod(year_signal, 10),mod(mod(div(stopwatch_signal, 100), 60),
              10)})
          annotation (Placement(transformation(extent={{50,-20},{90,0}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch
          text_digit_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={if mod(div(time_signal, 3600), 24) < 12 then 8 else 9,-1,
              day_signal,-1,11})
          annotation (Placement(transformation(extent={{50,-80},{90,-60}})));
        Modelica_StateGraph2.Blocks.MathInteger.MultiSwitch
          small_digit_decoder(
          use_pre_as_default=false,
          nu=5,
          expr={12,24,-1,-1,mod(stopwatch_signal, 100)})
          annotation (Placement(transformation(extent={{50,-50},{90,-30}})));
        Modelica.Blocks.Interfaces.BooleanInput time_mode "Raw input signal"
          annotation (Placement(transformation(extent={{-140,60},{-100,100}}),
              iconTransformation(extent={{-200,120},{-160,160}})));
        Modelica.Blocks.Interfaces.BooleanInput date_mode "Raw input signal"
          annotation (Placement(transformation(extent={{-140,0},{-100,40}}),
              iconTransformation(extent={{-200,60},{-160,100}})));
        Modelica.Blocks.Interfaces.BooleanInput year_mode "Raw input signal"
          annotation (Placement(transformation(extent={{-140,-40},{-100,0}}),
              iconTransformation(extent={{-200,0},{-160,40}})));
        Modelica.Blocks.Interfaces.BooleanInput stopwatch_mode
          "Raw input signal" annotation (Placement(transformation(extent={{-140,
                  -80},{-100,-40}}), iconTransformation(extent={{-200,-60},{-160,
                  -20}})));
        Modelica.Blocks.Logical.And and1
          annotation (Placement(transformation(extent={{0,78},{20,98}})));
        Modelica.Blocks.Logical.And and2
          annotation (Placement(transformation(extent={{-20,50},{0,70}})));
        Modelica.Blocks.Logical.Not not1
          annotation (Placement(transformation(extent={{-56,54},{-36,74}})));
        Modelica.Blocks.Interfaces.IntegerInput day_signal "Raw input signal"
          annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={100,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={150,-180})));
        Modelica.Blocks.Interfaces.IntegerInput date_signal
          "Raw input signal" annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-20,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-30,-180})));
        Modelica.Blocks.Interfaces.IntegerInput year_signal
          "Raw input signal" annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={20,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={30,-180})));
        Modelica.Blocks.Interfaces.IntegerInput stopwatch_signal
          "Raw input signal" annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={60,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={90,-180})));
        Modelica.Blocks.Interfaces.IntegerInput mode_signal
          "Raw input signal" annotation (Placement(transformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-60,-120}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=90,
              origin={-90,-180})));
        Modelica.Blocks.Sources.BooleanExpression booleanExpression(y=mod(
              mode_signal, 2) < 0.5)
          annotation (Placement(transformation(extent={{-100,78},{-40,98}})));
      equation
        connect(large_digit_1, digit1_decoder.y) annotation (Line(
            points={{110,80},{91,80}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(digit2_decoder.y, large_digit_2) annotation (Line(
            points={{91,50},{110,50}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(digit3_decoder.y, large_digit_3) annotation (Line(
            points={{91,20},{91,20},{110,20}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(digit4_decoder.y, large_digit_4) annotation (Line(
            points={{91,-10},{91,-10},{110,-10}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(small_digit_decoder.y, small_digit) annotation (Line(
            points={{91,-40},{110,-40}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(text_digit_decoder.y, text_digit) annotation (Line(
            points={{91,-70},{110,-70}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(and1.u2, time_mode) annotation (Line(
            points={{-2,80},{-2,80},{-62,80},{-120,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not1.y, and2.u1) annotation (Line(
            points={{-35,64},{-30,64},{-30,60},{-22,60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, digit1_decoder.u[1]) annotation (Line(
            points={{21,88},{40,88},{40,82.4},{50,82.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, digit2_decoder.u[1]) annotation (Line(
            points={{21,88},{21,88},{40,88},{40,52.4},{50,52.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, digit3_decoder.u[1]) annotation (Line(
            points={{21,88},{40,88},{40,22.4},{50,22.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, digit4_decoder.u[1]) annotation (Line(
            points={{21,88},{40,88},{40,-7.6},{50,-7.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, small_digit_decoder.u[1]) annotation (Line(
            points={{21,88},{40,88},{40,-37.6},{50,-37.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, text_digit_decoder.u[1]) annotation (Line(
            points={{21,88},{40,88},{40,-67.6},{50,-67.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, digit1_decoder.u[2]) annotation (Line(
            points={{1,60},{30,60},{30,81.2},{50,81.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, digit2_decoder.u[2]) annotation (Line(
            points={{1,60},{30,60},{30,51.2},{50,51.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, digit3_decoder.u[2]) annotation (Line(
            points={{1,60},{1,58},{30,58},{30,21.2},{50,21.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, digit4_decoder.u[2]) annotation (Line(
            points={{1,60},{1,58},{30,58},{30,-8.8},{50,-8.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, small_digit_decoder.u[2]) annotation (Line(
            points={{1,60},{30,60},{30,-38.8},{50,-38.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, text_digit_decoder.u[2]) annotation (Line(
            points={{1,60},{30,60},{30,-68.8},{50,-68.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_mode, and2.u2) annotation (Line(
            points={{-120,80},{-84,80},{-84,52},{-22,52}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, digit1_decoder.u[3]) annotation (Line(
            points={{-120,20},{20,20},{20,80},{50,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, digit2_decoder.u[3]) annotation (Line(
            points={{-120,20},{20,20},{20,50},{50,50}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, digit3_decoder.u[3]) annotation (Line(
            points={{-120,20},{22,20},{50,20}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, digit4_decoder.u[3]) annotation (Line(
            points={{-120,20},{20,20},{20,-10},{50,-10}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, small_digit_decoder.u[3]) annotation (Line(
            points={{-120,20},{-120,20},{20,20},{20,-40},{50,-40}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode, text_digit_decoder.u[3]) annotation (Line(
            points={{-120,20},{-120,20},{20,20},{20,-70},{50,-70}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, digit1_decoder.u[4]) annotation (Line(
            points={{-120,-20},{12,-20},{12,78.8},{50,78.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, digit2_decoder.u[4]) annotation (Line(
            points={{-120,-20},{12,-20},{12,48.8},{50,48.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, digit3_decoder.u[4]) annotation (Line(
            points={{-120,-20},{12,-20},{12,18.8},{50,18.8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, digit4_decoder.u[4]) annotation (Line(
            points={{-120,-20},{12,-20},{12,-11},{50,-11},{50,-11.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, small_digit_decoder.u[4]) annotation (Line(
            points={{-120,-20},{10,-20},{10,-41.2},{50,-41.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(year_mode, text_digit_decoder.u[4]) annotation (Line(
            points={{-120,-20},{12,-20},{12,-71.2},{50,-71.2}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, digit1_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,77.6},{50,77.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, digit2_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,47.6},{50,47.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, digit3_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,17.6},{50,17.6}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, digit4_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,-12.4},{50,-12.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, small_digit_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,-42.4},{50,-42.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(stopwatch_mode, text_digit_decoder.u[5]) annotation (Line(
            points={{-120,-60},{0,-60},{0,-72.4},{50,-72.4}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(booleanExpression.y, and1.u1) annotation (Line(
            points={{-37,88},{-2,88}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not1.u, booleanExpression.y) annotation (Line(
            points={{-58,64},{-64.4063,64},{-74,64},{-74,71.1504},{-74,78},{-63.9765,
                78},{-39.3242,78},{-30,78},{-30,83.2539},{-30,88},{-37,88}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-160,-160},
                  {160,160}}), graphics={Rectangle(
                          extent={{-160,160},{160,-160}},
                          lineColor={95,95,95},
                          fillColor={175,175,175},
                          fillPattern=FillPattern.Solid),Text(
                          extent={{-4,110},{-4,32}},
                          lineColor={95,95,95},
                          textString="Display"),Text(
                          extent={{-2,6},{-2,-72}},
                          lineColor={95,95,95},
                          textString="Decoder")}),
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics),
          Documentation(info="<html>
<p>Decodes a number of integer signals (input at the bottom) into six digits to be displayed on a LED display according to definition in the WatchDisplay. Depending on the selected mode, the signals are masked in order to show the chosen entity correctly.</p>
</html>"));
      end DisplayDecoder;

      block AlarmTrigger

        Modelica.Blocks.Interfaces.BooleanInput alarm1_enabled annotation (
            Placement(transformation(extent={{-140,60},{-100,100}}),
              iconTransformation(extent={{-180,110},{-140,150}})));
        Modelica.Blocks.Interfaces.BooleanInput alarm2_enabled annotation (
            Placement(transformation(extent={{-140,10},{-100,50}}),
              iconTransformation(extent={{-180,10},{-140,50}})));
        Modelica.Blocks.Interfaces.IntegerInput T1 annotation (Placement(
              transformation(extent={{-140,-50},{-100,-10}}),
              iconTransformation(extent={{-180,-100},{-140,-60}})));
        Modelica.Blocks.Interfaces.IntegerInput T2 annotation (Placement(
              transformation(extent={{-140,-100},{-100,-60}}),
              iconTransformation(extent={{-180,-150},{-140,-110}})));
        Modelica.Blocks.Interfaces.BooleanOutput P1 annotation (Placement(
              transformation(extent={{100,70},{120,90}}), iconTransformation(
                extent={{140,90},{160,110}})));
        Modelica.Blocks.Interfaces.BooleanOutput P2 annotation (Placement(
              transformation(extent={{100,30},{120,50}}), iconTransformation(
                extent={{140,30},{160,50}})));
        Modelica.Blocks.Interfaces.BooleanOutput P annotation (Placement(
              transformation(extent={{100,-10},{120,10}}), iconTransformation(
                extent={{140,-28},{160,-8}})));
        Modelica.Blocks.Interfaces.BooleanOutput alarms_beep annotation (
            Placement(transformation(extent={{100,-70},{120,-50}}),
              iconTransformation(extent={{140,-108},{160,-88}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or or1(nu=2)
          annotation (Placement(transformation(extent={{-20,50},{0,70}})));
        Modelica_StateGraph2.Blocks.MathBoolean.And and1(nu=3)
          annotation (Placement(transformation(extent={{24,70},{44,90}})));
        Modelica_StateGraph2.Blocks.MathBoolean.And and3(nu=4)
          annotation (Placement(transformation(extent={{60,-10},{80,10}})));
        Modelica_StateGraph2.Blocks.MathInteger.Sum sum(k={1,-1}, nu=2)
          annotation (Placement(transformation(extent={{-84,-70},{-64,-50}})));
        Modelica.Blocks.Math.IntegerToBoolean integerToBoolean annotation (
            Placement(transformation(extent={{-54,-70},{-34,-50}})));
        Modelica.Blocks.Logical.Not not1
          annotation (Placement(transformation(extent={{-54,54},{-34,74}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or or2(nu=1)
          annotation (Placement(transformation(extent={{10,10},{30,30}})));
        Modelica_StateGraph2.Blocks.MathBoolean.And and2(nu=3)
          annotation (Placement(transformation(extent={{46,30},{66,50}})));
        Modelica.Blocks.Logical.Not not2
          annotation (Placement(transformation(extent={{-18,10},{2,30}})));
        Modelica.Blocks.Logical.Not not3
          annotation (Placement(transformation(extent={{2,-70},{22,-50}})));
        Modelica_StateGraph2.Blocks.MathBoolean.Or or3(nu=3)
          annotation (Placement(transformation(extent={{66,-70},{86,-50}})));
        Modelica.Blocks.Interfaces.BooleanInput T_hits_T1 annotation (
            Placement(transformation(extent={{-140,34},{-100,74}}),
              iconTransformation(extent={{-180,60},{-140,100}})));
        Modelica.Blocks.Interfaces.BooleanInput T_hits_T2 annotation (
            Placement(transformation(extent={{-140,-20},{-100,20}}),
              iconTransformation(extent={{-180,-40},{-140,0}})));
      equation
        connect(integerToBoolean.u, sum.y) annotation (Line(
            points={{-56,-60},{-56,-60},{-62.3,-60}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(alarm2_enabled, not1.u) annotation (Line(
            points={{-120,30},{-80,30},{-80,48.627},{-80,64},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not1.y, or1.u[1]) annotation (Line(
            points={{-33,64},{-33,64},{-20,64},{-20,63.5}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and1.y, P1) annotation (Line(
            points={{46,80},{110,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(and2.y, P2) annotation (Line(
            points={{68,40},{110,40}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(alarm2_enabled, and2.u[1]) annotation (Line(
            points={{-120,30},{-42.0547,30},{-32,30},{-32,36.1304},{-32,43.5},
                {-25.6016,43.5},{46,43.5},{46,44.6667}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not2.u, alarm1_enabled) annotation (Line(
            points={{-20,20},{-20,20},{-40.8301,20},{-70,20},{-70,50},{-70,80},
                {-94,80},{-120,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not2.y, or2.u[1]) annotation (Line(
            points={{3,20},{3,20},{10,20}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not3.u, integerToBoolean.y) annotation (Line(
            points={{0,-60},{-14,-60},{-33,-60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(alarm1_enabled, and1.u[1]) annotation (Line(
            points={{-120,80},{-120,80},{-76.1523,80},{-70,80},{-70,84},{-64.4102,
                84},{24,84},{24,84.6667}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or1.y, and1.u[2]) annotation (Line(
            points={{2,60},{14,60},{14,69.3135},{14,80},{24,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(integerToBoolean.y, or1.u[2]) annotation (Line(
            points={{-33,-60},{-24,-60},{-24,-48.0781},{-24,-4},{-24,8.0518},
                {-24,47.4633},{-24,56.5},{-20,56.5}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(alarm1_enabled, and3.u[1]) annotation (Line(
            points={{-120,80},{-102,80},{-92.7813,80},{-70,80},{-70,53.6628},
                {-70,25.5762},{-70,4.66667},{-48.1641,4.66667},{60,4.66667},{
                60,5.25}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(alarm2_enabled, and3.u[2]) annotation (Line(
            points={{-120,30},{-102,30},{-80,30},{-80,16.1133},{-80,
                2.22045e-016},{-64.2773,2.22045e-016},{60,2.22045e-016},{60,
                1.75}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(not3.y, and3.u[3]) annotation (Line(
            points={{23,-60},{38,-60},{38,-41.9626},{38,-22.2285},{38,-1.75},
                {60,-1.75}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(or3.y, alarms_beep) annotation (Line(
            points={{88,-60},{110,-60}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or3.u[1], and1.y) annotation (Line(
            points={{66,-55.3333},{62,-55.3333},{62,-48},{62,-38},{76.9414,-38},
                {96,-38},{96,-18.6406},{96,59.0967},{96,80},{76,80},{46,80}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(or3.u[2], and2.y) annotation (Line(
            points={{66,-60},{60,-60},{60,-48.0703},{60,-36},{76,-36},{94,-36},
                {94,-15.612},{94,23.8203},{94,40},{68,40}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(or3.u[3], and3.y) annotation (Line(
            points={{66,-64.6667},{58,-64.6667},{58,-48.9076},{58,-34},{78,-34},
                {92,-34},{92,-8.34375},{92,0},{82,0}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(P, and3.y) annotation (Line(
            points={{110,0},{96,0},{82,0}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(T1, sum.u[1]) annotation (Line(
            points={{-120,-30},{-110,-30},{-92,-30},{-92,-41.1021},{-92,-56.5},
                {-84,-56.5}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(T2, sum.u[2]) annotation (Line(
            points={{-120,-80},{-108,-80},{-92,-80},{-92,-72.2334},{-92,-63.5},
                {-84,-63.5}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(T_hits_T1, and1.u[3]) annotation (Line(
            points={{-120,54},{-104,54},{-64.2031,54},{-56,54},{-56,46},{-47.2623,
                46},{-3.67578,46},{20,46},{20,66.6536},{20,75.3333},{24,
                75.3333}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(or2.y, and2.u[2]) annotation (Line(
            points={{32,20},{36,20},{36,25.2765},{36,28.8867},{36,40},{46,40}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(T_hits_T2, and2.u[3]) annotation (Line(
            points={{-120,0},{-96.9688,0},{-88,0},{-88,-6.09766},{-88,-14},{-80.0117,
                -14},{3.5332,-14},{42,-14},{42,28.2995},{42,35.3333},{46,
                35.3333}},
            color={255,0,255},
            smooth=Smooth.Bezier));

        connect(T_hits_T1, and3.u[4]) annotation (Line(
            points={{-120,54},{-108,54},{-77.5313,54},{-56,54},{-56,27.5574},
                {-56,15.0304},{-56,-5.25},{-35.8359,-5.25},{60,-5.25}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-140,-140},
                  {140,140}}), graphics={Rectangle(
                          extent={{-140,140},{140,-140}},
                          lineColor={95,95,95},
                          fillColor={175,175,175},
                          fillPattern=FillPattern.Solid),Text(
                          extent={{0,80},{0,20}},
                          lineColor={95,95,95},
                          textString="Alarm"),Text(
                          extent={{0,0},{0,-60}},
                          lineColor={95,95,95},
                          textString="Trigger")}),
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics),
          Documentation(info="<html>
<p>Logic for deciding whether any alarm should sound. The logic is defined in D. Harel&apos;s paper (see reference on package level) as:</p>
<p><br/>T1 is the time set when alarm1 will sound.</p>
<p>T2 is the time set when alarm1 will sound.</p>
<p>P1 = alarm1 enabled <b>and</b> (alarm2 disabled <b>or</b> <b>not</b> T1 == T2)</p>
<p>P2 = alarm2 enabled <b>and</b> (alarm1 disabled <b>or</b> <b>not</b> T1 == T2)</p>
<p>P = alarm1 enabled <b>and</b> alarm2 enabled <b>and</b> T1 == T2</p>
<p><br/>Alarm 1 will beep when time becomes equal to T1 and P1 is true.</p>
<p>Alarm 2 will beep when time becomes equal to T2 and P2 is true.</p>
<p>Both alarms will beep when time becomes equal to T1 and P is true.</p>
</html>"));
      end AlarmTrigger;

      model WatchController
        import Modelica_StateGraph2;
        Modelica_StateGraph2.Examples.Applications.HarelsWristWatch.Utilities.Time
          Time
          annotation (Placement(transformation(extent={{-24,-46},{-4,-26}})));
        DisplayDecoder displayController
          annotation (Placement(transformation(extent={{34,-22},{74,18}})));
        public
        Modelica_StateGraph2.Blocks.MathBoolean.Or time_mode(nu=5)
          annotation (Placement(transformation(extent={{-18,10},{-6,22}})));
        public
        Modelica_StateGraph2.Blocks.MathBoolean.Or date_mode(nu=2)
          annotation (Placement(transformation(extent={{0,2},{12,14}})));
        public
        SignalBus display_node annotation (Placement(transformation(extent={{
                  -76,44},{-36,84}}), iconTransformation(extent={{-32,-120},{
                  8,-80}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit1
          annotation (Placement(transformation(extent={{100,70},{120,90}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit2
          annotation (Placement(transformation(extent={{100,40},{120,60}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit3
          annotation (Placement(transformation(extent={{100,10},{120,30}})));
        Modelica.Blocks.Interfaces.IntegerOutput large_digit4
          annotation (Placement(transformation(extent={{100,-20},{120,0}})));
        Modelica.Blocks.Interfaces.IntegerOutput small_digit annotation (
            Placement(transformation(extent={{100,-50},{120,-30}})));
        Modelica.Blocks.Interfaces.IntegerOutput text_digit annotation (
            Placement(transformation(extent={{100,-80},{120,-60}})));
      equation
        connect(time_mode.u[1], display_node.time_active) annotation (Line(
            points={{-18,19.36},{-44,19.36},{-50,40},{-50,62},{-56,62},{-56,
                64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_mode.u[2], display_node.show_time) annotation (Line(
            points={{-18,17.68},{-52,17.68},{-52,64},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_mode.u[3], display_node.in_alarm1) annotation (Line(
            points={{-18,16},{-40,16},{-52,22},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_mode.u[4], display_node.in_alarm2) annotation (Line(
            points={{-18,14.32},{-32,14},{-54,20},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(time_mode.u[5], display_node.in_chime) annotation (Line(
            points={{-18,12.64},{-18,14},{-56,14},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(displayController.time_mode, time_mode.y) annotation (Line(
            points={{31.5,15.5},{0,15.5},{0,16},{-4.8,16}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(displayController.year_mode, display_node.show_year)
          annotation (Line(
            points={{31.5,0.5},{31.5,0.5},{-30.1553,0.5},{-60,0.5},{-60,
                25.3511},{-60,64},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(Time.y, displayController.time_signal) annotation (Line(
            points={{-3,-36},{-3,-36},{23.701,-36},{35.25,-36},{35.25,-24.5}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(date_mode.y, displayController.date_mode) annotation (Line(
            points={{13.2,8},{13.2,8},{31.5,8}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode.u[1], display_node.date_active) annotation (Line(
            points={{4.44089e-016,10.1},{4.44089e-016,10.1},{-35.875,10.1},{-56,
                10.1},{-56,28},{-56,46},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(date_mode.u[2], display_node.show_date) annotation (Line(
            points={{4.44089e-016,5.9},{-30,6},{-58,6},{-58,27.6934},{-58,64},
                {-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(displayController.stopwatch_mode, display_node.stopwatch_mode)
          annotation (Line(
            points={{31.5,-7},{-24.9619,-6},{-64,-6},{-64,27.0078},{-64,59},{
                -56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        connect(Time.signalBus, display_node) annotation (Line(
            points={{-14.6,-46.4},{-14.6,-50},{-22.0791,-50},{-66,-50},{-66,-1.54688},
                {-66,49.6506},{-66,62},{-56,62},{-56,64}},
            color={255,204,51},
            smooth=Smooth.Bezier,
            thickness=0.5));
        connect(displayController.mode_signal, display_node.mode_setting)
          annotation (Line(
            points={{42.75,-24.5},{42.75,-42},{42,-54},{30.0781,-54},{-48.4011,
                -54},{-70,-54},{-70,-31.875},{-70,46.3043},{-70,64},{-56,64}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(displayController.date_signal, display_node.date_setting)
          annotation (Line(
            points={{50.25,-24.5},{50,-42},{50,-58},{34.3122,-58},{-47.3592,-58},
                {-76,-58},{-76,-33.3652},{-76,45.3853},{-76,64},{-56,64}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(displayController.year_signal, display_node.year_setting)
          annotation (Line(
            points={{57.75,-24.5},{57.75,-24.5},{57.75,-64},{37.9612,-64},{-53.2983,
                -64},{-82,-64},{-82,-35.875},{-82,45.0784},{-82,64},{-56,64}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(displayController.stopwatch_signal, display_node.stopwatch_time)
          annotation (Line(
            points={{65.25,-24.5},{65.25,-24.5},{65.25,-70},{31.5417,-70},{0,
                -70},{-54.2266,-70},{-88,-70},{-88,-41.8652},{-88,36.2931},{-88,
                64},{-56,64}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.day_signal, display_node.day_setting)
          annotation (Line(
            points={{72.75,-24.5},{72.75,-24.5},{72.75,-76},{34.946,-76},{-66,
                -76},{-94,-76},{-94,-50.0234},{-94,32.3763},{-94,64},{-56,64}},
            color={255,127,0},
            smooth=Smooth.Bezier));

        connect(displayController.large_digit_1, large_digit1) annotation (
            Line(
            points={{75.25,13},{80,13},{80,20.8909},{80,59.9785},{80,80},{110,
                80}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.large_digit_2, large_digit2) annotation (
            Line(
            points={{75.25,8},{82,8},{82,17.2655},{82,29.3691},{82,50},{110,
                50}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.large_digit_3, large_digit3) annotation (
            Line(
            points={{75.25,3},{84,3},{84,11.8154},{84,20},{94.5371,20},{110,
                20}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.large_digit_4, large_digit4) annotation (
            Line(
            points={{75.25,-2},{84,-2},{84,-10},{92.0996,-10},{110,-10}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.small_digit, small_digit) annotation (Line(
            points={{75.25,-7},{82,-7},{82,-16},{82,-25.1406},{82,-40},{
                96.0547,-40},{110,-40}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(displayController.text_digit, text_digit) annotation (Line(
            points={{75.25,-12},{80,-12},{80,-20.2695},{80,-52.0795},{80,-70},
                {96.3477,-70},{110,-70}},
            color={255,127,0},
            smooth=Smooth.Bezier));
        connect(time_mode.u[5], display_node.in_chime) annotation (Line(
            points={{-18,12.64},{-22,12.64},{-22,12},{-56,12},{-56,64}},
            color={255,0,255},
            smooth=Smooth.Bezier));
        annotation (
          Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics),
          Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
                  {100,100}}), graphics={Rectangle(
                          extent={{-100,100},{100,-100}},
                          lineColor={95,95,95},
                          fillColor={175,175,175},
                          fillPattern=FillPattern.Solid),Text(
                          extent={{0,60},{0,20}},
                          lineColor={95,95,95},
                          textString="Watch"),Text(
                          extent={{0,0},{0,-40}},
                          lineColor={95,95,95},
                          textString="Controller")}),
          Documentation(info="<html>
<p>The watch controller contains the clock functionality, gathering of stopwatch signals, time settings and modes from different parts of the wristwatch that are gathered, grouped together and finally decoded into outputs to the LED display.</p>
</html>"));
      end WatchController;
    end Utilities;
  end HarelsWristWatch;

  model Deadlock
    "Example with two processes sharing two resources ending up in a deadlock situation after 5 seconds"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step free1(
      nOut=2,
      nIn=2,
      initialStep=true)
      annotation (Placement(transformation(extent={{-4,50},{4,58}})));
    Modelica_StateGraph2.Step s1(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-16,16},{-24,24}})));
    Modelica_StateGraph2.Transition request1(
      use_conditionPort=true,
      waitTime=0.001,
      loopCheck=true,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{-24,30},{-16,38}})));
    Modelica_StateGraph2.Step requesting1(
      nIn=1,
      nOut=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-80,16},{-72,24}})));
    Modelica_StateGraph2.Step requesting3(
      nIn=1,
      nOut=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-80,-20},{-72,-12}})));
    Modelica_StateGraph2.Step s2(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{16,16},{24,24}})));
    Modelica_StateGraph2.Transition request2(
      use_conditionPort=true,
      waitTime=0.001,
      loopCheck=true,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{24,30},{16,38}})));
    Modelica_StateGraph2.Transition release2(
      use_conditionPort=true,
      delayedTransition=false,
      loopCheck=false)
      annotation (Placement(transformation(extent={{24,2},{16,10}})));
    Modelica_StateGraph2.Transition release1(
      use_conditionPort=true,
      delayedTransition=false,
      loopCheck=false)
      annotation (Placement(transformation(extent={{-24,2},{-16,10}})));
    Modelica_StateGraph2.Step free2(
      nOut=2,
      nIn=2,
      initialStep=true)
      annotation (Placement(transformation(extent={{-4,-36},{4,-28}})));
    Modelica_StateGraph2.Step s3(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-16,-70},{-24,-62}})));
    Modelica_StateGraph2.Transition reqest3(
      use_conditionPort=true,
      use_firePort=false,
      waitTime=0.001,
      loopCheck=true,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{-24,-56},{-16,-48}})));
    Modelica_StateGraph2.Step s4(
      nOut=1,
      nIn=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{16,-70},{24,-62}})));
    Modelica_StateGraph2.Transition request4(
      use_conditionPort=true,
      use_firePort=false,
      waitTime=0.001,
      loopCheck=true,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{24,-56},{16,-48}})));
    Modelica_StateGraph2.Transition release4(
      use_conditionPort=true,
      delayedTransition=false,
      loopCheck=false)
      annotation (Placement(transformation(extent={{24,-84},{16,-76}})));
    Modelica_StateGraph2.Transition release3(
      use_conditionPort=true,
      delayedTransition=false,
      loopCheck=false)
      annotation (Placement(transformation(extent={{-24,-84},{-16,-76}})));
    Modelica_StateGraph2.Step busy1(
      nIn=1,
      nOut=1,
      initialStep=false,
      use_activePort=true)
      annotation (Placement(transformation(extent={{-80,-60},{-72,-52}})));
    Modelica_StateGraph2.Transition start1(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-80,36},{-72,44}})));
    Modelica_StateGraph2.Transition reserved1(use_conditionPort=true)
      annotation (Placement(transformation(extent={{-72,0},{-80,8}})));
    Modelica_StateGraph2.Transition reserved3(use_conditionPort=true)
      annotation (Placement(transformation(extent={{-72,-40},{-80,-32}})));
    Modelica_StateGraph2.Transition ready1(
      delayedTransition=true,
      use_firePort=false,
      waitTime=1)
      annotation (Placement(transformation(extent={{-80,-80},{-72,-72}})));
    Modelica_StateGraph2.Step idle1(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-80,56},{-72,64}})));
    Modelica_StateGraph2.Step requesting2(
      nIn=1,
      nOut=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{80,16},{72,24}})));
    Modelica_StateGraph2.Step requesting4(
      nIn=1,
      nOut=1,
      use_activePort=true)
      annotation (Placement(transformation(extent={{80,-20},{72,-12}})));
    Modelica_StateGraph2.Step busy2(
      nIn=1,
      nOut=1,
      initialStep=false,
      use_activePort=true)
      annotation (Placement(transformation(extent={{80,-60},{72,-52}})));
    Modelica_StateGraph2.Transition start2(delayedTransition=true, waitTime=2)
      annotation (Placement(transformation(extent={{72,36},{80,44}})));
    Modelica_StateGraph2.Transition reserved2(use_conditionPort=true)
      annotation (Placement(transformation(extent={{72,0},{80,8}})));
    Modelica_StateGraph2.Transition reserved4(use_conditionPort=true)
      annotation (Placement(transformation(extent={{72,-40},{80,-32}})));
    Modelica_StateGraph2.Transition ready2(
      delayedTransition=true,
      use_firePort=false,
      waitTime=1)
      annotation (Placement(transformation(extent={{80,-80},{72,-72}})));
    Modelica_StateGraph2.Step idle2(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{72,56},{80,64}})));
    Modelica.Blocks.Logical.FallingEdge fallingEdge
      annotation (Placement(transformation(extent={{-64,-64},{-56,-56}})));
    Modelica.Blocks.Logical.FallingEdge fallingEdge1
      annotation (Placement(transformation(extent={{64,-64},{56,-56}})));
  equation
    connect(request1.inPort, free1.outPort[1]) annotation (Line(
        points={{-20,38},{-20,44},{-1,44},{-1,49.4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(request2.inPort, free1.outPort[2]) annotation (Line(
        points={{20,38},{20,44},{1,44},{1,49.4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(request2.outPort, s2.inPort[1]) annotation (Line(
        points={{20,29},{20,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(request1.outPort, s1.inPort[1]) annotation (Line(
        points={{-20,29},{-20,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release1.inPort, s1.outPort[1]) annotation (Line(
        points={{-20,10},{-20,15.4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release2.inPort, s2.outPort[1]) annotation (Line(
        points={{20,10},{20,15.4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release1.outPort, free1.inPort[1]) annotation (Line(
        points={{-20,1},{-20,-4},{-36,-4},{-36,2.416},{-36,51.3459},{-36,66},
            {-1,66},{-1,58}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release2.outPort, free1.inPort[2]) annotation (Line(
        points={{20,1},{20,-4},{36,-4},{36,4.7075},{36,44.459},{36,66},{1,66},
            {1,58}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reqest3.inPort, free2.outPort[1]) annotation (Line(
        points={{-20,-48},{-20,-42},{-1,-42},{-1,-36.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(request4.inPort, free2.outPort[2]) annotation (Line(
        points={{20,-48},{20,-42},{1,-42},{1,-36.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reqest3.outPort, s3.inPort[1]) annotation (Line(
        points={{-20,-57},{-20,-62}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release3.inPort, s3.outPort[1]) annotation (Line(
        points={{-20,-76},{-20,-70.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release3.outPort, free2.inPort[1]) annotation (Line(
        points={{-20,-85},{-20,-90},{-36,-90},{-36,-74},{-36,-40.6719},{-36,-20},
            {-1,-20},{-1,-28}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(release4.outPort, free2.inPort[2]) annotation (Line(
        points={{20,-85},{20,-90},{36,-90},{36,-82},{36,-33.8047},{36,-20},{1,
            -20},{1,-28}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(idle1.outPort[1], start1.inPort) annotation (Line(
        points={{-76,55.4},{-76,44}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(start1.outPort, requesting1.inPort[1]) annotation (Line(
        points={{-76,35},{-76,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting1.outPort[1], reserved1.inPort) annotation (Line(
        points={{-76,15.4},{-76,11.7},{-76,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reserved1.outPort, requesting3.inPort[1]) annotation (Line(
        points={{-76,-1},{-76,-6.5},{-76,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting3.outPort[1], reserved3.inPort) annotation (Line(
        points={{-76,-20.6},{-76,-26.3},{-76,-32}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reserved3.outPort, busy1.inPort[1]) annotation (Line(
        points={{-76,-41},{-76,-46.5},{-76,-52}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(busy1.outPort[1], ready1.inPort) annotation (Line(
        points={{-76,-60.6},{-76,-66.3},{-76,-72}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(ready1.outPort, idle1.inPort[1]) annotation (Line(
        points={{-76,-81},{-76,-88},{-96,-88},{-96,-75.0213},{-96,-61.3129},{
            -96,57.3594},{-96,80},{-76,80},{-76,64}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(idle2.outPort[1], start2.inPort) annotation (Line(
        points={{76,55.4},{76,44}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(start2.outPort, requesting2.inPort[1]) annotation (Line(
        points={{76,35},{76,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting2.outPort[1], reserved2.inPort) annotation (Line(
        points={{76,15.4},{76,11.7},{76,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reserved2.outPort, requesting4.inPort[1]) annotation (Line(
        points={{76,-1},{76,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting4.outPort[1], reserved4.inPort) annotation (Line(
        points={{76,-20.6},{76,-26.3},{76,-32}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(reserved4.outPort, busy2.inPort[1]) annotation (Line(
        points={{76,-41},{76,-46.5},{76,-52}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(busy2.outPort[1], ready2.inPort) annotation (Line(
        points={{76,-60.6},{76,-66.3},{76,-72}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(ready2.outPort, idle2.inPort[1]) annotation (Line(
        points={{76,-81},{76,-88},{96,-88},{96.0535,-65.5869},{96.334,51.9453},
            {96,80},{76,80},{76,64}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting1.activePort, request1.conditionPort) annotation (Line(
        points={{-71.28,20},{-71.28,20},{-60,20},{-60,34},{-44.79,34},{-25,34}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(request4.outPort, s4.inPort[1]) annotation (Line(
        points={{20,-57},{20,-59.5},{20,-62}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(s4.outPort[1], release4.inPort) annotation (Line(
        points={{20,-70.6},{20,-73.3},{20,-76}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(requesting3.activePort, reqest3.conditionPort) annotation (Line(
        points={{-71.28,-16},{-71.28,-16},{-40,-16},{-40,-35.2305},{-40,-52},
            {-25,-52}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(s1.activePort, reserved1.conditionPort) annotation (Line(
        points={{-24.72,20},{-24.72,20},{-42.6012,20},{-60,20},{-60,4},{-71,4}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(s3.activePort, reserved3.conditionPort) annotation (Line(
        points={{-24.72,-66},{-24.72,-66},{-44,-66},{-44,-51.6738},{-44,-36},
            {-63.0898,-36},{-71,-36}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(fallingEdge.u, busy1.activePort) annotation (Line(
        points={{-64.8,-60},{-68,-60},{-68,-56},{-71.28,-56}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(fallingEdge.y, release3.conditionPort) annotation (Line(
        points={{-55.6,-60},{-50,-60},{-50,-70},{-50,-80},{-36.8164,-80},{-25,
            -80}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(fallingEdge.y, release1.conditionPort) annotation (Line(
        points={{-55.6,-60},{-50,-60},{-50,-44.5481},{-50,-12.4063},{-50,6},{
            -25,6}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(fallingEdge1.u, busy2.activePort) annotation (Line(
        points={{64.8,-60},{68,-60},{68,-56},{71.28,-56}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(requesting2.activePort, request4.conditionPort) annotation (Line(
        points={{71.28,20},{40,20},{40,-13.3281},{40,-27.1125},{40,-52},{25,-52}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(s4.activePort, reserved2.conditionPort) annotation (Line(
        points={{24.72,-66},{24.72,-66},{44,-66},{44,-30},{44,4},{71,4}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(requesting4.activePort, request2.conditionPort) annotation (Line(
        points={{71.28,-16},{64,-16},{64,8.80469},{64,34},{25,34}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(reserved4.conditionPort, s2.activePort) annotation (Line(
        points={{71,-36},{60,-36},{60,-10.1094},{60,20},{24.72,20}},
        color={255,0,255},
        smooth=Smooth.Bezier));
    connect(fallingEdge1.y, release2.conditionPort) annotation (Line(
        points={{55.6,-60},{48,-60},{48,-39.0564},{48,-12.4063},{48,6},{25,6}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    connect(fallingEdge1.y, release4.conditionPort) annotation (Line(
        points={{55.6,-60},{50,-60},{50,-70},{50,-80},{37.8662,-80},{25,-80}},
        color={255,0,255},
        smooth=Smooth.Bezier));

    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics={Text(
                  extent={{-74,94},{-74,82}},
                  lineColor={0,0,0},
                  textString="Process 1"),Text(
                  extent={{76,94},{76,82}},
                  lineColor={0,0,0},
                  textString="Process 2"),Text(
                  extent={{0,80},{0,68}},
                  lineColor={0,0,0},
                  textString="Resource 1"),Text(
                  extent={{0,-6},{0,-18}},
                  lineColor={0,0,0},
                  textString="Resource 2")}), experiment(StopTime=10));
  end Deadlock;

  end Applications;

package WrongStateGraphs
  "Examples demonstrating wrong Modelica_StateGraph2s and the error messages that appear in such cases"
  model SimpleInfiniteLoop
    "A wrong Modelica_StateGraph2 that has an infinite loop (translates with an error)"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step step1(
      initialStep=true,
      nOut=1,
      nIn=1)
      annotation (Placement(transformation(extent={{-24,30},{-16,38}})));
    Modelica_StateGraph2.Transition T1
      annotation (Placement(transformation(extent={{-24,12},{-16,20}})));

    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
    Modelica_StateGraph2.Transition T2
      annotation (Placement(transformation(extent={{-24,-20},{-16,-12}})));
    Modelica_StateGraph2.Step step3(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
    Modelica_StateGraph2.Transition T3
      annotation (Placement(transformation(extent={{2,4},{10,-4}})));

  equation
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{-20,29.4},{-20,20}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{-20,11},{-20,4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{-20,-4.6},{-20,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{-20,-21},{-20,-30}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-38.6},{-20,-50},{-4,-50},{6,-50},{6,-40.3418},{6,-4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{6,5},{6,38},{6,50},{-6,50},{-20,50},{-20,38}},
        color={0,0,0},
        smooth=Smooth.Bezier));
  end SimpleInfiniteLoop;

  model SeveralInfiniteLoops
    "Several loops that have wrongly only one delayed transition in one of the loops, but not in all"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step initialStep(
      nIn=3,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-44,28},{-36,36}})));
    Modelica_StateGraph2.Transition T1(condition=time > 2)
      annotation (Placement(transformation(extent={{-44,10},{-36,18}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-44,-6},{-36,2}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{-44,-22},{-36,-14}})));
    Modelica_StateGraph2.Step step3(nIn=1, nOut=3)
      annotation (Placement(transformation(extent={{-44,-40},{-36,-32}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-14,2},{-6,-6}})));
    Modelica_StateGraph2.Transition T4(waitTime=1.5, delayedTransition=false)
      annotation (Placement(transformation(extent={{12,2},{20,-6}})));
    Modelica_StateGraph2.Transition T5(waitTime=1.7, delayedTransition=false)
      annotation (Placement(transformation(extent={{38,2},{46,-6}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-14,20},{-6,12}})));
    Modelica_StateGraph2.Step step4(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{12,20},{20,12}})));
    Modelica_StateGraph2.Step step5(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{38,20},{46,12}})));
    Modelica_StateGraph2.Transition T6(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{-14,34},{-6,26}})));
    Modelica_StateGraph2.Transition T7(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{12,34},{20,26}})));
    Modelica_StateGraph2.Transition T8(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{38,34},{46,26}})));
  equation

    connect(initialStep.outPort[1], T1.inPort) annotation (Line(
        points={{-40,27.4},{-40,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{-40,9},{-40,2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{-40,-6.6},{-40,-14}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{-40,-23},{-40,-32}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T3.inPort) annotation (Line(
        points={{-41.3333,-40.6},{-41.3333,-46},{-31.3581,-46},{-10,-46},{-10,
            -27.7969},{-10,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(step3.outPort[2], T4.inPort) annotation (Line(
        points={{-40,-40.6},{-40,-48},{-30.0469,-48},{-6.93351,-48},{16,-48},
            {16,-31.1426},{16,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[3], T5.inPort) annotation (Line(
        points={{-38.6667,-40.6},{-38.6667,-52},{-25.1172,-52},{21.9435,-52},
            {42,-52},{42,-34},{42,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.inPort[1], T3.outPort) annotation (Line(
        points={{-10,12},{-10,3}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.inPort[1], T4.outPort) annotation (Line(
        points={{16,12},{16,3}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.inPort[1], T5.outPort) annotation (Line(
        points={{42,12},{42,3}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T6.inPort, step1.outPort[1]) annotation (Line(
        points={{-10,26},{-10,20.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T7.inPort, step4.outPort[1]) annotation (Line(
        points={{16,26},{16,20.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T8.inPort, step5.outPort[1]) annotation (Line(
        points={{42,26},{42,20.6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T6.outPort, initialStep.inPort[1]) annotation (Line(
        points={{-10,35},{-10,46},{-21.5385,46},{-31.3275,46},{-41.3333,46},{
            -41.3333,36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T7.outPort, initialStep.inPort[2]) annotation (Line(
        points={{16,35},{16,48},{0.701172,48},{-26,48},{-40,48},{-40,36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T8.outPort, initialStep.inPort[3]) annotation (Line(
        points={{42,35},{42,50},{24.716,50},{-23.069,50},{-38.6667,50},{-38.6667,
            36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics));
  end SeveralInfiniteLoops;

  model InfiniteLoop
    "A wrong Modelica_StateGraph2 with infinite looping of a composite step (translates with an error)"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step step1(
      nOut=1,
      initialStep=true,
      nIn=1) annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
    Parallel parallel(
      use_inPort=true,
      use_outPort=true,
      nIn=1,
      nEntry=1,
      nOut=1,
      nExit=1)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Transition T1(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
    Modelica_StateGraph2.Step step3(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{-10,14},{-2,22}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{-10,-6},{-2,2}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{-10,-26},{-2,-18}})));
    Modelica_StateGraph2.Transition T3(
      waitTime=1,
      use_conditionPort=false,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{46,4},{54,-4}})));
  equation
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{-6,65.4},{-6,60}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,51},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{-6,13.4},{-6,2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
        points={{-6,37.5},{-6,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{-6,-7},{-6,-18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T3.inPort) annotation (Line(
        points={{-6,-49.125},{-6,-56},{2.21733,-56},{33.3203,-56},{50,-56},{
            50,-40.2578},{50,-4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{50,5},{50,68.416},{50,84},{34.0159,84},{9.58594,84},{-6,84},
            {-6,74}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-6,-26.6},{-6,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics));
  end InfiniteLoop;

  model ParallelWithInfiniteLoop
    "A wrong Modelica_StateGraph2 to demonstrate parallel execution paths with infinite looping ((translates with an error))"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step step1(
      nOut=1,
      initialStep=true,
      nIn=1) annotation (Placement(transformation(extent={{-4,68},{4,76}})));
    Parallel parallel(
      use_inPort=true,
      use_outPort=true,
      nIn=1,
      nEntry=2,
      nOut=1,
      nExit=2)
      annotation (Placement(transformation(extent={{-38,-46},{38,44}})));
    Modelica_StateGraph2.Transition T1(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{-4,54},{4,62}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
    Modelica_StateGraph2.Step step3(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{12,16},{20,24}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{12,-4},{20,4}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{12,-24},{20,-16}})));
    Modelica_StateGraph2.Transition T3(
      waitTime=1,
      use_conditionPort=false,
      delayedTransition=false)
      annotation (Placement(transformation(extent={{52,6},{60,-2}})));
  equation
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{0,67.4},{0,62}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, parallel.inPort[1]) annotation (Line(
        points={{0,53},{0,44}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{16,15.4},{16,4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-1.9,39.5},{-1.9,34},{-9.5536,34},{-20,34},{-20,25.5625},{-20,
            4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{1.9,39.5},{1.9,34},{9.10146,34},{16,34},{16,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{16,-5},{16,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T3.inPort) annotation (Line(
        points={{0,-47.125},{0,-54},{9.7754,-54},{39.1016,-54},{56,-54},{56,-38.918},
            {56,-2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{56,7},{56,73.502},{56,86},{41.1434,86},{12.0313,86},{0,86},{
            0,76}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-20,-4.6},{-20,-21.7518},{-20,-32},{-10.4551,-32},{-1.9,-32},
            {-1.9,-42.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
        points={{16,-24.6},{16,-32},{10.2306,-32},{1.9,-32},{1.9,-42.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,
              -100},{100,100}}), graphics));
  end ParallelWithInfiniteLoop;

  model NoInitialStep "An initial step is missing"
    extends Modelica.Icons.Example;
    Modelica_StateGraph2.Step initialStep(
      nIn=1,
      nOut=1,
      initialStep=false)
      annotation (Placement(transformation(extent={{-4,44},{4,52}})));
    Modelica_StateGraph2.Transition T1(condition=time > 2)
      annotation (Placement(transformation(extent={{-4,26},{4,34}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-4,10},{4,18}})));
    Modelica_StateGraph2.Transition T2(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-4,-6},{4,2}})));
    Modelica_StateGraph2.Step step3(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-4,-24},{4,-16}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{26,18},{34,10}})));
  equation

    connect(initialStep.outPort[1], T1.inPort) annotation (Line(
        points={{0,43.4},{0,34}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{0,25},{0,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{0,9.4},{0,2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{0,-7},{0,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T3.inPort) annotation (Line(
        points={{0,-24.6},{0,-30},{8.43405,-30},{16.6406,-30},{30,-30},{30,-15.3516},
            {30,10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, initialStep.inPort[1]) annotation (Line(
        points={{30,19},{30,48.1885},{30,60},{16.4573,60},{10.8984,60},{0,60},
            {0,52}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (
      __Dymola_inhibitCheck=true,
      Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-100,-100},
              {100,100}}), graphics),
      Documentation(info="<html>

</html>"));
  end NoInitialStep;

  model AutonomousWithSuspendAndNoInitialStep
    "Autonomous parallel with suspend/resume (either the parallel should have initialStep= true or an initial step is missing in the resume branch)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=0,
      nEntry=1,
      nOut=0,
      use_suspend=true,
      nSuspend=1,
      nResume=1,
      nExit=2,
      use_outPort=false,
      use_inPort=false)
      annotation (Placement(transformation(extent={{-38,-48},{38,52}})));
    Modelica_StateGraph2.Step step3(nOut=1, nIn=2)
      annotation (Placement(transformation(extent={{-4,18},{4,26}})));
    Modelica_StateGraph2.Transition T2(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-4,4},{4,12}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{-4,-12},{4,-4}})));
    Modelica_StateGraph2.Transition T4(condition=time > 2.5 and time <= 4)
      annotation (Placement(transformation(
          extent={{-4,4},{4,-4}},
          rotation=180,
          origin={-66,20})));
    Modelica_StateGraph2.Step step5(
      nIn=1,
      nOut=1,
      initialStep=false) annotation (Placement(transformation(
          extent={{-4,4},{4,-4}},
          rotation=180,
          origin={-66,2})));
    Modelica_StateGraph2.Transition T5(delayedTransition=true, waitTime=2)
      annotation (Placement(transformation(
          extent={{-4,4},{4,-4}},
          rotation=180,
          origin={-66,-12})));
    Modelica_StateGraph2.Transition T6(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-4,-26},{4,-18}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{0,17.4},{0,12}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(parallel.entry[1], step3.inPort[1]) annotation (Line(
        points={{0,47},{0,26},{-1,26}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{0,3},{0,-4}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(step5.outPort[1], T5.inPort) annotation (Line(
        points={{-66,-2.6},{-66,-8}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T4.outPort, step5.inPort[1]) annotation (Line(
        points={{-66,15},{-66,6}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(parallel.suspend[1], T4.inPort) annotation (Line(
        points={{-39.9,30.125},{-39.9,30.125},{-59.7554,30.125},{-66,30.125},
            {-66,24}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T6.inPort) annotation (Line(
        points={{0,-12.6},{0,-18}},
        color={0,0,0},
        smooth=Smooth.None));
    connect(T5.outPort, parallel.resume[1]) annotation (Line(
        points={{-66,-17},{-66,-17},{-66,-26.125},{-57.3594,-26.125},{-38,-26.125}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T6.outPort, step3.inPort[2]) annotation (Line(
        points={{0,-27},{0,-27},{0,-38},{9.76428,-38},{14.8789,-38},{26,-38},
            {26,-27.1695},{26,25.7383},{26,36},{15.3409,36},{9.12988,36},{1,
            36},{1,26}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end AutonomousWithSuspendAndNoInitialStep;

  model TwoInitialSteps
    "A wrong Modelica_StateGraph2 that has two initial steps (gives an error during initialization)"
    extends Modelica.Icons.Example;

    Modelica_StateGraph2.Step step1(
      initialStep=true,
      nOut=1,
      nIn=1)
      annotation (Placement(transformation(extent={{-24,30},{-16,38}})));
    Modelica_StateGraph2.Transition T1
      annotation (Placement(transformation(extent={{-24,12},{-16,20}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-4},{-16,4}})));
    Modelica_StateGraph2.Transition T2
      annotation (Placement(transformation(extent={{-24,-20},{-16,-12}})));
    Modelica_StateGraph2.Step step3(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{16,4},{24,-4}})));
  equation
    connect(step1.outPort[1], T1.inPort) annotation (Line(
        points={{-20,29.4},{-20,20}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{-20,11},{-20,4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{-20,-4.6},{-20,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{-20,-21},{-20,-30}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-38.6},{-20,-50},{-11.126,-50},{5.74219,-50},{20,-50},{
            20,-35.5801},{20,-4}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{20,5},{20,35.9814},{20,50},{4.91268,50},{-7.53906,50},{-20,
            50},{-20,38}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end TwoInitialSteps;

  model ParallelWithTwoInitialSteps
    "Wrong Modelica_StateGraph2 with two initial steps"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=0,
      nEntry=2,
      nOut=0,
      use_inPort=false,
      use_outPort=false,
      initialStep=true)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=2, nOut=1)
      annotation (Placement(transformation(extent={{-24,0},{-16,8}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=2,
      initialStep=true)
      annotation (Placement(transformation(extent={{6,14},{14,22}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{6,-2},{14,6}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
    Modelica_StateGraph2.Transition T1(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{6,-34},{14,-26}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-24,-16},{-16,-8}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{10,13.4},{10,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-7.9,32},{-14.2197,32},{-21,32},{-21,24.6875},{-21,
            8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4.1,32},{3.33271,32},{9,32},{9,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{10,-3},{10,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T1.inPort) annotation (Line(
        points={{10,-18.6},{10,-26}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step3.inPort[2]) annotation (Line(
        points={{10,-35},{10,-40},{17.1094,-40},{24,-40},{24,-33.6158},{24,
            22.8594},{24,32},{17.1191,32},{11,32},{11,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step2.inPort[2]) annotation (Line(
        points={{-20,-17},{-20,-22},{-25.5469,-22},{-30,-22},{-30,-15.3571},{
            -30,7.32031},{-30,14},{-24.2314,14},{-19,14},{-19,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-0.6},{-20,-8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end ParallelWithTwoInitialSteps;

  model UnsafeParallel1
    "Wrong Modelica_StateGraph2 that branches out of the parallel step (gives error during initialization)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=1,
      nEntry=2,
      nOut=0,
      use_outPort=false,
      use_inPort=true)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=2, nOut=1)
      annotation (Placement(transformation(extent={{-24,0},{-16,8}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=2,
      initialStep=false)
      annotation (Placement(transformation(extent={{6,14},{14,22}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{6,-2},{14,6}})));
    Modelica_StateGraph2.Step step4(nOut=2, nIn=1)
      annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
    Modelica_StateGraph2.Transition T1(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{4,-34},{12,-26}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-24,-16},{-16,-8}})));
    Modelica_StateGraph2.Step step1(
      nOut=1,
      nIn=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-10,66},{-2,74}})));
    Modelica_StateGraph2.Transition T4(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-10,50},{-2,58}})));
    Modelica_StateGraph2.Transition T5(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{48,-2},{56,-10}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{10,13.4},{10,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-7.9,32},{-21,32},{-21,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4.1,32},{9,32},{9,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{10,-3},{10,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T1.inPort) annotation (Line(
        points={{9,-18.6},{9,-22.3},{8,-22.3},{8,-26}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step3.inPort[2]) annotation (Line(
        points={{8,-35},{8,-40},{15.5469,-40},{24,-40},{24,-33.6016},{24,
            25.5295},{24,32},{16.8906,32},{11,32},{11,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step2.inPort[2]) annotation (Line(
        points={{-20,-17},{-20,-22},{-24.8828,-22},{-30,-22},{-30,-16.4556},{
            -30,8.19922},{-30,14},{-23.5654,14},{-19,14},{-19,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-0.6},{-20,-8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,49},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], T4.inPort) annotation (Line(
        points={{-6,65.4},{-6,58}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[2], T5.inPort) annotation (Line(
        points={{11,-18.6},{11,-22},{15.7578,-22},{40,-22},{52,-22},{52,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(T5.outPort, step1.inPort[1]) annotation (Line(
        points={{52,-1},{52,70.8145},{52,82},{38.4603,82},{4.02539,82},{-6,82},
            {-6,74}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end UnsafeParallel1;

  model UnsafeParallel2
    "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized (gives translation error)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=1,
      nEntry=2,
      nOut=1,
      use_inPort=true,
      use_outPort=true,
      nExit=2)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,8},{-16,16}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{6,8},{14,16}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{6,-8},{14,0}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{6,-24},{14,-16}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-24,-8},{-16,0}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-24},{-16,-16}})));
    Modelica_StateGraph2.Step step5(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
    Modelica_StateGraph2.Transition T4(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
    Modelica_StateGraph2.Transition T5(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{48,14},{56,6}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{10,7.4},{10,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{10,-9},{10,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-20,7.4},{-20,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{-20,-9},{-20,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,51},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T4.inPort) annotation (Line(
        points={{-6,67.4},{-6,60}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T5.inPort) annotation (Line(
        points={{-6,-49.125},{-6,-60},{7.2989,-60},{36.4238,-60},{52,-60},{52,
            -43.8223},{52,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort, step5.inPort[1]) annotation (Line(
        points={{52,15},{52,70},{52,90},{34,90},{9.11719,90},{-6,90},{-6,76}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-8,37.5},{-8,30},{-13.332,30},{-20,30},{-20,
            21.7832},{-20,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4,34},{-4,30},{3.3281,30},{10,30},{10,22.8906},
            {10,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-20,-24.6},{-20,-31.1037},{-20,-38},{-13.1229,-38},{-7.9,-38},
            {-7.9,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
        points={{10,-24.6},{10,-29.5465},{10,-38},{3.3418,-38},{-4,-38},{-4,-44.0625},
            {-4.1,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end UnsafeParallel2;

  model UnsafeParallel3
    "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized (gives translation error)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=1,
      nEntry=2,
      nOut=1,
      use_inPort=true,
      use_outPort=true,
      nExit=1)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,8},{-16,16}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=2,
      initialStep=false)
      annotation (Placement(transformation(extent={{6,14},{14,22}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{6,-2},{14,6}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{6,-18},{14,-10}})));
    Modelica_StateGraph2.Transition T1(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{6,-34},{14,-26}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-24,-8},{-16,0}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-24},{-16,-16}})));
    Modelica_StateGraph2.Step step5(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
    Modelica_StateGraph2.Transition T4(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
    Modelica_StateGraph2.Transition T5(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{48,14},{56,6}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{10,13.4},{10,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{10,-3},{10,-10}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], T1.inPort) annotation (Line(
        points={{10,-18.6},{10,-26}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-20,7.4},{-20,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{-20,-9},{-20,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,51},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T4.inPort) annotation (Line(
        points={{-6,67.4},{-6,60}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T5.inPort) annotation (Line(
        points={{-6,-49.125},{-6,-60},{6.42188,-60},{34,-60},{52,-60},{52,-43.3711},
            {52,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort, step5.inPort[1]) annotation (Line(
        points={{52,15},{52,77.5488},{52,90},{35.5601,90},{8.5,90},{-6,90},{-6,
            76}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-8,37.5},{-8,30},{-13.1094,30},{-20,30},{-20,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4,34},{-4,30},{3.55371,30},{9,30},{9,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step3.inPort[2]) annotation (Line(
        points={{10,-35},{10,-42},{18,-42},{26,-42},{26,-33.8289},{26,17.7656},
            {26,30},{18.6758,30},{11,30},{11,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-20,-24.6},{-20,-29.9914},{-20,-38},{-12.4531,-38},{-6,-38},
            {-6,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end UnsafeParallel3;

  model UnsafeParallel4
    "Wrong Modelica_StateGraph2 where not all parallel paths are synchronized and a wrong initial step is added to compensate for this (gives an error during initialization)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=1,
      nEntry=2,
      nOut=1,
      use_inPort=true,
      use_outPort=true,
      nExit=2)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-34,8},{-26,16}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=1,
      initialStep=false)
      annotation (Placement(transformation(extent={{12,14},{20,22}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{12,0},{20,8}})));
    Modelica_StateGraph2.Step step4(nOut=0, nIn=1)
      annotation (Placement(transformation(extent={{12,-14},{20,-6}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-34,-10},{-26,-2}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-34,-24},{-26,-16}})));
    Modelica_StateGraph2.Step step5(
      nIn=1,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
    Modelica_StateGraph2.Transition T4(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
    Modelica_StateGraph2.Transition T5(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{48,14},{56,6}})));
    Modelica_StateGraph2.Step step6(nOut=1, initialStep=true)
      annotation (Placement(transformation(extent={{-8,-32},{0,-24}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{16,13.4},{16,8}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{16,-1},{16,-6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-30,7.4},{-30,-2}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{-30,-11},{-30,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,51},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T4.inPort) annotation (Line(
        points={{-6,67.4},{-6,60}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T5.inPort) annotation (Line(
        points={{-6,-49.125},{-6,-60},{6.18895,-60},{35.7441,-60},{52,-60},{
            52,-46.0137},{52,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort, step5.inPort[1]) annotation (Line(
        points={{52,15},{52,77.7686},{52,90},{36.678,90},{8.89648,90},{-6,90},
            {-6,76}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-8,37.5},{-8,30},{-17.5391,30},{-30,30},{-30,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4,34},{-4,30},{2.875,30},{16,30},{16,22}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-30,-24.6},{-30,-38},{-18.6694,-38},{-14.8938,-38},{-7.9,-38},
            {-7.9,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step6.outPort[1], parallel.exit[2]) annotation (Line(
        points={{-4,-32.6},{-4,-32},{-4.1,-32},{-4.1,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end UnsafeParallel4;

  model UnsafeParallel5
    "Wrong Modelica_StateGraph2 where an initial step is placed in a parallel (gives translation error)"
    extends Modelica.Icons.Example;

    Parallel parallel(
      nIn=1,
      nEntry=2,
      nOut=1,
      use_inPort=true,
      use_outPort=true,
      nExit=2)
      annotation (Placement(transformation(extent={{-44,-48},{32,42}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,8},{-16,16}})));
    Modelica_StateGraph2.Step step3(
      nOut=1,
      nIn=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{6,8},{14,16}})));
    Modelica_StateGraph2.Transition T2(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{6,-8},{14,0}})));
    Modelica_StateGraph2.Step step4(nOut=1, nIn=1)
      annotation (Placement(transformation(extent={{6,-24},{14,-16}})));
    Modelica_StateGraph2.Transition T3(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-24,-8},{-16,0}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-24},{-16,-16}})));
    Modelica_StateGraph2.Step step5(
      nIn=1,
      nOut=1,
      initialStep=false)
      annotation (Placement(transformation(extent={{-10,68},{-2,76}})));
    Modelica_StateGraph2.Transition T4(delayedTransition=true, waitTime=1)
      annotation (Placement(transformation(extent={{-10,52},{-2,60}})));
    Modelica_StateGraph2.Transition T5(waitTime=1, delayedTransition=false)
      annotation (Placement(transformation(extent={{48,14},{56,6}})));
  equation
    connect(step3.outPort[1], T2.inPort) annotation (Line(
        points={{10,7.4},{10,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step4.inPort[1]) annotation (Line(
        points={{10,-9},{10,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T3.inPort) annotation (Line(
        points={{-20,7.4},{-20,0}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step1.inPort[1]) annotation (Line(
        points={{-20,-9},{-20,-16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T4.outPort, parallel.inPort[1]) annotation (Line(
        points={{-6,51},{-6,42}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step5.outPort[1], T4.inPort) annotation (Line(
        points={{-6,67.4},{-6,60}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.outPort[1], T5.inPort) annotation (Line(
        points={{-6,-49.125},{-6,-60},{7.091,-60},{37.1035,-60},{52,-60},{52,
            -44.4668},{52,6}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T5.outPort, step5.inPort[1]) annotation (Line(
        points={{52,15},{52,73.96},{52,90},{33.5956,90},{8.27344,90},{-6,90},
            {-6,76}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[1], step2.inPort[1]) annotation (Line(
        points={{-7.9,37.5},{-8,37.5},{-8,30},{-13.332,30},{-20,30},{-20,
            22.2344},{-20,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(parallel.entry[2], step3.inPort[1]) annotation (Line(
        points={{-4.1,37.5},{-4,34},{-4,30},{3.54688,30},{10,30},{10,21.5645},
            {10,16}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], parallel.exit[1]) annotation (Line(
        points={{-20,-24.6},{-20,-30.4363},{-20,-38},{-13.7846,-38},{-7.9,-38},
            {-7.9,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.outPort[1], parallel.exit[2]) annotation (Line(
        points={{10,-24.6},{10,-29.1016},{10,-38},{2.67188,-38},{-4,-38},{-4,
            -44.0625},{-4.1,-44.0625}},
        color={0,0,0},
        smooth=Smooth.Bezier));

    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end UnsafeParallel5;

  model NoUnaryConnection1
    "Two steps are wrongly connected to the same outPort of a transition"

    extends Modelica.Icons.Example;
    Modelica_StateGraph2.Transition T1
      annotation (Placement(transformation(extent={{-4,10},{4,18}})));
    Modelica_StateGraph2.Step step1(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{-24,-20},{-16,-12}})));
    Modelica_StateGraph2.Step step2(nIn=1, nOut=1)
      annotation (Placement(transformation(extent={{16,-20},{24,-12}})));
    Modelica_StateGraph2.Step step3(
      nIn=2,
      nOut=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{4,28},{-4,36}})));
    Modelica_StateGraph2.Transition T2
      annotation (Placement(transformation(extent={{16,-38},{24,-30}})));
    Modelica_StateGraph2.Transition T3
      annotation (Placement(transformation(extent={{-24,-38},{-16,-30}})));
  equation
    connect(T1.outPort, step1.inPort[1]) annotation (Line(
        points={{0,9},{0,0},{-9.76563,0},{-20,0},{-20,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T1.outPort, step2.inPort[1]) annotation (Line(
        points={{0,9},{0,0},{10.2148,0},{20,0},{20,-12}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step3.outPort[1], T1.inPort) annotation (Line(
        points={{0,27.4},{0,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step2.outPort[1], T2.inPort) annotation (Line(
        points={{20,-20.6},{20,-30}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T2.outPort, step3.inPort[1]) annotation (Line(
        points={{20,-39},{20,-52},{30.418,-52},{33.5429,-52},{48,-52},{48,-37.6445},
            {48,32.6038},{48,46},{32.8994,46},{11.7785,46},{1,46},{1,36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step1.outPort[1], T3.inPort) annotation (Line(
        points={{-20,-20.6},{-20,-30}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(T3.outPort, step3.inPort[2]) annotation (Line(
        points={{-20,-39},{-20,-52},{-31.7706,-52},{-39.1016,-52},{-50,-52},{
            -50,-37.8201},{-50,31.9316},{-50,46},{-36.0267,46},{-10.9053,46},
            {-1,46},{-1,36}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end NoUnaryConnection1;

  model NoUnaryConnection2
    "Two steps are wrongly connected to one element of an entry port"

    extends Modelica.Icons.Example;
    Parallel step4(
      nIn=0,
      use_inPort=false,
      nEntry=1,
      initialStep=true)
      annotation (Placement(transformation(extent={{-38,-36},{38,38}})));
    Modelica_StateGraph2.Step step1(nIn=1)
      annotation (Placement(transformation(extent={{-16,10},{-8,18}})));
    Modelica_StateGraph2.Step step2(nIn=1)
      annotation (Placement(transformation(extent={{8,10},{16,18}})));
  equation
    connect(step4.entry[1], step1.inPort[1]) annotation (Line(
        points={{0,34.3},{0,26},{-6,26},{-12,26},{-12,20.6719},{-12,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    connect(step4.entry[1], step2.inPort[1]) annotation (Line(
        points={{0,34.3},{0,26},{6.43359,26},{12,26},{12,20.4453},{12,18}},
        color={0,0,0},
        smooth=Smooth.Bezier));
    annotation (__Dymola_inhibitCheck=true, Diagram(coordinateSystem(
            preserveAspectRatio=true, extent={{-100,-100},{100,100}}),
          graphics));
  end NoUnaryConnection2;
end WrongStateGraphs;
end Examples;
