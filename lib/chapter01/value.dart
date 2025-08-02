void main() {
  // final은 런타임, const는 빌드 타임 상수

  final String name = '종현';
  // name = '시우'; // 에러 발생, final로 선언한 변수는 선언 후 값 변경 X

  const int age = 19;
  // age = 7; // 에러 발생, const로 선언한 변수는 선언 후 값 변겅 X

  final DateTime now = DateTime.now();
  print(now);

  // const DateTime now2 = DateTime.now(); // const는 빌드 타임에 값을 알 수 있어야하는데 DateTime.now()함수는 런타임에 값을 알 수 있기에 오류남
  // -> 코드를 실행하지 않은 상태에서 값이 확정되면 const, 실행될 때 확정되면 final을 사용
}
