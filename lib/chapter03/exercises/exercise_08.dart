// 연습문제 8: Broadcast Stream
// 목표: Broadcast Stream을 사용하여 여러 리스너가 같은 스트림을 구독하도록 하세요.
// 요구사항:
// 1) StreamController를 Broadcast Stream으로 만드세요.
// 2) 두 개의 리스너를 등록하세요.
//    - 첫 번째: "리스너1: {data}" 출력
//    - 두 번째: "리스너2: {data}" 출력
// 3) 1부터 3까지의 숫자를 스트림에 추가하세요.

import 'dart:async';

void main() {
  // TODO: 여기에 구현하세요

  final controller = StreamController.broadcast();
  final stream = controller.stream;

  final streamListener1 = stream.listen((data) {
    print('리스너1: $data');
  });

  final streamListener2 = stream.listen((data) {
    print('리스너2: $data');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}
