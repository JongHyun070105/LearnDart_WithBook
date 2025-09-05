// 연습문제 6: 추상 클래스
// 목표: `Shape` 추상 클래스와 이를 상속받는 `Rectangle`, `Circle` 클래스를 만드세요.
// 요구사항:
// 1) `Shape` 추상 클래스에 `double area()` 추상 메서드를 만드세요.
// 2) `Rectangle(width, height)`와 `Circle(radius)` 클래스가 `area()`를 구현하세요.
// 3) `main`에서 두 클래스의 인스턴스를 만들고 넓이를 출력하세요.

import 'dart:math';

abstract class Shape {
  double area();
}

class Rectangle implements Shape {
  final double height;

  final double width;

  Rectangle(this.height, this.width);

  @override
  double area() {
    return height * width;
  }
}

class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double area() {
    return (radius * radius) / pi;
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Rectangle rc = Rectangle(10, 15);
  print(rc.area());

  Circle cl = Circle(10);
  print(cl.area());
}
