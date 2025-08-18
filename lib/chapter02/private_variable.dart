// 보통 프라이빗 변수는 클래스 내부에서만 사용하는 변수를 칭하지만
// 다트에선 같은 파일에서만 접근 가능한 변수다.

class Idol {
  // _ 로 변수명을 시작하면 프라이빗 변수를 선언할 수 있음
  String _name;

  Idol(this._name);
}

void main() {
  Idol blackPink = Idol('블랙핑크');
  print(blackPink._name);
}
