//! Implement a basic calculator that performs addition, subtraction, multiplication, or divisionbased on the user’s choice
import 'dart:io';

class Calc {
  var a, b;
  add() {
    double c = a + b;
    print('The addition of $a and $b is $c');
  }

  sub() {
    double c = a - b;
    print('The substraction of $a and $b is $c');
  }

  mul() {
    double c = a * b;
    print('The multiplication of $a and $b is $c');
  }

  div() {
    double c = a / b;
    print('The division of $a and $b is $c');
  }

  ask() {
    print('Enter 1st number');
    a = double.parse(stdin.readLineSync().toString());
    print('Enter 2nd number');
    b = double.parse(stdin.readLineSync().toString());
  }
}

void main() {
  var c = Calc();
  while (true) {
    print(
      'Enter your choice\n 1. Addition\n 2. Substraction\n 3. Multiplication\n 4. Divison\n 5. Exit',
    );
    int choice = int.parse(stdin.readLineSync().toString());
    switch (choice) {
      case 1:
        c.ask();
        c.add();
      case 2:
        c.ask();
        c.sub();
      case 3:
        c.ask();
        c.mul();
      case 4:
        c.ask();
        c.div();
      case 5:
        exit(0);
      default:
        print('Invalid choice');
    }
  }
}
