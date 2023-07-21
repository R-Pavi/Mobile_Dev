

class BankAccount{
   String accountNumber;
  double balance;

  void deposit(amount){
    balance += amount;
  }

  void withdraw(amount){
    balance -= amount;
  }

  double getBalance(){
    return balance;
  }

  String toString() {
    return "Account ${accountNumber}, Balance: ${balance}";    
  }
}

class SavingsAccount extends BankAccount{

  late double interestRate;

void addInterest() { 
  balance *= interestRate;  
}

}

class CheckingAccount extends BankAccount{

 final double overdraftLimit = 10.00 ;

  void withdraw(amount){
    


  }

    
  }



