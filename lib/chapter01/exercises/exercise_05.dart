// 연습문제 5: 함수 만들기
// 두 개의 정수를 받아서 더 큰 수를 반환하는 함수를 작성해보세요.

void main() {
  // TODO: 여기에 함수를 호출하는 코드를 작성해보세요
  int result = getMax(10, 11);
  print(result);
}

// TODO: 여기에 getMax 함수를 작성해보세요

int getMax(int a, int b) {
  if (a > b) {
    return a;
  } else if (b > a) {
    return b;
  } else {
    return 0;
  }
}
