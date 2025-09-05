// 연습문제 5: Stream 기본
// 목표: StreamController를 사용하여 데이터 스트림을 만들고 처리하세요.
// 요구사항:
// 1) StreamController<int>를 생성하세요.
// 2) 1부터 5까지의 숫자를 1초 간격으로 스트림에 추가하세요.
// 3) listen()을 사용하여 스트림 데이터를 받아서 출력하세요.

import 'dart:async';

void main() {
  final controller = StreamController<int>();
  final stream = controller.stream;

  stream.listen((number) {
    print('받은 숫자: $number');
  });

  for (int i = 1; i <= 5; i++) {
    Future.delayed(Duration(seconds: i), () {
      controller.sink.add(i);
    });
  }
}
