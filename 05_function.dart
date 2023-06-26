void main() {
  print(greetEveryone());

  print("sun total: ${addTwoNumbers(10, 5)}");
}

String greetEveryone() => "hola a todos";

int addTwoNumbers(int a, int b) {
  return a + b;
}

int otherSum(int a, int b) => a + b;

int optinalSum(int a, [int b = 0]) {
  return a + b;
}
