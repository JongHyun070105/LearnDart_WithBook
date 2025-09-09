// base 제한자

// base class Parent {}

// Parent parent = Parent();

// base class Child extends Parent {}

// // base 클래스가 아닌 자식 클래스가 상속하려하면  base', 'final' or 'sealed' 가 필요함
// // class Child2 extends Parent {} 에러 발생

// // base 클래스는 implements 불가
// // class Child3 implements Parent {}

// final 제한자
// 같은 파일에서 상속과 재정의를 할 수 있지만 외부 파일에선 할 수 없음 base의 제한자의 기능을 모두 포함함

// final class Parent {}

// Parent parent = Parent();

// // extends 불가능
// // class Child extends Parent {}

// // implements 불가능
// // class Child2 implements Parent{}

// interface 제한자
// 클래스를 외부파일에서 상속 받지 못하고, 재정의만 할 수 있도록 제한함

// interface class Parent{}

// // 현재 같은 파일이라 가능. 다른 파일이면 오류 남
// // class Child extends Parent{}

// // 정상적으로 재정의 가능
// class Child2 implements Parent{}

// sealed 제한자
// sealed 클래스를 파일 외부에서 상속, 재정의, 인스턴스화 할 수 없음

// sealed class Parent {}

// Parent parent = Parent();

// class Child extends Parent {}

// class Child2 implements Parent {}

// mixin 제한자

// mixin class MixinExample {}

// // extends 가능
// class Child extends MixinExample {}

// // 기존처럼 with 도 사용가능
// class Child2 with MixinExample {}
