enum Skill { FLUTTER, DART, OTHER }

class Employee {
   String _name;
  double _baseSalary;
  
  int _yearsOfExperience;
  Address _address;
  List<Skill> _skills = [];

  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearsOfExperience => _yearsOfExperience;
  Address get address => _address;
  List<Skill> get skills => _skills;

  Employee(this._name, this._baseSalary,this._yearsOfExperience,this._address, this._skills);

  void printDetails() {
    print('Employee: $name, Base Salary: \$${baseSalary}');
  }
}

class Address {
  String street;
  String city;
  String zipCode;
  Address(this.street, this.city, this.zipCode);
}

void main() {
  var emp1 = Employee('Sokea', 40000);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000);
  emp2.printDetails();
}
