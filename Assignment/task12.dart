// h .Write a program to find out the small from given number

// like no is 1763
// small will be 1

import 'dart:io';

void main() {
  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int small = 9;
  while (num > 0) {
    int rem = num % 10;
    if (rem < small) {
      small = rem;
    }
    num = num ~/ 10;
  }
  print(small);
}
