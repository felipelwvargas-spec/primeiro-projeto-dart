import 'dart:io';

void main() {
  print("Digite o primeiro numero:");  
  double numeroUm = double.parse(stdin.readLineSync()!);
  print("Digite o operador:(Soma + , Subtração - , Divisão / , Multiplicação *)");  
  var operador = stdin.readLineSync()!;
  print("Digite o segundo numero:");  
  double numeroDois = double.parse(stdin.readLineSync()!);
  // esclamação diz que aquela informação não vai ser null  
  void soma(){    
    print(numeroUm + numeroDois);
  }
  void subtracao(){
    print(numeroUm - numeroDois);
  }
  void divisao(){
    print(numeroUm / numeroDois);
  }
  void multiplicacao(){
    print(numeroUm * numeroDois);
  }

}