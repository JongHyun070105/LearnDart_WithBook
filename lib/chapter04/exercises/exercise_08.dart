// 연습문제 8: Class Modifiers 기본 사용법
// 목표: 다양한 클래스 제한자를 사용하여 클래스를 정의하세요.
// 요구사항:
// 1) base 클래스 Animal을 만드세요. (name 필드와 makeSound 메서드 포함)
// 2) final 클래스 Dog를 만드세요. (Animal을 상속)
// 3) interface 클래스 Flyable을 만드세요. (fly 메서드 포함)
// 4) sealed 클래스 Shape을 만드세요. (area 메서드 포함)
// 5) 각 클래스의 인스턴스를 생성하고 사용하세요.

import 'dart:math';

base class Animal {
  String name;
  Animal(this.name);
  void makeSound() {
    print('$name이 소리를 냅니다.');
  }
}

final class Dog extends Animal {
  Dog(super.name);
  @override
  void makeSound() {
    print('$name이 멍멍 짖습니다.');
  }
}

interface class Flyable {
  void fly() {
    print('날아갑니다.');
  }
}

sealed class Shape {
  double area() {
    return 0.0;
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Animal animal = Animal('동물');
  Dog dog = Dog('강아지');
  Flyable flyable = Flyable();
  // Shape shape = Shape(); 구체적인 구현체가 없기에 오류 남

  animal.makeSound();
  dog.makeSound();
  flyable.fly();
}
