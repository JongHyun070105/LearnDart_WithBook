// 연습문제 5: 인터페이스 (implements)
// 목표: `Performer` 인터페이스를 만들고 `Dancer` 클래스가 이를 구현하도록 하세요.
// 요구사항:
// 1) `Performer` 추상 클래스에 `void perform()` 메서드를 만드세요.
// 2) `Dancer` 클래스가 `Performer`를 구현하고 `perform()`을 오버라이드하세요.
// 3) `main`에서 `Dancer` 인스턴스를 만들고 `perform()`을 호출하세요.

abstract class Performer {
  void perform();
}

class Dancer extends Performer {
  @override
  void perform() {
    // TODO: implement perform
    print('춤을 춘다.');
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Dancer dc = Dancer();
  dc.perform();
}
