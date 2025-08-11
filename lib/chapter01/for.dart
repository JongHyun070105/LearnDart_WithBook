void main() {
  // 값 선언 ; 조건 설정 ; 반복 횟수마다 실행할 기능
  for (int i = 0; i < 3; i++) {
    print(i);
  }

  // 다트에선 for..in 패턴의 for문도 제공함
  // List의 모든 값을 순회하고 싶을 떄 사용
  List<int> numberList = [3, 6, 9];

  for (int number in numberList) {
    print(number);
  }
}
