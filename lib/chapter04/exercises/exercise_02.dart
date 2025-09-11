// 연습문제 2: Records를 함수의 반환값으로 사용
// 목표: Records를 사용하여 함수에서 여러 값을 반환하세요.
// 요구사항:
// 1) 두 수의 사칙연산 결과를 반환하는 함수를 만드세요.
// 2) 함수는 (덧셈, 뺄셈, 곱셈, 나눗셈) 결과를 record로 반환하세요.
// 3) 10과 3을 입력으로 사용하여 결과를 출력하세요.
(double add, double minus, double mul, double div) calculate(
  double a,
  double b,
) {
  return (a + b, a - b, a * b, a / b);
}

void main() {
  // TODO: 여기에 구현하세요
  final result = calculate(10, 3);
  print(result.$1);
  print(result.$2);
  print(result.$3);
  print(result.$4);
}
