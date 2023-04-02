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
    String sexoStr = lerEntrada('Sexo (M/F): ').toString();
    return sexoStr.toLowerCase() == 'm'
        ? TipoSexo.masculino
        : TipoSexo.feminino;
  }

  static Pessoa lerPessoa() {
    String nome = lerEntrada('Nome: ').toString();
    double peso = lerDouble('Peso: ');
    double altura = lerDouble('Altura: ');
    TipoSexo sexo = lerSexo();
    return Pessoa(nome, peso, altura, sexo);
  }
}
