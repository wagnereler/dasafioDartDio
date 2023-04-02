import 'package:dasafio_dart_dio/classes/pessoa.dart';
import 'package:dasafio_dart_dio/dasafio_dart_dio.dart' as dasafio_dart_dio;
import 'package:dasafio_dart_dio/enums/tipo_sexo.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa("Wagner", 59.0, 169, TipoSexo.masculino);
  print(pessoa);
}
