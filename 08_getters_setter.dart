void main() {
  final mySquery = Squere(side: -10);

  mySquery.side = -5;

  print('area: ${mySquery.area}');
}

class Squere {
  double _side;

  Squere({required double side})
      : assert(side >= 0, 'Error side debe ser mayor o igual a 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value ${value}');

    if (value < 0) throw 'el valor debe ser mayor a 0';

    _side = value;
  }

  double calculateAre() {
    return _side * _side;
  }
}
