import 'dart:io';

void main() {
  double numeroUm = 0;

  String operacao = "";

  double numeroDois = 0;

  List<String> operacoes = <String>["+", "-", "*", "/"];

  String? entrada = "";

  void multiplicacao() {
    print(numeroUm * numeroDois);
  }

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao() {
    print(numeroUm - numeroDois);
  }

  void divisao() {
    print(numeroUm / numeroDois);
  }

  void calcular() {
    switch (operacao) {
      case "+":
        soma();
      case "-":
        subtracao();
      case "*":
        multiplicacao();
      case "/":
        divisao();
        break;
    }
  }

  void getOperacao() {
    print("Digite o operador ${operacoes.toString()}:");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada)) {
        operacao = entrada!;
      }else{
        print("Operação invalida!");
        getOperacao();        
      }
    }
  }

  print("Digite o primeiro numero:");
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o segundo numero:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
    }
  }
  print('O resultado é:');
  calcular();
}

  
/*
  
}
import 'dart:io';

void main() {
  print("Digite um numero:");  
  double numeroUm = double.parse(stdin.readLineSync()!);
   void multiplicacao(){
    print("O dobro do numero ${numeroUm} é ${numeroUm * 2}");
  }
  multiplicacao();
} 
*/