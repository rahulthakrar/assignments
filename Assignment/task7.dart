// Write a program that accepts a number and checks if it is a prime number or not.

import 'dart:io';

void main() {
  print('Enter number');
  int no = int.parse(stdin.readLineSync().toString());
  int count = 0;
  for (int i = 1; i <= no; i++) {
    if (no % i == 0) {
      count++;
    }
  }
  if (count <= 2) {
    print('prime');
  } else {
    print('non prime');
  }
}
