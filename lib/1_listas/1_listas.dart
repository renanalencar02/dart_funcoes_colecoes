void main() {
  var numeros = List.generate(10, (index) => index + 1);

  //print é uma função que recebe um parametro
  //nesse caso é passado para o foreach a responsabilidade de chamar os elementos por parametro
  numeros.forEach(print);

  //aqui é passada no foreach a função que foi criada printAcademia, funciona da mesma forma, o foreach chama os elementos por parametro
  numeros.forEach(printAcademia);

  // Expand
  // Array BiDimencional
  var lista = [
    [1,2],
    [2,4]
  ];
  // imprimie a linha 0 e coluna 0 do array bidimencional
  print(lista[0][0]);

  //como juntar todos os elementos do array bidimencional numa lista só (expand é um iterable, então o toList no final)
  var listaNova = lista.expand((numeros) => numeros).toList();
  print(listaNova);


  // any
  //o any busca na lista um item semelhante ao buscado
  var teste = 'Mateus';
  print('\n');
  print('.any');
  final listaBusca = ['Renan', 'Manu', 'Mateus'];

  if(listaBusca.any((nome) => nome == teste)){
    print('Tem $teste');
  } else{
    print('Não tem $teste');
  }

  // every
  //checa se em todos os elementos da lista existe o item buscado
  var letra = 'b';
  print('\n');
  print('.every');
  final listaBusca2 = ['Renan', 'Manu', 'Mateus'];

  if(listaBusca2.every((nome) => nome.contains(letra))){
    print('Todos os nomes tema a letra ${letra.toUpperCase()}');
  } else {
    print('Nem todos os nomes tem a letra ${letra.toUpperCase()}');
  }

  // .sort
  // o sort coloca os elementos da lista em ordem, porem os elementos são alterados no endereço de memória
  // o sorte executa dentro dele mesmo, enquanto os outros retornam alguma coisa, então vai alterar tudo no endereço de memória
  print('\n');
  print('.sort');
  var listaParaOrdenacao = [99,22,10,765,1,2,3,100,300];

  listaParaOrdenacao.sort();
  print(listaParaOrdenacao);

  var listaParaOrdenacao2 = ['Jose', 'Joao', 'Rodrigo'];
  listaParaOrdenacao2.sort();
  print(listaParaOrdenacao2);

  // caso eu tenha uma lista como nomes e idades, por exemplo, separada por pipe 
  var listaPacientes = [
    'Renan Alencar|29',
    'Emanuele Rodrigues|27',
    'Mateus Rodrigues|3',
    'Lobinha Lob|4',
    'Tigresa Guese|4'
  ];
  //assim ordenou por os nomes pelos caracteres
  listaPacientes.sort();
  print(listaPacientes);

  //uma forma de não perder a ordenação de uma lista é criar uma nova variável e atribuir a ela a lista que vc quer manipular
  //assim a orgininal não é perdida
  var novaListaPacientes = [...listaPacientes];

  listaPacientes.sort((paciente1,paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);

    if(idadePaciente1 > idadePaciente2){
      return 1;
    } else if(idadePaciente1 == idadePaciente2){
      return 0;
    } else {
      return -1;
    }
  });
  print(listaPacientes);
  
  // compareTO
  print('.sort com CompareTo');
  var listaPacientes2 = [
    'Renan Alencar|29',
    'Emanuele Rodrigues|27',
    'Mateus Rodrigues|3',
    'Lobinha Lob|4',
    'Tigresa Guese|4'
  ];
  
  listaPacientes2.sort((paciente1,paciente2){
    final pacienteDados1 = paciente1.split('|');
    final pacienteDados2 = paciente2.split('|');

    final idadePaciente1 = int.parse(pacienteDados1[1]);
    final idadePaciente2 = int.parse(pacienteDados2[1]);
    
    //esse compareTo faz a mesma coisa que o if no exemplo anterior
    return idadePaciente1.compareTo(idadePaciente2);
  });
  print(listaPacientes2);
}
 
//função que imprime um valor inteiro
void printAcademia(int valor) {
  print(valor);
}
