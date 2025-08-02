void main() {
  // 여러 값을 순서대로 저장 -> List
  // 특정 키값을 기반으로 빠르게 값을 검색 -> Map
  // 중복된 데이터 제거 -> Set

  // List
  List<String> blackPinkList = ['리사', '지수', '제니', '로제'];

  print(blackPinkList); // 모든 값 리스트 형식으로 출력
  print(blackPinkList[0]); // 첫번째 인덱스 값 출력
  print(blackPinkList[3]); // 마지막 인덱스 값 출력

  print(blackPinkList.length); // 리스트의 길이 출력

  blackPinkList[0] = '종현'; // 리스트의 첫번째 값 변경
  print(blackPinkList);

  // add() - 리스트의 끝에 값을 추가할 수 있음
  blackPinkList.add('시우');
  print(blackPinkList);

  // map() - 리스트의 값들을 순회하면서 값을 변경할 수 있음
  final newBlackPink = blackPinkList.map((name) => '블랙핑크 $name');
  print(newBlackPink);

  // 튜플을 다시 List로 변환할 때 .toList() 사용
  print(newBlackPink.toList());

  // reduce() - 리스트의 값들을 순회하면서 값을 쌓아감. 리스트 요소들의 타입이 같아야함
  final allMembers = blackPinkList.reduce(
    (value, element) => '$value, $element',
  );

  print(allMembers);

  // fold() - reduce()와 실행되는 논리는 같음. 하지만 fold()는 어떤 타입이든 반환 가능
  final allMembers2 = blackPinkList.fold<int>(
    0,
    (value, element) => value + element.length,
  );
  print(allMembers2);

  print('');

  // Map
  Map<String, String> dictionary = {
    'Harry Potter': '해리 포터', // 키 : 값
    'Ron Weasley': '론 위즐리',
    'Hermione Granger': '헤르미온느 그레인저',
  };
  print(dictionary['Harry Potter']);
  print(dictionary['Ron Weasley']);

  print(dictionary.keys); // 키 값 모두 반환
  print(dictionary.values); // 값 모두 반환

  print('');

  // Set
  Set<String> samsungLions = {'구자욱', '원태인', '오승환', '이승엽', '이승엽'}; // 중복값 존재

  print(samsungLions);
  print(samsungLions.contains('구자욱')); // 해당 값이 있는지 확인
  print(samsungLions.toList()); // 리스트로 반환

  List<String> samsungLions2 = ['구자욱', '양도근', '좌승현'];
  print(Set.from(samsungLions2)); // List 타입을 Set으로 변환
}
