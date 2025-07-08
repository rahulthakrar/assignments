// d .write a program you have to find the factorial of given number.

import 'dart:io';

void main() {
  int no, factorial = 1;
  print('Enter non negative value');
  no = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= no; i++) {
    factorial *= i;
    print(factorial);
  }
}
