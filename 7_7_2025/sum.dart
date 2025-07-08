// Write a program make a summation of given number(E.g. 1523 ans :-11)

import 'dart:io';

void main() {
  print("Enter Any Number");
  int n = int.parse(stdin.readLineSync().toString());
  int sum = 0;
  while (n > 0) {
    int reminder = n % 10;
    sum = sum + reminder;
    n = n ~/ 10;
  }
  print(sum);
}
