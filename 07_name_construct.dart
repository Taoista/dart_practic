void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'TonyStark',
    'powers': 'Spider',
    'isAlive': true,
  };

  final iroman = new Hero.fromJson(rawJson);

  // final iroman = new Hero(
  //   isAlive: rawJson['isAlive2'] ?? false,
  //   power: "Money",
  //   name: "Tony Stark",
  // );

  print(iroman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive,
  });

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'Sin nombre encontrado',
        power = json['power'] ?? 'Sin poder encontrado',
        isAlive = json['isAlive'] ?? 'No iesAlive Found';

  @override
  String toString() {
    return "Soy $name, y mi poder es $power. ${isAlive ? 'YES' : 'NO'}";
  }
}
