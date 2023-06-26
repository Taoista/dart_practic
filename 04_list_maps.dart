void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('original $numbers ');
  print('lenght ${numbers.length} ');
  print('index 0: ${numbers[0]} ');
  print('primero : ${numbers.first} ');
  print('ultimo : ${numbers.last} ');
  print('reversed : ${numbers.reversed} ');

  final reversedNumner = numbers.reversed;

  print('iterable: ${reversedNumner}');
  print('list: ${reversedNumner.toList()}');
  print('set: ${reversedNumner.toSet()}');

  final numberGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('>5 iterable: ${numberGreaterThan5}');
  print('>5 set de datos : ${numberGreaterThan5.toSet()}');
}
