// Create a simple grading system that takes a student’s score as input and prints their grade:
// A: 90–100
//  B: 80–89
//  C: 70–79
//  D: 60–69
//  F: Below 60

import 'dart:io';

void main() {
  print('Enter marks');
  int marks = int.parse(stdin.readLineSync().toString());

  if (marks >= 90 && marks <= 100) {
    print('A');
  } else if (marks >= 80 && marks <= 89) {
    print('B');
  } else if (marks >= 70 && marks <= 79) {
    print('C');
  } else if (marks >= 60 && marks <= 69) {
    print('A');
  } else {
    print('FAIL');
  }
}
