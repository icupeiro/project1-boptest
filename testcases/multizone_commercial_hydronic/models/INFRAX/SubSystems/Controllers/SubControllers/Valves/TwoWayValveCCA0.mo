within INFRAX.SubSystems.Controllers.SubControllers.Valves;
model TwoWayValveCCA0
  extends BaseClasses.TwoWayValveCCA(        FloorAvg(nin=6));
equation
  connect(neutralCheck.y, signalBus.CCA0_val) annotation (Line(points={{89,0},{
          86,0},{86,0},{100,0}},
                              color={0,0,127}), Text(
      string="%second",
      index=1,
      extent={{6,3},{6,3}},
      horizontalAlignment=TextAlignment.Left));
  connect(dataBus.TretCCA0, deltaTABS.u2) annotation (Line(
      points={{-99.9,0.1},{-99.9,-76},{-42,-76},{-42,-76}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-3,6},{-3,6}},
      horizontalAlignment=TextAlignment.Right));

  connect(dataBus.TGndFlr_SVR, FloorAvg.u[1]) annotation (Line(
      points={{-99.9,0.1},{-99.9,-22},{-92,-22},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));

  connect(dataBus.TGndFlr_1stAid, FloorAvg.u[2]) annotation (Line(
      points={{-99.9,0.1},{-98,0.1},{-98,-26},{-92,-26},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(dataBus.TGndFlr_KTR, FloorAvg.u[3]) annotation (Line(
      points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(dataBus.TGndFlr_MT1, FloorAvg.u[4]) annotation (Line(
      points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(dataBus.TGndFlr_MT2, FloorAvg.u[5]) annotation (Line(
      points={{-99.9,0.1},{-99.9,-20},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));
  connect(dataBus.TGndFlr_hall, FloorAvg.u[6]) annotation (Line(
      points={{-99.9,0.1},{-99.9,-30},{-92,-30},{-92,-20}},
      color={255,204,51},
      thickness=0.5), Text(
      string="%first",
      index=-1,
      extent={{-6,3},{-6,3}}));

end TwoWayValveCCA0;
