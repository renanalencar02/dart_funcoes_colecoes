import 'dart:async';

void main() {
  //funções Arrow - OK
  //funções Anonimas
  //typedef

  //função arrow
  print(somaInteiros(10, 20));

  //função anonima é uma função que pode estar jogada ou associada a uma variável
  (){
    print('função anonima');
  }();

  //função anonima não tem o padrão de uma função
  var funcaoQualquer = (){
    print('Chamou a função da variável');
    return '2000';
  }; //a função anônima morre aqui

  print(funcaoQualquer());

  print('INICIANDO CHAMADA');
  chamarUmaFuncaoDeUmParametro((nome) {
     if(nome.isEmpty){
      print('Nome veio vazio');
     } else {
        print(nome);
     }
  });  
  print('FINALIZANDO CHAMADA');

  //typedef
  funx2((nome, nomeCompleto, {qq, x, x2}) { });
  
}

// 3 partes de uma Função
// 1- tipo de retorno
// 2- nome
// 3- parametros (normais, nomeados e opcionais)

// função arrow - Usa o simbolo => quando a função é pequena, que pode ser feita em uma linha, não usa escopo com chaves {}
int somaInteiros(int numero1, int numero2) => numero1 + numero2;

//Posso receber como parametro uma outra função
void chamarUmaFuncaoDeUmParametro(Function(String nome) funcaoQueRecebeNome){
  var calculo = 1+1;
  print('Imprimindo a variável calculo: $calculo');
  var nomeCompleto = 'Renan Alencar';
  funcaoQueRecebeNome(nomeCompleto);
}

//typedef
//ao inves de fazer toda a declaração da função dentro do parâmetro, chamo somente o apelido typedef
void chamarUmaFuncaoDeUmParametro1(FuncaoQueRecebeNome funcaoQueRecebeNome){
  print('Função com typedef');
  var calculo = 2+2;
  print('Imprimindo a variável calculo: $calculo');
  var nomeCompleto = 'Manu Alencar';
  funcaoQueRecebeNome(nomeCompleto);
}

//representa um 'Alias' ou apelido pra essa função, no caso o apelido vai ser FuncaoQueRecebeNome
//especifica o tipo da função e o tipo da variável ou das variáveis
typedef FuncaoQueRecebeNome = void Function(String nome);

//modelo de função enorme que pode ser substituida apenas pelo apelido no momento da chamada
void funx2(FuncaoQueRecebeNomeComplexo nome){}

typedef FuncaoQueRecebeNomeComplexo = void Function(
  String nome, 
  String nomeCompleto, {
  required String? x,
  required String? x2,
  int? qq,
  });