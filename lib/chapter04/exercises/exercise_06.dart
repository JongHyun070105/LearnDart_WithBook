// 연습문제 6: Switch Pattern Matching
// 목표: Switch 문의 패턴 매칭을 사용하여 다양한 데이터 타입을 처리하세요.
// 요구사항:
// 1) 다양한 타입의 데이터를 담는 List를 만드세요. (int, String, double, bool 포함)
// 2) Switch 문을 사용하여 각 타입에 따라 다른 메시지를 출력하세요.
// 3) when 절을 사용하여 추가 조건을 확인하세요.

void main() {
  // TODO: 여기에 구현하세요
  List<dynamic> allData = [1, 2, '와우', true, 1.23];

  void switcher(dynamic anything) {
    switch (anything) {
      case int _ when anything > 0:
        print('type is int');
        break;
      case String _ when anything.isNotEmpty:
        print('type is String');
        break;
      case double _ when anything > 0.0:
        print('type is double');
        break;
      case bool _:
        print('type is bool');
        break;
      default:
        print("I don't know type");
    }
  }

  switcher(allData[0]);
  switcher(allData[2]);
  switcher(allData[3]);
  switcher(allData[4]);
}
