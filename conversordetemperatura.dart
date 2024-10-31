import 'dart:io';

void main() {

  while(true) {
    print("Escolha uma opção: ");
    print("1. Celcius para fahrenheit.");
    print("2. Fahrenheit para celcius.");
    print("3. Sair");
  
    String? escolha = stdin.readLineSync(); 

    if(escolha == "1"){
      stdout.write("Informe a temperatura em Celcius:");
      String? temperatura = stdin.readLineSync() ?? "";
      int? celcius = int.tryParse(temperatura );

      if (celcius != null) {
        double fahrenheit = celcius * 1.8 + 32;
        print("A temperatura em Fahrenheit é: $fahrenheit");
      } else {
        print("Entrada inválida. Por favor, insira um número.");
      }
    }



    else if(escolha == "2"){
    stdout.write("Informe a temperatura em fahrenheit:");
    String? temperatura = stdin.readLineSync() ?? "";
    int? fahrenheit = int.tryParse(temperatura );

    if (fahrenheit != null) {
      double celcius = (fahrenheit - 32)/ 1.8;
      print("A temperatura em celcius é: $celcius");
    } else {
      print("Entrada inválida. Por favor, insira um número.");
    }
    }

    else if (escolha == "3"){
      print("saindo...");
      break;
    } else {
      print("opção inválida, escolha entre 1-3:");
    }
  }
}