import 'dart:io';

void main() {
  double numeroUm = 0;

  String operacao = "";

  double numeroDois = 0;

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

  print("Digite o primeiro numero:");
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }
  print("Digite o operador:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }
  print("Digite o segundo numero:");
  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

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