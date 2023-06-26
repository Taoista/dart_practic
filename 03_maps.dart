void main() {
  final Map<String, Object> pokemon = {
    'name': 'ditto',
    'hp': 100,
    'isAlive': false,
    'abilities': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png',
    }
  };

  print(pokemon);

  print('name: ${pokemon['name']}');
  print('abilities: ${pokemon['abilities']}');

  // print('sprite 1: ${pokemon['sprites'][1]}');
}
