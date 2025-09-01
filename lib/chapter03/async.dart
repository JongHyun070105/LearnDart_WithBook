// void main() {
//   addNumbers2(3, 4);
// }

// // async 키워드는 함수 매개변수 정의와 바디 사이에 입력
// Future<void> addNumbers2(int n1, int n2) async {
//   print('$n1 + $n2 계산 시작!');

//   // await 키워드는 대기하고 싶은 비동기 함수 앞에 입력
//   await Future.delayed(Duration(seconds: 3), () {
//     print("$n1 + $n2 = ${n1 + n2}");
//   });

//   print('$n1 + $n2 코드 실행 끝');
// }

// 결과값 반환받는 버전
void main() async {
  final result = await addNumbers3(2, 4);
  print(result);

  final result2 = await addNumbers3(3, 4);
  print(result2);
}

Future<int> addNumbers3(int n1, int n2) async {
  print('$n1 + $n2 계산 시작!');

  await Future.delayed(Duration(seconds: 3), () {
    print('$n1 + $n2 = ${n1 + n2}');
  });

  print('$n1 + $n2 계산 끝!');

  return n1 + n2;
}
