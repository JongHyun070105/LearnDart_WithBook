// 연습문제 4: Map Destructuring
// 목표: Map의 구조 분해 할당을 사용하여 데이터를 추출하세요.
// 요구사항:
// 1) 사용자 정보를 담는 Map을 만드세요. (name, age, city 키 포함)
// 2) Map destructuring을 사용하여 각 값을 변수로 추출하세요.
// 3) 추출한 값들을 사용하여 사용자 정보를 출력하세요.

void main() {
  // TODO: 여기에 구현하세요
  final user = {'name': '종현', 'age': 19, 'city': '서울'};

  final {'name': name, 'age': age, 'city': city} = user;

  print("User: $name, $age, $city");
}
