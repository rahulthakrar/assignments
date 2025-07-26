// F = (9/5 × °C) + 32
// C = 5/9(F-32)

import 'dart:io';

void main() {
  var d = do1();
  print(
    'Enter your choice \n 1. Convert fahrenheit to celcius \n 2. Convert celcios to fahrenheit ',
  );
  int choice = int.parse(stdin.readLineSync().toString());
  switch (choice) {
    case 1:
      d.Celcius();
    case 2:
      d.Fahrenheit();
  }
}

class do1 {
  Celcius() {
    print('Enter Fahrenheit to convert it to Celcius');
    int F = int.parse(stdin.readLineSync().toString());
    double C = 5 / 9 * (F - 32);
    return print('The temperature is $C in Celcius');
  }

  Fahrenheit() {
    print('Enter Celcius to convert it to Fahrenheit');
    int C = int.parse(stdin.readLineSync().toString());
    double F = (9 / 5 * C) + 32;
    return print('The temperature is $F in Fahrenheit');
  }
}
