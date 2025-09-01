// Future와 다르게 Stream은 지속적으로 값을 반환 받을 때 사용됨
// Stream은 한번 listen하면 Stream에 주입되는 모든 값들을 지속적으로 받아옴

import 'dart:async';

void main() {
  final controller = StreamController(); // StreamController 선언
  final stream = controller.stream; // stream 가져오기

  // listen 함수를 사용해 값이 주입될 때마다 콜백 함수를 실행시킴
  final streamListener1 = stream.listen((val) {
    print(val);
  });

  // stream에 값 주입
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}
