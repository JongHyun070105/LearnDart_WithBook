class Idol {
  // 클래스에 종속되는 변수 지정
  String name = '블랙핑크';

  // 클래스에 종속되는 함수 지정
  void sayName() {
    // 메서드라고 함
    // 클래스 내부의 속성을 지칭할 때는 this 키워드 사용
    print('저는 ${this.name}입니다.'); // idol 클래스의 name 변수를 지칭함

    // 함수 스코프 안에 같은 속성 이름이 하나만 존재한다면 this를 생략할 수 있음
    print('저는 $name입니다.');
  }
}

void main() {
  // 변수 타입을 Idol로 지정하고 Idol의 인스턴스를 생성
  Idol blackPink = Idol();
  blackPink.sayName();
}
