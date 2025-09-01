import 'dart:async';

void main() {
  final controller = StreamController();

  // 여러 번 리슨 할 수 있는 Broadcast Stream 객체 생성
  final stream = controller.stream.asBroadcastStream();

  // 첫번째 리슨 함수
  final streamListener1 = stream.listen((val) {
    print('listening 1');
    print(val);
  });

  // 두번째 리슨 함수
  final streamListener2 = stream.listen((val) {
    print('listening 2');
    print(val);
  });

  // add()를 실행할 때마다 listen()하는 모든 콜백 함수에 값이 주입됨
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
}
