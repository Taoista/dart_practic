void main() {
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyleft: 1000);

  print(' Wind : ${chargePhone(windPlant)}');
  print(' nuclear : ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyleft < 10) {
    throw Exception('Sin energia');
  }

  return plant.energyleft - 10;
}

enum PlanType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyleft;
  final PlanType type; // nuclear, wind, water

  EnergyPlant({
    required this.energyleft,
    required this.type,
  });

  void consumeEnergy(double amount);
}

// extends
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyleft: initialEnergy, type: PlanType.wind);

  @override
  void consumeEnergy(double amount) {
    energyleft -= amount;
  }
}

// implements
class NuclearPlant implements EnergyPlant {
  @override
  double energyleft;
  final PlanType type = PlanType.nuclear;

  NuclearPlant({required this.energyleft});

  @override
  void consumeEnergy(double amount) {
    energyleft -= (amount * 0.5);
  }
}
