import 'dart:developer';

//
// main module
//
void main() {
  // print('Hello World');
  // print(2 + 2);
  // print(1000000);
  //  for (var i = 0; i < numbers.length; i++) {
  //     if (numbers[i] == 500000) {
  //       print('Found 500000 at index $i');
  //       result = numbers[i];
  //       break;

  List numbers = List.generate(1000000, (int index) => index);

  var result = -1;
  try {
    for (var i = 0; i < numbers.length; i++) {
      if (numbers[i] == 500000) {
        print('Found 500000 at index $i');
        result = numbers[i];
        break;
      } else {}
    }
  } catch (e) {}

  // print(result);
  log(result.toString() + ' Found 500000 at index');

  return null;
}
