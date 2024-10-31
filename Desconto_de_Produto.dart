void main() {
  double precoInicial = 230.00;
  double percentualDesconto = 13.0; 

  double precoFinal = calcularPrecoComDesconto(precoInicial, percentualDesconto);
  print('Preço inicial: R\$${precoInicial.toStringAsFixed(2)}');
  print('Desconto: ${percentualDesconto.toStringAsFixed(1)}%');
  print('Preço final após desconto: R\$${precoFinal.toStringAsFixed(2)}');
}

double calcularPrecoComDesconto(double preco, double descontoPercentual) {
  return preco * (1 - descontoPercentual / 100);
}
