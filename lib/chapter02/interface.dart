// 상속과 인터페이스의 차이
// 상속 받을 때에는 부모 클래스의 모든 기능이 상속되어서 재정의할 필요 X
// 인터페이스는 반드시 모든 기능을 다시 정의해줘야함

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

class GirlGroup implements Idol {
  @override
  final String name;
  @override
  final int membersCount;

  GirlGroup(this.name, this.membersCount);

  @override
  void sayName() {
    print('저는 여자 아이돌 $name입니다.');
  }

  @override
  void sayMembersCount() {
    print('$name 멤버는 $membersCount명입니다.');
  }
}

void main() {
  GirlGroup blackPink = GirlGroup('블랙핑크', 4);

  blackPink.sayName();
  blackPink.sayMembersCount();
}
