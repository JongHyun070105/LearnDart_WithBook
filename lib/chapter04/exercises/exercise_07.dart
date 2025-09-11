// 연습문제 7: Records와 Switch 조합
// 목표: Records와 Switch 패턴 매칭을 조합하여 사용하세요.
// 요구사항:
// 1) 좌표를 나타내는 record를 만드세요. (x, y)
// 2) 여러 좌표를 담는 List를 만드세요.
// 3) Switch 문을 사용하여 좌표의 위치에 따라 다른 메시지를 출력하세요.
//   - (0, 0): 원점
//   - (x, 0): x축 위
//   - (0, y): y축 위
//   - (x, y): 일반적인 점

void main() {
  // TODO: 여기에 구현하세요
  (int x, int y) point1 = (0, 0);
  (int x, int y) point2 = (3, 0);
  (int x, int y) point3 = (0, 4);
  (int x, int y) point4 = (2, 3);

  List<(int x, int y)> points = [point1, point2, point3, point4];

  void switchRespone((int x, int y) point) {
    switch (point) {
      case (0, 0):
        print('원점');
        break;
      case (int x, 0) when x > 0:
        print('x축 위');
        break;
      case (0, int y) when y > 0:
        print('y축 위');
        break;
      case (int x, int y):
        print('일반적인 점 ($x, $y)');
        break;
    }
  }

  for (var point in points) {
    switchRespone(point);
  }
}
