// 연습문제 7: 믹스인
// 목표: `Loggable` 믹스인을 만들고 `Service` 클래스에서 사용하세요.
// 요구사항:
// 1) `Loggable` 믹스인에 `void log(String message)` 메서드를 만드세요. (접두사와 함께 출력)
// 2) `Service` 클래스가 `Loggable`을 믹스인하고 `execute()` 메서드에서 `log()`를 호출하세요.
// 3) `main`에서 `Service` 인스턴스를 만들고 `execute()`를 호출하세요.

mixin Logger {
  void log(String message) {
    print('[LOG] $message');
  }
}

class Service with Logger {
  void execute() {
    log('서비스 실행 중');
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Service sv = Service();
  sv.execute();
}
