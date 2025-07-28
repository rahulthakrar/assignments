//  Define a BankAccount class with properties like account number, account holder, and
//  balance. Add methods to deposit, withdraw, and check the balance. Ensure the withdraw
//  method doesn’t allow overdrafts.

import 'dart:io';

class BankAccount {
  final String accHolderName;
  String accNumber;
  double accBalance;
  double amount = 0;

  BankAccount(this.accHolderName, this.accNumber, this.accBalance);

  void deposit() {
    print('Enter amount to be deposited');
    amount = double.parse(stdin.readLineSync().toString());
    if (amount <= 0) {
      print('Enter a positive amount');
      return;
    }
    accBalance += amount;
    print(
      'The deposited amount is $amount and the total amount is $accBalance',
    );
  }

  void withdraw() {
    print('Enter amount to be withdrawn');
    amount = double.parse(stdin.readLineSync().toString());
    if (amount <= 0) {
      print('Enter a positive amount');
      return;
    }
    if (amount > accBalance) {
      print('Insufficient balance. Overdraft not allowed.');
      return;
    }
    accBalance -= amount;
    print(
      'The withdrawn amount is $amount and the total amount is $accBalance',
    );
  }

  void checkCurrentBalance() {
    print('The total balance is $accBalance');
  }

  // overdraft logic is now handled in withdraw()
}

class SavingsAccount extends BankAccount {
  SavingsAccount(super.accHolderName, super.accNumber, super.accBalance);
}

class CheckingAccount extends BankAccount {
  CheckingAccount(super.accHolderName, super.accNumber, super.accBalance);
}

void main() {
  print('Enter account holders name');
  String uname = stdin.readLineSync().toString();
  print('Enter account number');
  String uno = stdin.readLineSync().toString();
  print('Enter account opening balance amount');
  double ubalance = double.parse(stdin.readLineSync().toString());

  var account = SavingsAccount(uname, uno, ubalance);

  while (true) {
    print(
      'Select option\n 1. Deposit\n 2. Withdrawal\n 3. Balance - Check\n 0. Exit',
    );
    int select0 = int.parse(stdin.readLineSync().toString());
    switch (select0) {
      case 1:
        account.deposit();
        break;
      case 2:
        account.withdraw();
        break;
      case 3:
        account.checkCurrentBalance();
        break;
      case 0:
        return;
      default:
        print("Invalid");
    }
  }
}
