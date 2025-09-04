// 연습문제 4: 반복문 연습
// 1부터 10까지의 숫자를 출력하는 프로그램을 for문과 while문으로 각각 작성해보세요.

void main() {
  int i = 0;
  // TODO: for문으로 1부터 10까지 출력
  print('=== for문 사용 ===');

  for (int i = 0; i <= 10; i++) {
    print(i);
  }
  // TODO: while문으로 1부터 10까지 출력

  print('\n=== while문 사용 ===');

  while (i <= 10) {
    print(i);
    i++;
  }
}
