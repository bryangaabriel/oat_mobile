void main() {
  int numero = 29;
  bool isPrimo = verificarPrimo(numero);

  if (isPrimo) {
    print('$numero é um número primo.');
  } else {
    print('$numero não é um número primo.');
    List<int> divisores = encontrarDivisores(numero);
    print('Divisores de $numero: $divisores');
  }
}

bool verificarPrimo(int numero) {
  if (numero <= 1) return false; 
  for (int i = 2; i <= numero ~/ 2; i++) {
    if (numero % i == 0) return false; 
  }
  return true;
}

List<int> encontrarDivisores(int numero) {
  List<int> divisores = [];
  for (int i = 1; i <= numero; i++) {
    if (numero % i == 0) divisores.add(i);
  }
  return divisores;
}