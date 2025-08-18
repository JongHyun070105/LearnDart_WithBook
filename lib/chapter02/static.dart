// 간단하게 말하면 전역 변수. 즉 클래스 자체에 귀속됨
// 인스턴스끼리 공유해야 하는 정보에 지정하면 됨
class Counter {
  static int i = 0;

  // static 변수 선언
  Counter() {
    i++;
    print(i++);
  }
}

void main() {
  Counter count1 = Counter();
  Counter count2 = Counter();
  Counter count3 = Counter();
}
