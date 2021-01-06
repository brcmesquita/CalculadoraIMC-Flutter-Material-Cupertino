import 'package:flutter_masked_text/flutter_masked_text.dart';

class ImcBloc {
  var heightCtrl = new MaskedTextController(mask: '000');
  var weightCtrl = new MaskedTextController(mask: '000');
  var result = "Preencha os dados para calcular seu IMC";

  calculate() {
    double weight = double.parse(weightCtrl.text);
    double height = double.parse(heightCtrl.text);
    double imc = weight / (height * height);

    if (imc <= 18.5) {
      result = "Você está abaixo do peso (${imc.toStringAsPrecision(2)}).";
    } else if (imc <= 24.9) {
      result =
          "Você está com o seu peso normal. Parabéns! (${imc.toStringAsPrecision(2)})";
    } else if (imc <= 29.9) {
      result = "Você está com sobrepeso (${imc.toStringAsPrecision(2)})";
    } else if (imc <= 34.9) {
      result = "você está com obesidade grau 1 (${imc.toStringAsPrecision(2)})";
    } else if (imc <= 39.9) {
      result = "você está com obesidade grau 2 (${imc.toStringAsPrecision(2)})";
    } else {
      result =
          "você está com obesidade grau 3. Cuidado! Melhor fazer uns exercícios. (${imc.toStringAsPrecision(2)})";
    }
  }
}
