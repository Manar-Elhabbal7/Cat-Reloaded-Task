
//Base Class
class Account{
   String? ownerName;
   double balance = 0.0;

    Account(this.ownerName, this.balance);

    // deposit method adding money
    void deposit(double amount){
      if(amount > 0){
        balance += amount;
        print("\$${amount} added Successfully . Your current balance: \$${balance}");
      }
      else {
        print("Invalid");
      }
    }

    // withdraw method removing money
    void withdraw(double amount) {
      if (amount > 0 && amount <= balance) {
        balance -= amount;
        print(
            "\$${amount} withdrawn Successfully . Your current balance: \$${balance}");
      }
      else {
        print("Invalid.");
      }
    }
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(String ownerName, double balance, this.interestRate)
      : super(ownerName, balance);

  void addInterest() {
    double interest = (balance * interestRate) / 100;
    deposit(interest);
 
  }
}

class CheckingAccount extends Account {
   double withdrawFee = 0.0;
    CheckingAccount(String ownerName, double balance, this.withdrawFee)
        : super(ownerName, balance);

    @override
    void withdraw(double amount) {
      double totalAmount = amount + withdrawFee;

      if (totalAmount <= balance) {
        balance -= totalAmount;
        print(
            "\$${amount} withdrawn Successfully with a fee of \$${withdrawFee}. Your current balance: \$${balance}");
      } else {
        print("Invalid");
      }
    }
}

void solve(){
  SavingsAccount savings = SavingsAccount("Manar", 1000.0, 5.0);
  savings.deposit(200.0);
  savings.addInterest();
  savings.withdraw(150.0);

  print("\n----------------------------------------------------\n");

  CheckingAccount checking = CheckingAccount("Moustafa", 500.0, 2.0);
  checking.deposit(100.0);
  checking.withdraw(50.0);
  checking.withdraw(600.0);
}

int main(){
  solve();
  return 0;
}
