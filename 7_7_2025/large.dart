// h .Write a program to find out the max from given number

// like no is 1763
// max will be 7

import 'dart:io';

void main() {
  print("Enter Any Number");
  int num = int.parse(stdin.readLineSync().toString());
  int large = 0;
  while (num > 0) {
    int rem = num % 10;
    if (rem > large) {
      large = rem;
    }
    num = num ~/ 10;
  }
  print(large);
}
