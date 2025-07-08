// g. Write a program to print the number in reverse order.
import 'dart:io';

void main() {
  print('Enter a number');
  int n = int.parse(stdin.readLineSync().toString());
  for (int i = n; i >= 1; i--) {
    print(i);
  }
}
