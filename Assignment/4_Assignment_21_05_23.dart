/*
Name : Mazharul Islam Tohin
Assignment : 4
Date : 21-05-2023

Define an abstract class Account with the following properties:
● accountNumber (integer)
● balance (double)
It should also have the following methods:
● deposit(double amount): Adds the specified amount to the account balance.
● withdraw(double amount): Abstract method that deducts the specified amount from
the account balance.
Define a class SavingsAccount that extends the Account class. It should have an additional
property called interestRate (double).
Implement the withdraw() method in the SavingsAccount class as follows:
● Subtract the specified amount from the account balance.
● Apply the interest rate to the remaining balance.
Define a class CurrentAccount that extends the Account class. It should have an
additional property called overdraftLimit (double).
Implement the withdraw() method in the CurrentAccount class as follows:
● Allow withdrawals up to the overdraft limit.
● If the withdrawal amount exceeds the overdraft limit, print a message indicating
insufficient funds.


In main()
● Create an instance of the SavingsAccount class by providing values for the account
number, initial balance, and interest rate.
● Use the instance to perform operations like depositing and withdrawing money.
● Create an instance of the CurrentAccount class by providing values for the account
number, initial balance, and overdraft limit.
● Use the instance to perform operations like depositing and withdrawing.
*/

abstract class Account {
  int accountNumber = 0;
  double balance = 0;

  deposit(double amount) {
    balance += amount;
    print("Deposited \$$amount! Current Balance \$$balance");
  }

  withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate) {
    super.accountNumber = accountNumber;
    super.balance = balance;
  }

  @override
  withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print("Withdrawn \$$amount! Current Balance with ${interestRate*100}% interest \$$balance");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit) {
    super.balance = balance;
    super.accountNumber = accountNumber;
  }

  @override
  withdraw(double amount) {
    if (balance - amount >= 0 && amount <= overdraftLimit) {
      balance -= amount;
      print("Withdrawn \$$amount! Current Balance \$$balance");
    } else {
      print("Insufficient funds! Amount \$$amount is greater than overdraft limit.");
      print("Balance \$$balance");
    }
  }
}

void main() {
  SavingsAccount person = SavingsAccount(54654, 5000, .1);
  print("Initial Balance \$${person.balance}");
  person.deposit(2000);
  person.withdraw(5000);

  CurrentAccount ca = CurrentAccount(65465, 5000, 5000);
  print("Initial Balance \$${ca.balance}");
  ca.deposit(2000);
  ca.withdraw(5000);
  ca.withdraw(2300);
}
