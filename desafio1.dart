import 'dart:io';

void main(List<String> args) {
  String? input;
  int? numero;

  //laço de repetição para tratar entrada de dados diferente do esperado.
  do {
    print('Digite um numero inteiro que seja positivo: ');
    input = stdin.readLineSync();
    numero = int.tryParse(input!);
  } while (numero == null || numero < 0);

  print(Somatorio(numero));
}

int Somatorio(int numero) {
  int resultado = 0;

  //laço de repetiçao para acessar todos os numero que vem antes do numero recebido.
  for (var i = 0; i < numero; i++) {
    //validação se o numero da vez entra na regra de negocio da função.
    if (i % 5 == 0 || i % 3 == 0) {
      resultado += i;
    }
  }
  return resultado;
}
