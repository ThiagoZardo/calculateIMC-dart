import 'package:calculadora_imc/classes/calculadora.dart';
import 'package:test/test.dart';

void main() {
  test('Deve calcular corretamente o valor do IMC do usuário', () {
    final calculadora = CalculadoraIMC(100, 1.90);

    final result = calculadora.calculaIMC();
    expect(result, '27.70');
  });

  test('Deve retornar erro quando altura ou peso for menor ou igual a zero', () {
    final test1 = CalculadoraIMC(0, 1.90);
    final test2 = CalculadoraIMC(150, 0.0);
    final test3 = CalculadoraIMC(0, 0.0);

    expect(() => test1.calculaIMC(), throwsA(isA<Exception>()));
    expect(() => test2.calculaIMC(), throwsA(isA<Exception>()));
    expect(() => test3.calculaIMC(), throwsA(isA<Exception>()));
  });
}
