//! Write a program that prints all numbers from 1 to 100. For multiples of 3, print "Fizz" insteadof the number, and for multiples of 5, print "Buzz." For numbers that are multiples of both3and 5, print "FizzBuzz."

void main() {
  int i;
  for (i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('FizzBuzz');
    } else if (i % 5 == 0) {
      print('Buzz');
    } else if (i % 3 == 0) {
      print('Fizz');
    } else {
      print(i);
    }
  }
}
