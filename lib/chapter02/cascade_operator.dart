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

void main() {
  // cascade operator (..)을 사용하면 선언한 변수의 메서드를 연속으로 사용 가능
  // => 더욱 간결한 코드 작성 가능
  Idol blackPink = Idol('블랙핑크', 4)
    ..sayName()
    ..sayMembersCount();
}
