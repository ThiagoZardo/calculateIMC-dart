class CalculadoraIMC {
  double _valor1 = 0;
  double _valor2 = 0;

  CalculadoraIMC(double peso, double altura) {
    _valor1 = peso;
    _valor2 = altura;
  }

  String calculaIMC() {
    double imc = _valor1 / (_valor2 * _valor2);
    return imc.toStringAsFixed(2);
  }
}