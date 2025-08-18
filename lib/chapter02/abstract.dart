abstract class Idol {
  final String name;
  final int membersCount;

  Idol(this.name, this.membersCount);

  void sayName();
  void sayMembersCount();
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
