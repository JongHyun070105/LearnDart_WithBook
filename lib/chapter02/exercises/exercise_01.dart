// 연습문제 1: 클래스 기본
// 목표: `Idol` 클래스를 만들고 `name` 필드와 `sayName()` 메서드를 구현하세요.
// 요구사항:
// 1) `Idol` 클래스에 `name` (String) 필드를 만드세요.
// 2) `name`을 설정하는 생성자를 만드세요.
// 3) "저는 {name}입니다"를 출력하는 `sayName()` 메서드를 만드세요.
// 4) `main`에서 인스턴스를 생성하고 `sayName()`을 호출하세요.

class Idol {
  String name = '종현';

  void sayName() {
    print('저는 $name입니다.');
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Idol myIdol = Idol();
  myIdol.sayName();
}
