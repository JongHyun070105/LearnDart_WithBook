// 연습문제 4: Future 에러 처리
// 목표: Future에서 발생하는 에러를 처리하세요.
// 요구사항:
// 1) `Future<String> fetchData(bool shouldFail)` 함수를 만드세요.
//    - shouldFail이 true면 2초 후 Exception("데이터 로드 실패") 발생
//    - shouldFail이 false면 2초 후 "데이터 로드 성공" 반환
// 2) `main`에서 try-catch를 사용하여 에러를 처리하세요.

Future<String> fetchData(bool shouldFail) {
  return Future.delayed(Duration(seconds: 2), () {
    if (shouldFail) {
      throw Exception('데이터 로드 실패');
    } else {
      return '데이터 로드 성공';
    }
  });
}

void main() async {
  // TODO: 여기에 구현하세요

  try {
    String result = await fetchData(false);
    print(result);
  } catch (e) {
    print(e);
  }

  try {
    String result = await fetchData(true);
    print(result);
  } catch (e) {
    print(e);
  }
}
