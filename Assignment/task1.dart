import 'dart:io';

void main() {
  stdout.write('Enter your name \n');
  String name = stdin.readLineSync().toString();

  stdout.write('Enter your age \n');
  int age = int.parse(stdin.readLineSync().toString());

  age = 100 - age;

  print('Your name is $name and you have $age years left to turn 100');
}
