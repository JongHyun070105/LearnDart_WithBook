// 연습문제 2: 생성자 스타일
// 목표: `Idol` 클래스에 기본 생성자와 네임드 생성자를 만드세요.
// 요구사항:
// 1) `name` (String) 필드를 만드세요.
// 2) 기본 생성자: `Idol(this.name)`.
// 3) 네임드 생성자: `Idol.fromKorean(String koreanName)`으로 한국어 이름을 영어로 변환 (예: '블랙핑크' -> 'Blackpink').
// 4) `main`에서 두 생성자로 인스턴스를 만들고 이름을 출력하세요.

class Idol2 {
  late String name;

  Idol2(this.name);

  Idol2.fromKorean(String koreanName) {
    switch (koreanName) {
      case '블랙핑크':
        name = 'blackpink';
        break;

      case '방탄소년단':
        name = 'BTS';
        break;
    }
  }
}

void main() {
  // TODO: 여기에 구현하세요

  Idol2 id = Idol2.fromKorean('블랙핑크');
  Idol2 id2 = Idol2('뉴진스');

  print(id.name);
  print(id2.name);
}
