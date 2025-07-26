//!  Create a function that checks if a string is a palindrome (reads the same backward as forward).

import 'dart:io';

void main() {
  print('Enter string (only in lower case)');
  String oriStr = stdin.readLineSync().toString();

  bool isPalindrome = true;

  // Get the length of the string
  int length = oriStr.length;

  // Loop from start to the middle of the string
  for (int i = 0; i < length ~/ 2; i++) {
    // Compare the character from the start and the corresponding character from the end
    if (oriStr[i] != oriStr[length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print('palindrome');
  } else {
    print('Not');
  }
}
