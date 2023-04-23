import 'package:flutter_test/flutter_test.dart';
import 'package:unit_cases_demo/banking_details/bank_data.dart';

void main() {
  group("Bank data", () {
    test("check account open or not", () {
      BankData bankData = BankData();
      bankData.openAccount(100);
      expect(bankData.getBalance(), (100));
    });

    test("Money debit with low balance", () {
      BankData bankData = BankData();
      bankData.openAccount(10);
      expect(() => bankData.debitBalance(100), throwsA(isA()));
    });

    test("Money debit", () {
      BankData bankData = BankData();
      bankData.openAccount(1000);
      bankData.debitBalance(500);
      bankData.debitBalance(200);
      expect(bankData.getBalance(), (300));
    });

    test("Money credit into account before open", () {
      BankData bankData = BankData();
      expect(() => bankData.creditBalance(100), throwsA(isA()));
    });

    test("Money debit from account before open", () {
      BankData bankData = BankData();
      expect(() => bankData.debitBalance(100), throwsA(isA()));
    });

    test("Money credit into account", () {
      BankData bankData = BankData();
      bankData.openAccount(10);
      bankData.creditBalance(100);
      expect(bankData.getBalance(), 110);
    });


  });
}
