void main() {
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final List<String> sprites = ['ditto/front.pgn', 'ditto/back.png'];

  // dynaminc == null

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  """);
}
