// 여러 곳에서 재활용할 수 있음
// 반환값이 없으면 void 사용
int addTwoNumbers(int a, int b) {
  return a + b;
}

// 매개변수 값을 순서대로 입력하지 않고 매개변수를 선언해서 입력하는 방법
int addTwoNumbers2({required int a, required int b}) {
  // required 는 매개변수가 null값이 불가능한 타입이면 기본값을 지정하거나 필수로 입력해야한다는 의미
  return a + b;
}

// 매개변수가 기본값을 가질 때
int addTwoNumbers3(int a, [int b = 2]) {
  return a + b;
}

// 네임드 파라미터 + 기본값 가질 때
int addTwoNumbers4({required int a, int b = 2}) {
  return a + b;
}

// 포지셔널 파라미터 + 네임드 파라미터
int addTwoNumbers5(int a, {required int b, int c = 4}) {
  return a + b + c;
}

void main() {
  print(addTwoNumbers(1, 2));
  print(addTwoNumbers2(a: 1, b: 2));
  print(addTwoNumbers3(1));
  print(addTwoNumbers4(a: 1));
  print(addTwoNumbers5(1, b: 3, c: 7));
}
