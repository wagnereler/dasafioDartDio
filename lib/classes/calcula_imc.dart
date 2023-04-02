class CalculadoraIMC {
  double _peso = 0;
  double _altura = 0;
  double _imc = 0;
  String _classificacao = "";

  double get peso => _peso;
  set peso(double value) => _peso = value;

  double get altura => _altura;
  set altura(double value) => _altura = value;

  void classificarIMC() {
    //verificação da classificação
    if (_imc < 15) {
      _classificacao = "Magreza Grave";
    } else if (_imc >= 15 && _imc < 16) {
      _classificacao = "Magreza Moderada";
    } else if (_imc >= 16 && _imc < 18.5) {
      _classificacao = "Magreza Leve";
    } else if (_imc >= 18.5 && _imc < 25) {
      _classificacao = "Saudável";
    } else if (_imc >= 25 && _imc < 30) {
      _classificacao = "Sobrepeso";
    } else if (_imc >= 30 && _imc < 35) {
      _classificacao = "Obesidade Grau I";
    } else if (_imc >= 35 && _imc < 40) {
      _classificacao = "Obesidade Grau II (severa)";
    } else if (_imc >= 40) {
      _classificacao = "Obesidade Grau III (mórbida)";
    }
  }

  double calcularIMC() {
    if (_altura == 0) {
      throw ArgumentError('Altura não pode ser zero.');
    }
    if (_altura > 100) {
      _altura = (_altura / 100);
    }
    _imc = _peso / (_altura * _altura);
    classificarIMC();
    return _imc;
  }

  String getClassificacao() {
    return _classificacao;
  }

  @override
  String toString() {
    return {
      "Peso": _peso,
      "Altura": _altura,
      "IMC": _imc,
      "Classificação": _classificacao
    }.toString();
  }
}
