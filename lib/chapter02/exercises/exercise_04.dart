// 연습문제 4: 상속
// 목표: `Idol` 클래스와 이를 상속받는 `BoyGroup` 클래스를 만드세요.
// 요구사항:
// 1) `Idol` 클래스에 `name` 필드와 생성자를 만드세요.
// 2) `BoyGroup` 클래스가 `Idol`을 상속받고 `sayMale()` 메서드를 추가하세요.
// 3) `main`에서 인스턴스를 만들고 `sayName()`과 `sayMale()`을 호출하세요.

class Idol {
  String name;
  Idol(this.name);

  void sayName() {
    print(name);
  }
}

class BoyGroup extends Idol {
  BoyGroup(super.name);
  void sayMale() {
    print('남자그룹');
  }
}

void main() {
  BoyGroup bts = BoyGroup('bts');

  bts.sayName();
  bts.sayMale();
}
