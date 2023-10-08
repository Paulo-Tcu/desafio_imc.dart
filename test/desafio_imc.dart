import 'package:desafio_imc/pessoa.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Teste de classificação de IMC', () {
    // Criar instâncias de Pessoa com diferentes valores de peso e altura
    final pessoa1 = Pessoa('Pessoa1', 50, 1.65);
    final pessoa2 = Pessoa('Pessoa2', 70, 1.75);
    final pessoa3 = Pessoa('Pessoa3', 80, 1.70);

    // Verificar as classificações de IMC para as pessoas criadas
    expect(pessoa1.calcularIMC(), equals('Magreza leve'));
    expect(pessoa2.calcularIMC(), equals('Saudável'));
    expect(pessoa3.calcularIMC(), equals('Sobrepeso'));
  });
}
