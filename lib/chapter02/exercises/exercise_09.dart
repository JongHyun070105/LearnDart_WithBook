// 연습문제 9 (심화): 컴포지션 vs 상속
// 목표: 상속 대신 컴포지션을 사용하여 `MusicPlayer`가 `Logger`를 사용하도록 모델링하세요.
// 요구사항:
// 1) `Logger` 클래스에 `void info(String msg)` 메서드를 만드세요.
// 2) `MusicPlayer` 클래스에 `Logger logger` 필드를 만드세요. (생성자로 주입)
// 3) `MusicPlayer.play(String title)`에서 `logger.info('재생 중: {title}')`을 호출하세요.
// 4) `main`에서 `Logger`와 `MusicPlayer`를 만들고 `play()`를 호출하세요.

class Logger {
  void info(String msg) {
    print("[INFO] $msg");
  }
}

class MusicPlayer {
  final Logger logger;

  MusicPlayer(this.logger);
  void play(String title) {
    logger.info(title);
  }
}

void main() {
  // TODO: 여기에 구현하세요
  Logger log = Logger();
  MusicPlayer mp = MusicPlayer(log);

  mp.play('좋은날');
}
