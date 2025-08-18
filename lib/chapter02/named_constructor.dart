class Idol {
  final String name;
  final int memberCount;

  // 생성자
  Idol(String name, int memberCount) : name = name, memberCount = memberCount;

  // 네임드 생성자
  Idol.fromMap(Map<String, dynamic> map)
    : this.name = map['name'],
      this.memberCount = map['memberCount'];

  void sayName() {
    print('저는 ${this.name}입니다. ${this.name} 멤버는 ${this.memberCount}명입니다.');
  }
}

void main() {
  Idol blackPink = Idol('블랙핑크', 4);
  blackPink.sayName();

  Idol bts = Idol.fromMap({'name': 'bts', 'memberCount': 7});
  bts.sayName();
}
