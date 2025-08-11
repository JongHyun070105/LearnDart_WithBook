void main() {
  int total = 0;

  // while은 조건이 참인지 확인 후 실행
  while (total < 10) {
    // total이 10 보다 작을 때까지 계속 실행
    total += 1;
  }

  print(total);

  // do-while
  // do-while은 먼저 실행하고 조건을 확인
  int total2 = 0;

  do {
    total2 += 1;
  } while (total2 < 10);

  print(total2);
}
