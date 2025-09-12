// 연습문제 9 (심화): 복합 Records와 Destructuring
// 목표: 중첩된 Records와 복잡한 Destructuring을 구현하세요.
// 요구사항:
// 1) 학생의 기본 정보와 성적을 담는 중첩 record를 만드세요.
//   - 기본 정보: (name, age)
//   - 성적: (korean, english, math)
//   - 전체: (기본정보, 성적)
// 2) 여러 학생의 데이터를 담는 List를 만드세요.
// 3) Destructuring을 사용하여 각 학생의 평균 점수를 계산하세요.
// 4) 평균이 80점 이상인 학생만 출력하세요.

void main() {
  // TODO: 여기에 구현하세요
  ((String name, int age) basicInfo, (int korean, int english, int math) score)
  std1 = (('종현', 19), (80, 80, 90));

  ((String name, int age) basicInfo, (int korean, int english, int math) score)
  std2 = (('동균', 19), (50, 80, 90));

  List<
    (
      (String name, int age) basicInfo,
      (int korean, int english, int math) score,
    )
  >
  students = [std1, std2];

  for (var student in students) {
    final (
      (name, age), // ✅ positional destructuring
      (korean, english, math), // ✅ positional destructuring
    ) = student;

    double average = (korean + english + math) / 3;

    if (average >= 80) {
      print('$name ($age세): 평균 ${average.toStringAsFixed(1)}점');
    }
  }
}
