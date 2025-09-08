// 간단한 구조 분해 예시

// void main() {
//   /* 아래와 같은 코드를
//   final newJeans = ['민지', '해린'];

//   final minji = newJeans[0];
//   final haerin = newJeans[1];
//   */

//   // 이런식으로 간단하게 한줄로 작성 가능
//   final [minji, haerin] = ['민지', '해린'];

//   print(haerin);
// }

// 스프레드 연산자를 이용한 구조 분해

// void main() {
//   final numbers = [1, 2, 3, 4, 5, 6, 7, 8];

//   // 아래 스프레드 연산자를 (...) 사용하면 중간값은 전부 버림
//   final [x, y, ..., z] = numbers;

//   print(x);
//   print(y);
//   print(z);
// }

// Map에서 구조 분해

// void main() {
//   final hyunMap = {'name': '종현', 'age': 19};

//   final {'name': name, 'age': age} = hyunMap;

//   print('name: $name');
//   print('age: $age');
// }

// Class 에서의 구조 분해

void main() {
  final hyun = Student(name: '종현', age: 19);

  final Student(name: name, age: age) = hyun;

  print(name);
  print(age);
}

class Student {
  final String name;
  final int age;

  Student({required this.name, required this.age});
}
