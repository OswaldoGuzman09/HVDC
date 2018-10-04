within HVDC.Componentes;

package rectificador
  model Conexiones
  Modelica.Electrical.Analog.Ideal.IdealDiode D1 annotation(
      Placement(visible = true, transformation(origin = {22, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode D2 annotation(
      Placement(visible = true, transformation(origin = {22, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode D3 annotation(
      Placement(visible = true, transformation(origin = {56, 34}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Ideal.IdealDiode D4 annotation(
      Placement(visible = true, transformation(origin = {56, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Sources.SignalVoltage V annotation(
      Placement(visible = true, transformation(origin = {-68, 10}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Electrical.Analog.Basic.Resistor R annotation(
      Placement(visible = true, transformation(origin = {84, 4}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  Modelica.Electrical.Analog.Basic.Ground G annotation(
      Placement(visible = true, transformation(origin = {56, -52}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  equation
    connect(D4.p, G.p) annotation(
      Line(points = {{56, -28}, {56, -28}, {56, -42}, {56, -42}}, color = {0, 0, 255}));
    connect(D4.p, R.p) annotation(
      Line(points = {{56, -28}, {84, -28}, {84, -6}, {84, -6}}, color = {0, 0, 255}));
    connect(D3.n, R.n) annotation(
      Line(points = {{56, 44}, {82, 44}, {82, 14}, {84, 14}}, color = {0, 0, 255}));
    connect(V.n, D4.n) annotation(
      Line(points = {{-68, 0}, {56, 0}, {56, -8}, {56, -8}, {56, -8}}, color = {0, 0, 255}));
    connect(D1.p, V.p) annotation(
      Line(points = {{22, 24}, {-68, 24}, {-68, 20}, {-68, 20}}, color = {0, 0, 255}));
    connect(D2.p, D4.p) annotation(
      Line(points = {{22, -30}, {56, -30}, {56, -28}, {56, -28}}, color = {0, 0, 255}));
    connect(D1.n, D3.n) annotation(
      Line(points = {{22, 44}, {56, 44}, {56, 44}, {56, 44}}, color = {0, 0, 255}));
    connect(D3.p, D4.n) annotation(
      Line(points = {{56, 24}, {56, 24}, {56, -8}, {56, -8}}, color = {0, 0, 255}));
    connect(D1.p, D2.n) annotation(
      Line(points = {{22, 24}, {22, 24}, {22, -10}, {22, -10}}, color = {0, 0, 255}));
  end Conexiones;
end rectificador;
