// 다트에선 함수는 일급 객체이므로 함수를 값처럼 사용할 수 있음
// typedef는 함수의 시그니처를 정의하는 값으로 보면 됨
// 시그니처는 반환값 타입, 매개변수 개수와 타입

typedef Operation = void Function(int x, int y);

void add(int x, int y) {
  print('결과값 : ${x + y}');
}

void subtract(int x, int y) {
  print('결과값 : ${x - y}');
}

void calculate(int x, int y, Operation oper) {
  oper(x, y);
}

void main() {
  // typedef는 일반적인 변수의 type처럼 사용 가능
  Operation oper = add;
  oper(1, 2);

  oper = subtract;
  oper(1, 2);

  calculate(1, 2, add);
}
