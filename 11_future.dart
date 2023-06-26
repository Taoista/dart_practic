void main() {
  print("inicio del programa");

  httpGet('https://algodel mundo.com/cursos').then((value) {
    print(value);
  }).catchError((err) {
    print('error ${err}');
  });

  print("fin del programa");
}

Future<String> httpGet(String url) async {
  return Future.delayed(Duration(seconds: 1), () {
    throw 'Error en la petición http';

    return "Respuesta de la peticion http";
  });
}
