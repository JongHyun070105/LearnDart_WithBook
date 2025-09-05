// 연습문제 6: async* 함수
// 목표: async*를 사용하여 Stream을 생성하는 함수를 만드세요.
// 요구사항:
// 1) `Stream<String> countDown(int start)` 함수를 만드세요.
//    - start부터 1까지 카운트다운하며 각 숫자를 1초 간격으로 yield
// 2) `main`에서 countDown(5)를 호출하고 결과를 출력하세요.

import 'dart:async';

void main() {
  // TODO: 여기에 구현하세요
  countDown(5).listen((number) {
    print('카운트 다운: $number');
  });
}

Stream<String> countDown(int start) async* {
  for (int i = start; i >= 1; i--) {
    yield i.toString();
    await Future.delayed(Duration(seconds: 1));
  }
}
