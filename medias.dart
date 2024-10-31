import 'dart:io';

void main() {

  List<double> notas_bimestre = [8.9, 7.3, 6.0, 3.8];


  print("Deseja alterar as notas predefinidas? (s/n)");
  String? resposta = stdin.readLineSync();


  if (resposta?.toLowerCase() == 's') {
    for (int i = 0; i < notas_bimestre.length; i++) {
      print("Digite a nota para o ${i + 1}º bimestre:");
      String? entrada = stdin.readLineSync();


      double? nota = double.tryParse(entrada ?? '');
      if (nota != null) {
        notas_bimestre[i] = nota;  // Substitui a nota se for válida
      } else {
        print("Entrada inválida. Mantendo a nota anterior.");
      }
    }
  }


  for (int i = 0; i < notas_bimestre.length; i++) {
    print("A nota do ${i + 1}º bimestre é ${notas_bimestre[i]}");
  }


  double soma = notas_bimestre.reduce((a, b) => a + b);
  double media = soma / notas_bimestre.length;

  
  if (media >= 6) {
    print("Aluno Aprovado. A média das notas é: $media.");
  } else {
    print("Aluno REPROVADO. A média do aluno é menor que 6.0.");
  }
}
