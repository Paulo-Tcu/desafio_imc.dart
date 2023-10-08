import 'dart:io';
import 'package:desafio_imc/pessoa.dart';

void main(List<String> arguments) {
  try {
    stdout.write("Informe o nome da pessoa (pelo menos 10 caracteres): ");
    String nome = stdin.readLineSync() ?? "";

    if (nome.length < 10) {
      throw ArgumentError("Nome deve ter pelo menos 10 caracteres");
    }

    stdout.write("Informe o peso (deve ser maior ou igual a 0): ");
    double peso = double.parse(stdin.readLineSync().toString());

    if (peso <= 0) {
      throw ArgumentError("Peso não pode ser menor ou igual que zero");
    }

    stdout.write("Informe a altura (em metros, deve ser maior ou igual a 0): ");
    double altura = double.parse(stdin.readLineSync().toString());

    if (altura < 0) {
      throw ArgumentError("Altura não pode ser menor que zero");
    }

    Pessoa pessoa = Pessoa(nome, peso, altura);

    print(pessoa.calcularIMC());
  } catch (e) {
    print("Erro: $e");
  }
}
