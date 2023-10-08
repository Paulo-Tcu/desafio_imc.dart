class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  String calcularIMC() {
    var percentual = peso / (altura * altura);

    switch (percentual) {
      case < 16:
        return "Magreza grave";

      case >= 16 && < 17:
        return "Magreza Moderada";

      case >= 17 && < 18.5:
        return "Magreza leve";

      case >= 18.5 && < 25:
        return "Saudável";

      case >= 25 && < 30:
        return "Sobrepeso";

      case >= 30 && < 35:
        return "Obesidade Grau I";

      case >= 35 && < 40:
        return "Obesidade Grau II";

      case >= 40:
        return "Obesidade Grau III";

      default:
        throw ArgumentError("Classificação não encontrada");
    }
  }
}
