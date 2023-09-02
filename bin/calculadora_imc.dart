import 'dart:convert';
import 'dart:io';

import 'package:calculadora_imc/classes/calculadora.dart';
import 'package:calculadora_imc/classes/pessoa.dart';

void main() {
  print('Digite seu nome:');
  var line = stdin.readLineSync(encoding: utf8);
  var nome = line.toString();

  print('Digite seu peso:');
  line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print('Digite sua altura:');
  line = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line ?? "0");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  var pessoaNome = pessoa.getNome();
  var pessoaPeso = pessoa.getPeso();
  var pessoaAltura = pessoa.getAltura();

  CalculadoraIMC calculadora = CalculadoraIMC(pessoaPeso, pessoaAltura);

  pessoa.getAltura();
  pessoa.getPeso();
  var imc = calculadora.calculaIMC();
  print('Olá, $pessoaNome, o seu peso é: $pessoaPeso, sua altura é: $pessoaAltura E o seu IMC é: $imc');
}
