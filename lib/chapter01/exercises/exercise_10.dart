// 연습문제 10: 종합 문제 - 성적 관리 시스템
// 학생의 이름, 국어, 영어, 수학 점수를 변수에 저장하고 평균을 계산하여 등급을 출력하는 프로그램을 작성해보세요.
// 평균 90점 이상: A, 80점 이상: B, 70점 이상: C, 나머지: D

void main() {
  // TODO: 여기에 성적 관리 시스템 코드를 작성해보세요
  (String, int, int, int) student = ("종현", 100, 80, 60);
  double mean = (student.$2 + student.$3 + student.$4) / 3;
  if (mean >= 90) {
    print('A');
  } else if (mean >= 80) {
    print('B');
  } else if (mean >= 70) {
    print('C');
  } else if (mean < 70) {
    print('D');
  }
}
