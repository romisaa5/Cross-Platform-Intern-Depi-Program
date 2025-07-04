import 'dart:io';

void main() {
  print('please enter your age');
  int age = int.parse(stdin.readLineSync()!);
  print((age > 18) ? 'Adult' : 'Minor');
}
