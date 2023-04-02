import 'dart:io';

import 'package:dasafio_dart_dio/classes/calcula_imc.dart';
import 'package:dasafio_dart_dio/classes/pessoa.dart';
import 'package:dasafio_dart_dio/enums/tipo_sexo.dart';
import 'package:test/test.dart';

void main() {
  group('CalculadoraIMC', () {
    test('Teste de cálculo do IMC', () {
      final calculadoraIMC = CalculadoraIMC();
      calculadoraIMC.peso = 70;
      calculadoraIMC.altura = 1.7;
      expect(calculadoraIMC.calcularIMC(), equals(24.221453287197235));
    });

    test('Teste de classificação de IMC', () {
      final calculadoraIMC = CalculadoraIMC();
      calculadoraIMC.peso = 70;
      calculadoraIMC.altura = 1.7;
      calculadoraIMC.calcularIMC();
      expect(calculadoraIMC.getClassificacao(), equals("Saudável"));
    });
  });

  group('Pessoa', () {
    test('Teste de criação de uma pessoa', () {
      final pessoa = Pessoa('João', 70, 1.7, TipoSexo.masculino);
      expect(pessoa.getNome(), equals('João'));
      expect(pessoa.getPeso(), equals('70.0'));
      expect(pessoa.getAltura(), equals('1.7'));
      expect(pessoa.getTipoSexo(), equals(TipoSexo.masculino.toString()));
    });

    test('Teste de alteração do nome da pessoa', () {
      final pessoa = Pessoa('João', 70, 1.7, TipoSexo.masculino);
      pessoa.setNome('Maria');
      expect(pessoa.getNome(), equals('Maria'));
    });
  });

  group('LeitorDePessoa', () {
    test('Teste de leitura de uma pessoa', () {
      final nome = 'João';
      final peso = 70.0;
      final altura = 1.7;
      final sexo = TipoSexo.masculino;
      final input = nome +
          '\n' +
          peso.toString() +
          '\n' +
          altura.toString() +
          '\n' +
          'M\n';
    });
  });
}
