// 연산자 종류 : 수치 연산자, null값 입력 관련 연산자, 값 비교 연산자, 타입 비교 연산자, 논리 연산자

void main() {
  // 기본 수치 연산자
  double number = 2;

  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  print(number % 3);

  print('');

  // 단항 연산자
  print(number++);
  print(number--);
  print(number += 2);
  print(number -= 2);
  print(number *= 2);
  print(number /= 2);

  print('');

  // null 관련 연산자
  double? number1 = 1;

  // double number2 = null; // 타입 뒤에 ? 명시 안하면 오류 남. 다트는 코틀린과 같이 널값이 가능한것과 아닌 것으로 구분함
  double? number2;
  print(number2);

  number2 ??= 3; // ??를 사용하면 기존값이 null일때만 저장됨
  print(number2);

  number2 ??= 4; // null이 아니라 3이 들어있기에 기존값 유지됨
  print(number2);

  print('');

  // 값 비교 연산자
  int number3 = 1;
  int number4 = 2;

  print(number3 > number4);
  print(number3 < number4);
  print(number3 >= number4);
  print(number3 <= number4);
  print(number3 == number4);
  print(number3 != number4);

  print('');

  // 타입 비교 연산자
  int number5 = 1;

  print(number5 is int);
  print(number5 is String);
  print(number5 is! int); // !는 반대일때 true. 즉 int가 아니면 true
  print(number5 is! String);

  print('');

  // 논리 연산자
  bool result = 12 > 10 && 1 > 0;
  print(result);

  bool result2 = 12 > 10 && 0 > 1;
  print(result2);

  bool result3 = 12 > 10 || 1 > 0;
  print(result3);

  bool result4 = 12 > 10 || 0 > 1;
  print(result4);

  bool result5 = 12 < 10 || 0 > 1;
  print(result5);
}
