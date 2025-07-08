// f. write a program you have to print the table of given number.

import 'dart:io';

void main() {
  print('Enter a number');
  int n = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= 10; i++) {
    int c = n * i;
    print('$n X $i = $c');
  }
}
