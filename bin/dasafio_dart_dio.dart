import 'package:dasafio_dart_dio/classes/ler_pessoa.dart';
import 'package:dasafio_dart_dio/classes/pessoa.dart';
import 'package:dasafio_dart_dio/enums/tipo_sexo.dart';

void main(List<String> arguments) {
  Pessoa pessoa = LeitorDePessoa.lerPessoa();
  print(pessoa);
}
