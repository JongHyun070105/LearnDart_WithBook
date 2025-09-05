// 연습문제 3: 게터와 세터
// 목표: `Member` 클래스에 private `_age` 필드와 public 게터/세터를 만드세요.
// 요구사항:
// 1) `_age` (int) private 필드를 만드세요.
// 2) `int get age` 게터를 만드세요.
// 3) `set age(int value)` 세터를 만드세요. (값이 0보다 작으면 `ArgumentError` 발생)
// 4) `main`에서 유효한 값과 무효한 값을 설정하고 에러를 처리하세요.

class Member {
  int _age;

  Member(this._age);

  int get age {
    return _age;
  }

  set age(int value) {
    if (value < 0) {
      throw ArgumentError();
    }
    _age = value;
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Member mm = Member(19);
  print(mm.age);
}
