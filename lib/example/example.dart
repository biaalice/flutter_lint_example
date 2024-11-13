import 'dart:developer';

void main() {
  List<int> numbers = List<int>.generate(1000000, (int index) => index);

  int result = -1;
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] == 500000) {
      result = numbers[i];
      break;
    }
  }

  log(result.toString());
}
