import 'package:dasafio_dart_dio/classes/ler_pessoa.dart';
import 'package:dasafio_dart_dio/classes/pessoa.dart';
import 'package:dasafio_dart_dio/classes/calcula_imc.dart';

void main(List<String> arguments) {
  Pessoa pessoa = LeitorDePessoa.lerPessoa();
  print(pessoa);
  var imc = CalculadoraIMC();
  imc.altura = double.parse(pessoa.getAltura());
  imc.peso = double.parse(pessoa.getPeso());
  imc.calcularIMC();
  print(imc);
}
