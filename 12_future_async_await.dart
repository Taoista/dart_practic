void main() async {
  print("inicio del programa");

  try {
    final value = await httpGet("https://algodel mundo.com/cursos");
    print("exito : ${value}");
  } on Exception catch (err) {
    print('teneemos una exception: $err');
  } catch (e) {
    print('OPS algo terrible paso : ${e}');
  } finally {
    print("final del try and catch");
  }

  print("fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  throw new Exception("no hay parametros en el url");

  // throw 'error en la peticion';

  // return 'valor del retorno de la peticion HTTP';
}
