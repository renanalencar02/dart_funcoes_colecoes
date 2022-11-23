void main() {

  //funções tem 3 características: tipo, nome e parâmetros

  final valorCalculado = somaInteiros(10, 12);
  print('A soma dos inteiros é $valorCalculado');

}

int somaInteiros(int num1, int num2){
  print('Executando a soma de inteiros $num1 + $num2');
  return num1 + num2;
}