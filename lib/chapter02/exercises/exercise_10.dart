// 연습문제 10 (심화): 제네릭 리포지토리 패턴
// 목표: 제네릭을 사용하여 간단한 인메모리 리포지토리를 구현하세요.
// 요구사항:
// 1) `Repository<T>` 인터페이스를 만드세요: `void save(String id, T item)`, `T? findById(String id)`, `bool delete(String id)`.
// 2) `Map<String, T>`를 사용하여 `InMemoryRepository<T>`를 구현하세요.
// 3) `main`에서 `InMemoryRepository<String>`을 사용하여 저장/찾기/삭제하고 결과를 출력하세요.

abstract class Repository<T> {
  void save(String id, T item);
  T? findById(String id);
  bool delete(String id);
}

class InMemoryRepository<T> implements Repository {
  final Map<String, T> _storage = {};
  @override
  void save(String id, item) {
    // TODO: implement save
    _storage[id] = item;
  }

  @override
  findById(String id) {
    // TODO: implement findById
    return _storage[id];
  }

  @override
  bool delete(String id) {
    // TODO: implement delete
    return _storage.remove(id) != null;
  }
}

void main() {
  // TODO: 여기에 구현하세요
  InMemoryRepository<String> repo = InMemoryRepository();

  repo.save('1', '아이템1');
  repo.save('2', '아이템2');

  print('찾기: ${repo.findById('1')}');
  print('삭제: ${repo.delete('1')}');
  print('삭제 후: ${repo.findById('1')}');
}
