enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String _name;
  final double _baseSalary;

  final int _yearsOfExperience;
  final Address _address;
  List<Skill> _skills = [];

  Employee(
    this._name,
    this._baseSalary,
    this._yearsOfExperience,
    this._address,
    this._skills,
  );
    
  String get name => _name;
  double get baseSalary => _baseSalary;
  int get yearsOfExperience => _yearsOfExperience;
  Address get address => _address;
  List<Skill> get skills => _skills;

  double calculateSalary() {
    double salary = _baseSalary+(_yearsOfExperience * 2000);

    for (final skill in _skills) {
      if (skill == Skill.FLUTTER) {
        salary += 5000;
      } else if (skill == Skill.DART) {
        salary += 3000;
      } else if (skill == Skill.OTHER) {
        salary += 1000;
      }
    }
    return salary;
  }

  void printDetails() {
    print('Employee: $_name, Base Salary: \$${_baseSalary}, Years of Experience: $_yearsOfExperience, Address: ${_address.street}, ${_address.city}, ${_address.zipCode}, Skills: ${_skills.join(",")}, Calculated Salary: \$${calculateSalary()}');
  }
}
class Address {
  String street;
  String city;
  String zipCode;

  Address(this.street, this.city, this.zipCode);


}

void main() {
  var emp1 = Employee('Sokea', 40000, 5, Address('123 St', 'Phnom Penh', '12000'), [Skill.FLUTTER, Skill.DART]);
  emp1.printDetails();

  var emp2 = Employee('Ronan', 45000, 3, Address('456 St', 'Siem Reap', '13000'), [Skill.OTHER]);
  emp2.printDetails();
}
