import 'dart:ffi';

import 'package:dasafio_dart_dio/enums/tipo_sexo.dart';

class Pessoa {
  String _nome = "";
  double _peso = 0;
  double _altura = 0;
  TipoSexo _tipoSexo = TipoSexo.naoInformado;

//Método Construtor
  Pessoa(String nome, double peso, double altura, TipoSexo tipoSexo) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
    _tipoSexo = tipoSexo;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  String getPeso() {
    return _peso.toString();
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  String getAltura() {
    return _altura.toString();
  }

  void setTipoSexo(TipoSexo tipoSexo) {
    _tipoSexo = tipoSexo;
  }

  String getTipoSexo() {
    return _tipoSexo.toString();
  }

  @override
  String toString() {
    return {
      "Nome": _nome,
      "Peso": _peso,
      "Altura": _altura,
      "Tipo Sexo": _tipoSexo
    }.toString();
  }
}
