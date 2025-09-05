// 연습문제 10 (심화): 비동기 데이터 처리 시스템
// 목표: 실제 애플리케이션과 유사한 비동기 데이터 처리 시스템을 구현하세요.
// 요구사항:
// 1) `Future<String> fetchDataFromAPI(String endpoint)` 함수를 만드세요. (2초 후 "API 데이터: {endpoint}" 반환)
// 2) `Stream<String> processDataStream(String data)` 함수를 만드세요. (데이터를 3개로 분할하여 0.5초 간격으로 yield)
// 3) `Future<void> saveToDatabase(String data)` 함수를 만드세요. (1초 후 "DB 저장 완료: {data}" 출력)
// 4) `main`에서 API 호출 → 데이터 스트림 처리 → DB 저장의 전체 파이프라인을 구현하세요.

import 'dart:async';

void main() {
  // TODO: 여기에 구현하세요
}
