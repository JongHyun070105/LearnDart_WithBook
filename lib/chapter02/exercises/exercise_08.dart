// 연습문제 8: 제네릭
// 목표: 제네릭 클래스 `Box<T>`를 만들어 값을 저장하고 반환하세요.
// 요구사항:
// 1) `Box<T>` 클래스에 `T value` 필드와 생성자를 만드세요.
// 2) `T getValue()` 메서드로 값을 반환하세요.
// 3) `main`에서 `Box<int>`와 `Box<String>`을 만들고 값을 출력하세요.

class Box<T> {
  T value;

  Box(this.value);

  T getValue() => value;
}

void main() {
  // TODO: 여기에 구현하세요

  Box<int> intBox = Box(12);
  Box<String> strBox = Box('boxbox');

  print(intBox.getValue());
  print(strBox.getValue());
}
