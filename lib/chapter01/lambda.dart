// 람다와 익명 함수는 둘 다 함수 이름이 없고,일쇠성으로 사용된다는 공통점이 있음
/*
* 익명함수
* (매개변수){
* 함수 바디
* }
* 
* 람다 함수
* (매개변수) => 단 하나의 스테이트먼트
*/

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // 일반 함수로 모든 값 더하기
  final allMembers = numbers.reduce((value, element) {
    return value + element;
  });

  print(allMembers);

  // 람다 함수로 모든 값 더하기
  final allMembersLambda = numbers.reduce((value, element) => value + element); // 한줄로 끝내서 깔끔하고 가독성이 높음

  print(allMembersLambda);
}
