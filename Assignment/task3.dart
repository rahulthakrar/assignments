//* Even or odd

import 'dart:io';

void main() {
  stdout.write('Enter Number \n');
  int num = int.parse(stdin.readLineSync().toString());

  if (num % 2 == 0) {
    print('Number is EVEN');
  } else {
    print('Number is ODD');
  }
}
