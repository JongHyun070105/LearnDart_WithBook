// 연습문제 5: Class Destructuring
// 목표: 클래스의 구조 분해 할당을 사용하여 데이터를 추출하세요.
// 요구사항:
// 1) Product 클래스를 만드세요. (name, price, category 필드 포함)
// 2) Product 인스턴스를 생성하세요.
// 3) Class destructuring을 사용하여 각 필드를 변수로 추출하세요.
// 4) 추출한 값들을 사용하여 제품 정보를 출력하세요.

class Product {
  final String name;
  final double price;
  final String category;

  Product({required this.name, required this.price, required this.category});
}

void main() {
  // TODO: 여기에 구현하세요

  Product product = Product(name: '당근', price: 2000, category: '음식');

  final Product(name: name, price: price, category: category) = product;

  print(name);
  print(price);
  print(category);
}
