// T : 변수 타입을 표현할 때 흔히 사용
// ex) T value;
// E : 리스트 내부 요소들의 타입을 표현할 때 사용
// ex) List<E>
// K : 키를 표현할 때 흔히 사용
// ex) Map<K,V>
// V : 값을 표현할 때 흔히 사용
// ex) Map<K,V>

class Cache<T> {
  // 인스턴스화 할 때 입력받을 타입을 T로 지정
  // data의 타입을 추후 입력될 T 타입으로 지정
  final T data;

  Cache({required this.data});
}

void main() {
  // T 타입을 List<int>로 입력
  final cache = Cache<List<int>>(data: [1, 2, 3]);

  print(cache.data.reduce((value, element) => value + element));
}
