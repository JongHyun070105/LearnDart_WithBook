// 연습문제 8: 예외 처리
// 0으로 나누기를 시도할 때 예외를 처리하는 try-catch문을 작성해보세요.

void main() {
  // TODO: 여기에 예외 처리 코드를 작성해보세요
  try {
    int a = 10;
    int b = 0;

    int result = a ~/ b;
    print(result);
  } catch (e) {
    print(e);
  }
}
