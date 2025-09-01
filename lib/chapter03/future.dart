// Future는 List나 Set처럼 제네릭으로 어떤 미래의 값을 받아올지 정할 수 있음

void main() {
  addNumbers(3, 4);
}

void addNumbers(int n1, int n2) {
  print("$n1 + $n2 = ${n1 + n2}");

  // delayed 사용시 일정 시간 뒤 콜백 함수를 실행할 수 있음
  Future.delayed(Duration(seconds: 3), () {
    print("$n1 + $n2 = ${n1 + n2}");
  });

  print('$n1 + $n2 코드 실행 끝');
}
