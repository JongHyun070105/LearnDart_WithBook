enum Status { approved, pending, rejected }

void main() {
  Status status = Status.approved;

  // enum과 함께 사용하면 좋음
  // break 키워드를 빼먹지 않기

  switch (status) {
    case Status.approved:
      print('승인상태');
      break;
    case Status.pending:
      print('대기상태');
      break;
    case Status.rejected:
      print('거절상태');
      break;
    default:
      print('알 수 없는 상태');
  }

  print(Status.values);
}
