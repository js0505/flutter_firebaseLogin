import 'dart:math';

void main() {
  final test = (List<int>.generate(45, (i) => i + 1)..shuffle()).sublist(0, 6);
  print(test);
}
