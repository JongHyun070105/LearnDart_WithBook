import 'dart:async';

// Stream 반환하는 함수는 async*을 사용. Future는 async 사용
Stream<String> calculate(int n) async* {
  for (int i = 0; i < 5; i++) {
    yield 'i = $i';
    await Future.delayed(Duration(seconds: 3));
  }
}

void playStream() {
  calculate(1).listen((val) {
    print(val);
  });
}

void main() {
  playStream();
}
