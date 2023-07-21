import 'helper.dart';

void main() {
  var account1 = new SavingsAccount("1234", 1000.0, 0.02);
  account1.addInterest();
  print(account1); // should print "Account #1234, Balance: 1020.0"

  var account2 = new CheckingAccount("5678", 500.0, -100.0);
  account2.withdraw(200.0);
  print(account2); // should print "Account #5678, Balance: 290.0"
  account2.withdraw(200.0);
  print(account2); // should print "Account #5678, Balance: -20.0"
  account2.withdraw(10.0);
  print(account2); // should print "Account #5678, Balance: -30.0"
}