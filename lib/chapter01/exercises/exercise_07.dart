// 연습문제 7: 람다 함수
// 리스트의 각 숫자에 2를 곱하는 람다 함수를 작성해보세요.

void main() {
  // TODO: 여기에 람다 함수를 사용하는 코드를 작성해보세요
  List<int> number = [1, 2, 3, 4, 5];

  final returnNumber = number.map((e) => e * 2).toList();
  print(returnNumber);
}
