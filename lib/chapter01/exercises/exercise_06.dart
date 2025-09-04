// 연습문제 6: 컬렉션 활용
// 과일 이름들을 담는 리스트를 만들고, for문을 사용해서 모든 과일을 출력해보세요.

void main() {
  // TODO: 여기에 과일 리스트를 만들고 출력하는 코드를 작성해보세요
  List<String> fruit = ['사과', '바나나', '배', '오렌지', '딸기'];

  for (int i = 0; i < fruit.length; i++) {
    print(fruit[i]);
  }
}
