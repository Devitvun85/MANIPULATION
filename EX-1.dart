enum Skill { FLUTTER, DART, OTHER }

class Employee {
  String name;
  double baseSalary;
  
  int yearsOfExperience;
  Address address;
  List<Skill> skills = [];

  Employee(this.name, this.baseSalary,this.yearsOfExperience,this.address, this.skills);

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
