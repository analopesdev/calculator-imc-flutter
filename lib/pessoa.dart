import 'package:flutter/material.dart';

//
class Pessoa {
  String mensagem;
  String resultado;
  String genero;
  double altura, peso;
  Color color;
  double imc;

  Pessoa(
      {this.mensagem,
      this.altura,
      this.peso,
      this.genero,
      this.imc,
      this.resultado});

  calcularImc() {
    double calculoImc;
    calculoImc = this.peso / (this.altura * this.altura);
    imc = calculoImc;
    return calculoImc;
  }

  void mensagemMasc() {
    mensagem = "";
    if (imc < 20.7) {
      mensagem += "Abaixo do peso";
      color = Colors.blue;
    } else if (imc < 26.5) {
      mensagem += "Peso ideal";
      color = Colors.green;
    } else if (imc < 27.9) {
      mensagem += "Levemente acima do peso";
      color = Colors.yellow;
    } else if (imc < 31.1) {
      mensagem += "Acima do peso";
      color = Colors.orange;
    } else {
      mensagem += "Obesidade";
      color = Colors.red;
    }
    resultado = "IMC = ${imc.toStringAsPrecision(2)}";
  }

  void mensagemFem() {
    mensagem = "";
    if (imc < 19.1) {
      mensagem = "Abaixo do peso";
      color = Colors.blue;
    } else if (imc < 25.8) {
      mensagem = "Peso ideal";
      color = Colors.green;
    } else if (imc < 27.3) {
      mensagem += "Levemente acima do peso";
      color = Colors.yellow;
    } else if (imc < 32.3) {
      mensagem += "Acima do peso";
      color = Colors.orange;
    } else {
      mensagem += "Obesidade ";
      color = Colors.red;
    }
    resultado = "IMC = ${imc.toStringAsPrecision(2)}";
  }
}
