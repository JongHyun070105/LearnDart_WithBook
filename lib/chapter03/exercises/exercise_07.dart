// 연습문제 7: Stream 변환
// 목표: Stream의 데이터를 변환하는 방법을 학습하세요.
// 요구사항:
// 1) 1부터 10까지의 숫자를 생성하는 Stream을 만드세요.
// 2) map()을 사용하여 각 숫자를 "숫자: {number}" 형태로 변환하세요.
// 3) where()을 사용하여 짝수만 필터링하세요.
// 4) 결과를 출력하세요.

import 'dart:async';

Stream<int> countStream(int max) async* {
  for (int i = 1; i <= max; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

void main() async {
  // 스트림 생성
  var stream = countStream(10);

  // 스트림의 데이터 처리
  stream
      .where((number) => number % 2 == 0)
      .map((number) => '숫자 $number')
      .listen((result) {
        print(result);
      });
}
