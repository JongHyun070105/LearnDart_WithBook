// 연습문제 2: async/await
// 목표: async/await를 사용하여 비동기 작업을 순차적으로 처리하세요.
// 요구사항:
// 1) `Future<String> downloadFile(String fileName)` 함수를 만드세요. (2초 후 "파일 다운로드 완료: {fileName}" 반환)
// 2) `Future<String> processFile(String fileName)` 함수를 만드세요. (1초 후 "파일 처리 완료: {fileName}" 반환)
// 3) `main`에서 async/await를 사용하여 두 함수를 순차적으로 호출하세요.

Future<String> downloadFile(String fileName) {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return '파일 다운로드 완료: $fileName';
  });
}

Future<String> processFile(String fileName) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return '파일 처리 완료: $fileName';
  });
}

void main() async {
  // TODO: 여기에 구현하세요
  String download = await downloadFile('MyFirstFile');
  String process = await processFile('MyFirstFile');

  print(download);
  print(process);
}
