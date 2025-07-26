//! Write a function to calculate the factorial of a number entered by the user.

import 'dart:io';

void main() {
  int no, factorial = 1;
  print('Enter non negative value');
  no = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= no; i++) {
    factorial *= i;
  }
  print('Factorial of no $no is $factorial');
}
