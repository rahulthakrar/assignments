//! area and circumference of a circle

import 'dart:io';

void main() {
  const double pi = 3.14;
  print('Enter radius');
  int r = int.parse(stdin.readLineSync().toString());
  double Area = pi * r * r;
  double circumference = 2 * pi * r;
  print(
    'The area of circle is $Area and circumference of a circle is $circumference',
  );
}
