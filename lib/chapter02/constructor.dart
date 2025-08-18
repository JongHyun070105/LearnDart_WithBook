class Idol {
  // 생성자에서 입력받는 변수들은 일반적으로 final 사용
  final String name;

  // 생성자 선언 - 클래스와 같은 이름이여야 함, 함수의 매개변수 선언처럼 매개변수 지정
  Idol(String name) : this.name = name;
  // Idol(this.name); 과 같이 축약도 가능

  void sayName() {
    print('저는 ${this.name}입니다.');
  }
}

void main() {
  Idol blackPink = Idol('블랙핑크');
  blackPink.sayName();

  Idol bts = Idol('Bts');
  bts.sayName();
}
