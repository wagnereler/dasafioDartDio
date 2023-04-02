import 'dart:io';

import '../classes/pessoa.dart';
import '../enums/tipo_sexo.dart';

class LeitorDePessoa {
  static String? lerEntrada(String mensagem) {
    stdout.write(mensagem);
    return stdin.readLineSync();
  }

  static double lerDouble(String mensagem) {
    return double.parse(lerEntrada(mensagem).toString());
  }

  static TipoSexo lerSexo() {
    String sexoStr;
    do {
      sexoStr = lerEntrada('Sexo (M/F): ').toString();
      sexoStr = sexoStr.trim().toLowerCase();
      try {
        if (sexoStr == 'm') {
          return TipoSexo.masculino;
        } else if (sexoStr == 'f') {
          return TipoSexo.feminino;
        } else {
          throw FormatException();
        }
      } catch (e) {
        print('Entrada inválida. Digite M ou F.');
      }
    } while (true);
  }

  static Pessoa lerPessoa() {
    String nome = lerEntrada('Nome: ').toString();
    double peso = lerDouble('Peso: ');
    double altura = lerDouble('Altura: ');
    TipoSexo sexo = lerSexo();
    return Pessoa(nome, peso, altura, sexo);
  }
}
