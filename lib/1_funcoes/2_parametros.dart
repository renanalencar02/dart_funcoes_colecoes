void main() {

  // Temos 3 tipos de Parâmetros no dart
  // Parametros Obrigatórios dor default

  print('A soma de 10 + 10 é ${somaInteiros(10, 10)}');
  
  // Parametros nomeados
  // São nullables por default
  // Podem ser promovidos para non-null com checagem de null
  // caso não passasem nenhum paremetro, não teria problema
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numeroUm: 10.2, numeroDois: 10.2)}'); // <-- precisa epecificar claramente a variável que vai receber
  print('A soma de 10.2 + 10.2 é ${somaDoubles(numeroDois: 10.2, numeroUm: 10.2)}');// a ordem não importa

  //a passagem de parametros é obrigatoria por causa do required
  somaDoublesObrigatorios(numeroUm: 5.0, numeroDois: 10.2);
  //a passagem é obrigatoria porem aceita null na primeira variável
  somaDoublesObrigatorios2(numeroDois: 10.8, numeroUm: null);
  
  //a passagem não é obrigatoria, pois os parametros foram inicializados na função com 0
  print('Chamada com parametros default ${somaDoublesDefault()}');
  print('Chamada com parametros default ${somaDoublesDefault(numeroUm: 10)}');


  //Parametro Opcional
  somaIntOpcional();
  somaIntOpcional(1);
  somaIntOpcional(1,2);

  //parametro obrigatorio, com nomeado requerido
  parametrosNormaisComNomeados(1, nome: 'Renan', idada: 29);
  //parametro obrigatorio, com opcionais (pode ser passado nenum, um ou dois parametros - a ordem importa)
  parametrosNormaisComNomeados2(1, 'Renan Alencar', 25);
}






int somaInteiros(int numero1, int numero2){
  return numero1 + numero2;
}

// parametros nomeados. O tipo deles pode ser null, o dart aceita.
// precisa ser feito o teste se as variáveis são nullas, podem ser promovidos para non-null
double somaDoubles({double? numeroUm, double? numeroDois}){
  if(numeroUm != null && numeroDois != null) {
    return numeroUm + numeroDois;
  }
  return 0.0;
}

// required faz com que a passagem de parametro seja obrigatoria
//continua pondendo passar na ordem que quiser
double somaDoublesObrigatorios({required double numeroUm, required double numeroDois}){
    return numeroUm + numeroDois;
}

//passagem de parametros obrigatoria porem aceita null na primeira variavel, e se quiser, na segunda também, colocando ?
double somaDoublesObrigatorios2({required double? numeroUm, required double numeroDois}){
    numeroUm ??= 0; //null aware operator
    return numeroUm + numeroDois;
}

//os parametros não são obrigatorios, porem a variavel já foi inicializada com 0, caso não venha nada, é aceito
//porem vai retornar a soma de 0 + 0
double somaDoublesDefault({double numeroUm = 0, double numeroDois = 0}){
    return numeroUm + numeroDois;
}

//parametros opcionais [] usando colchetes 
//foi feito o tratamento de nullo da variavel numero1
int somaIntOpcional([int? numero1, int numero2 = 0]){
  numero1 ??= 0;
  return numero1 + numero2;
}

void parametrosNormaisComNomeados(int numero, {required String nome, required int idada}){}
void parametrosNormaisComNomeados2(int numero, [String? nome, int? idade]){}
void parametrosNormaisComNomeados3(int numero1, int numero2, [String? nome, int? idade]){}