// 연습문제 9: 종합 문제 - 간단한 계산기
// 두 개의 숫자와 연산자(+, -, *, /)를 변수에 저장하고 결과를 출력하는 프로그램을 작성해보세요.
// 잘못된 연산자 입력 시 예외 처리를 포함해보세요.

void main() {
  // TODO: 여기에 계산기 코드를 작성해보세요
  double number1 = 10;
  double number2 = 20;
  String operator = '+';

  try {
    double result;

    if (operator == '+') {
      result = number1 + number2;
    } else if (operator == '-') {
      result = number1 - number2;
    } else if (operator == '*') {
      result = number1 * number2;
    } else if (operator == '/') {
      result = number1 / number2;
    } else {
      throw Exception("잘못된 연산자: $operator");
    }

    print('$number1 $operator $number2 = $result');
  } catch (e) {
    print(e);
  }
}
