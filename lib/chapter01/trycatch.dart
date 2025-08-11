void main() {
  try {
    final String name = '종현';

    print(name);
  } catch (e) {
    print(e);
  }

  try {
    final String name2 = '종현';

    // throw를 활용해 고의적으로 오류 발생시키기
    throw Exception('이름이 잘못됐습니다');

    print(name2);
  } catch (e) {
    print(e);
  }
}
