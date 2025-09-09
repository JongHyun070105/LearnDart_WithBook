// void main() {
//   String dayKor = '월요일';

//   String dayEnglish = switch (dayKor) {
//     // => 를 사용하면 switch 조건에 맞을 때 해당 값을 반환함
//     '월요일' => 'Monday',
//     '화요일' => 'Tuesday',
//     '수요일' => 'Wednesday',
//     '목요일' => 'Thursday',
//     '금요일' => 'Friday',
//     '토요일' => 'Saturday',
//     '일요일' => 'Sunday',
//     // _ 는 default와 같은 의미로 사용
//     // 즉 무조건 있어야함. 없으면 에러남
//     _ => '404',
//   };

//   print(dayEnglish);
// }

// 패턴 매칭

// void switcher(dynamic anything) {
//   switch (anything) {
//     case 'aaa':
//       print('match: aaa');
//       break;
//     case [1, 2]:
//       print('match: [1, 2]');
//       break;
//     case [_, _, _]:
//       print('match: [_,_,_]');
//       break;
//     case [int a, int b]:
//       print('match: [int $a, int $b]');
//       break;
//     case (String a, int b):
//       print('match: (String: $a, int: $b)');
//       break;
//     default:
//       print('no match');
//   }
// }

// void main() {
//   switcher('aaa');

//   switcher([1, 2]);

//   switcher([3, 4, 5]);

//   switcher([6, 7]);

//   switcher(('종현', 19));

//   switcher(8);
// }

// 엄격한 검사

// void main() {
//   // 입력 가능 값: true, false, null
//   bool? val;

//   // true가 들어오면 'true' 반환, null값이 들어오면 'error' 반환
//   switch (val) {
//     case true:
//       print('true');
//       break;
//     case false:
//       print('false');
//       break;
//     default:
//       print('error');
//       break;
//   }
// }

// 보호 구문

void main() {
  (int a, int b) val = (1, -1);

  switch (val) {
    case (1, _) when val.$2 > 0:
      print('1, _');
      break;
    default:
      print('default');
  }
}
