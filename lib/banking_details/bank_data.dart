class BankData {
  int balance = 0;
  bool isAccountOpen = false;

  getBalance() => balance;

  openAccount(int amount) {
    if (!isAccountOpen) {
      isAccountOpen = true;
      balance = balance + amount;
      return balance;
    }
    if (balance > 0) {
      throw Exception(alreadyAccount);
    }
    throw Exception(accountOpen);
  }

  creditBalance(int amount) {
    if (isAccountOpen) {
      balance = balance + amount;
      return balance;
    }
    throw Exception(noAccountOpen);
  }

  debitBalance(int amount) {
    if (!isAccountOpen) {
      throw Exception(noAccountOpen);
    }
    if (balance < amount) {
      throw Exception(noBalance);
    }
    balance = balance - amount;
    return balance;
  }
}

String accountOpen = "Open Account";
String alreadyAccount = "Account Already";
String noAccountOpen = "No Account Open";
String noBalance = "insufficient Balance";
