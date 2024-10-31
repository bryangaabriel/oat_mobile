void main() {
  int n = 10;

  List<int> sequenciaFibonacci = gerarFibonacci(n);
  print('Sequência de Fibonacci até o $n-ésimo termo: $sequenciaFibonacci');
}

List<int> gerarFibonacci(int n) {
  List<int> sequencia = [0, 1]; 

  for (int i = 2; i < n; i++) {
    sequencia.add(sequencia[i - 1] + sequencia[i - 2]);
  }

  return sequencia.sublist(0, n);
}