class BankAccount {
  // TODO
  final int accountId;
  final String accountOwner;
  double balance = 0;

  BankAccount(this.accountId, this.accountOwner);

  int get id => accountId;
  String get owner => accountOwner;
  double get balanceAmount => balance;

  double balances() {
    return balance;
  }

  void withdraw(double amount) {
    if (amount > balance) {
      throw Exception('Insufficient balance for withdrawal');
    }

    if (amount <= 0) {
      throw Exception('Amount must be greater than 0');
    }
    balance -= amount;
  }

  void credit(double amount) {
    if (amount <= 0) {
      throw Exception('Amount must not 0');
    }

    balance += amount;
  }
}

class Bank {

  final String _name;
  final List<BankAccount> _accounts = [];

  Bank({required String name}) : _name = name;

  String get name => _name;

  BankAccount createAccount(int accountId, String accountOwner) {
    for (final account in _accounts) {
      if (account.accountId == accountId) {
        throw Exception('Account with ID $accountId already exists!');
      }
    }

    final newAccount = BankAccount(accountId, accountOwner);
    _accounts.add(newAccount);

    return newAccount;
  }
}

void main() {
  // Bank myBank = Bank(name: "CADT Bank");
  final myBank = Bank(name: 'CADT Bank');
  // BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');
  final ronanAccount = myBank.createAccount(100, 'Ronan');
  // print(ronanAccount.balance); // Balance: $0
  print('Balance: \$${ronanAccount.balance}');

  // ronanAccount.credit(100);
  ronanAccount.credit(100);

  // print(ronanAccount.balance); // Balance: $100
  print('Balance: \$${ronanAccount.balance}');

  // ronanAccount.withdraw(50);
  ronanAccount.withdraw(50);

  // print(ronanAccount.balance); // Balance: $50
  print('Balance: \$${ronanAccount.balance}');

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
