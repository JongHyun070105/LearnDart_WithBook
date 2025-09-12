// 연습문제 10 (심화): 실무 패턴 구현
// 목표: Records, Destructuring, Switch, Class Modifiers를 모두 활용한 실무 패턴을 구현하세요.
// 요구사항:
// 1) API 응답을 나타내는 record를 만드세요. (status, data, message)
// 2) sealed 클래스 Result를 만드세요. (Success, Error, Loading 상태)
// 3) API 호출을 시뮬레이션하는 함수를 만드세요.
// 4) Switch 패턴 매칭을 사용하여 Result 타입에 따라 다른 처리를 하세요.
// 5) Destructuring을 사용하여 API 응답 데이터를 추출하고 출력하세요.

({String status, dynamic data, String? message}) apiResponse = (
  status: 'success',
  data: {'name': '홍길동', 'age': 25},
  message: null,
);

void main() async {
  Result result = await fetchData();

  switch (result) {
    case Success(data: final data):
      // Destructuring으로 데이터 추출
      final {'name': name, 'age': age} = data;
      print('이름: $name, 나이: $age');
      break;
    case Error(message: final message):
      print('에러: $message');
      break;
    case Loading():
      print('로딩 중...');
      break;
  }
}

sealed class Result {}

class Success extends Result {
  final dynamic data;
  Success(this.data);
}

class Error extends Result {
  final String message;
  Error(this.message);
}

class Loading extends Result {}

Future<Result> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return Success({'name': '홍길동', 'age': 25});
}

void handleResult(Result result) {
  switch (result) {
    case Success(data: final data):
      print('성공: $data');
      break;
    case Error(message: final message):
      print('에러: $message');
      break;
    case Loading():
      print('로딩 중...');
      break;
  }
}
