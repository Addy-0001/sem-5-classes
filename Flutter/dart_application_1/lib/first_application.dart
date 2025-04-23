void main() {
  print(add(2, 3));
  print(add(2, 3, 4));
  print(add(2, 3, 4, 5));
  print(add(2, 3, 4, 5, 6));

  print(sub(first: 2, second: 3));
  print(sub(first: 2, second: 3, fifth: 5));
  print(swapNumbers(4, 5));
}

int add(int first, int second, [int third = 0, int fourth = 0, int fifth = 0]) {
  return first + second + third + fourth + fifth;
}

int sub({
  required int first,
  required int second,
  int? third,
  int? fourth,
  int? fifth,
}) {
  return first - second - (third ?? 0) - (fourth ?? 0) - (fifth ?? 0);
}

String swapNumbers(int num1, int num2) {
  print("var1 = $num1, var2=$num2");
  num1 = num1 + num2;
  num2 = num1 - num2;
  num1 = num1 - num2;

  return "var1=$num1, var2=$num2";
}
