void main() {
  emitNumber().listen((int value) {
    print("stream value : $value");
  });
}

Stream<int> emitNumber() async* {
  final valuesToEmite = [1, 2, 3, 4, 5];

  for (int i in valuesToEmite) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
