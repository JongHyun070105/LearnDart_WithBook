// 연습문제 1: Future 기본
// 목표: Future를 사용하여 비동기 작업을 구현하세요.
// 요구사항:
// 1) `Future<String> fetchUserName()` 함수를 만드세요. (3초 후 "홍길동" 반환)
// 2) `Future<int> fetchUserAge()` 함수를 만드세요. (2초 후 25 반환)
// 3) `main`에서 두 함수를 순차적으로 호출하고 결과를 출력하세요.

Future<String> fetchUserName() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return '홍길동';
  });
}

Future<int> fetchUserAge() {
  return Future<int>.delayed(Duration(seconds: 2), () {
    return 25;
  });
}

void main() async {
  // TODO: 여기에 구현하세요
  String name = await fetchUserName();
  int age = await fetchUserAge();

  print(name);
  print(age);
}
