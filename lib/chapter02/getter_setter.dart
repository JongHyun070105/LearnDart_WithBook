// 게터는 값을 가져올 때 사용, 세터는 값을 지정할 때 사용
// 최근에는 객체지향 프로그래밍을 할 때 변수의 값에 불변성을
// 특성으로 사용하기 때문에 세터는 거의 사용하지 않음

class Idol {
  String _name = '블랙핑크';

  // 게터는 get 키워드를 사용해서 명시
  // 메소드와 다르게 매개변수를 받지 않음
  String get name {
    return this._name;
  }

  // 세터는 set 키워드를 사용해서 선언
  // 매개변로 딱 하나의 변수를 받을 수 있음
  set name(String name) {
    this._name = name;
  }
}

void main() {
  Idol blackPink = Idol();
  blackPink.name = '에이핑크'; // 세터
  print(blackPink.name); // 게터
}
