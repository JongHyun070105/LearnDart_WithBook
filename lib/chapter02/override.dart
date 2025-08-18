class Idol {
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  void sayName() {
    print('저는 $name입니다.');
  }

  void sayMembersCount() {
    print('$name 멤버는 $membersCount명입니다.');
  }
}

class BoyGroup extends Idol {
  BoyGroup(super.name, super.membersCount);

  void sayMale() {
    print('저는 남자 아이돌입니다.');
  }
}

class GirlGroup extends Idol {
  GirlGroup(super.name, super.membersCount);

  // override 키워드를 사용해 오버라이드한다
  @override
  void sayName() {
    print('저는 여자 아이돌 $name입니다.');
  }
}

void main() {
  GirlGroup blackPink = GirlGroup('블랙핑크', 4);

  blackPink.sayName(); // 자식 클래스의 오버라이드된 메서드 사용
  blackPink.sayMembersCount(); // 오버라이드하지 않았기에 그대로 부모 클래스 메서드 실행된다
}
