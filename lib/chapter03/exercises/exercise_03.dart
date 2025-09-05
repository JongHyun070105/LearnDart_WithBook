// 연습문제 3: Future.then() 체이닝
// 목표: Future.then()을 사용하여 비동기 작업을 체이닝하세요.
// 요구사항:
// 1) `Future<int> getRandomNumber()` 함수를 만드세요. (1초 후 1~10 랜덤 숫자 반환)
// 2) `Future<String> formatNumber(int number)` 함수를 만드세요. (0.5초 후 "숫자: {number}" 반환)
// 3) `main`에서 then() 체이닝을 사용하여 두 함수를 연결하세요.

import 'dart:math';

Future<int> getRandomNumber() {
  return Future.delayed(Duration(seconds: 1), () {
    return Random().nextInt(10) + 1;
  });
}

Future<String> formatNumber(int number) {
  return Future<String>.delayed(Duration(milliseconds: 500), () {
    return '숫자: $number';
  });
}

void main() {
  // TODO: 여기에 구현하세요
  getRandomNumber()
      .then((number) {
        return formatNumber(number);
      })
      .then((formattedString) {
        print(formattedString);
      });
}
