import 'dart:io';

void main() {
  int a = 0, b = 1, c;
  //if you wanna start with 0 then a=-1 ; else it will start with 1
  print('Enter a number');
  int n = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= n; i++) {
    c = a + b;
    print(c);
    a = b;
    b = c;
  }
}
