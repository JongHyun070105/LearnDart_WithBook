// 연습문제 1: Records 기본 사용법
// 목표: Records를 사용하여 관련된 데이터를 그룹화하세요.
// 요구사항:
// 1) 학생의 이름, 나이, 성적을 담는 positional record를 만드세요.
// 2) 직원의 이름, 부서, 급여를 담는 named record를 만드세요.
// 3) 각 record의 데이터를 출력하세요.

void main() {
  // TODO: 여기에 구현하세요
  (String name, int age, int score) Student = ('종현', 19, 100);
  ({String name, String boo, int money}) People = (
    name: '동균',
    boo: '소프트웨어 개발',
    money: 100,
  );

  print(Student);
  print(People);
}
