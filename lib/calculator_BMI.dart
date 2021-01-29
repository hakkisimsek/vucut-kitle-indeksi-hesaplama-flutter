import 'dart:math';

class CalculatorBMI {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBMI({this.height, this.weight});

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 30)
      return 'OBEZİTE';
    else if (_bmi > 25)
      return 'FAZLA KİLO';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'DÜŞÜK KİLO';
  }

  String getInterpretation() {
    if (_bmi > 30)
      return 'Normal bir insandan çok daha fazla kilonuz var. Derhal bir doktora danışın !!';
    else if (_bmi > 25)
      return 'Vücut ağırlığınız normalden fazla. Daha fazla egzersiz yapmaya ve sağlıklı bir diyet yapmaya çalışın.';
    else if (_bmi > 18.5)
      return 'Mükemmel bir kilonuz var. Hadi bunu koruyalım.';
    else
      return 'Vücut ağırlığınız normalden az. Daha fazla yemeye ve sağlıklı bir yaşam sürmeye çalışın.';
  }
}
