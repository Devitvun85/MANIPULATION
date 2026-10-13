enum Skill { FLUTTER, DART, OTHER }

class Employee {
  final String name;
  final double baseSalary;

  final int yearsOfExperience;
  final Address address;
  List<Skill> skills = [];

  Employee(
    this.name,
    this.baseSalary,
    this.yearsOfExperience,
    this.address,
    this.skills,
  );
    
  String get nameE => name;
  double get baseSalarys => baseSalary;
  int get yearsOfExperiences => yearsOfExperience;
  Address get addressE => address;
  List<Skill> get skillsE => skills;

  double calculateSalary() {
    double salary = baseSalary+(yearsOfExperience * 2000);

    for (final skill in skills) {
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
    print('Employee: $name, Base Salary: \$${baseSalary}, Years of Experience: $yearsOfExperience, Address: ${address.street}, ${address.city}, ${address.zipCode}, Skills: ${skills.join(",")}, Calculated Salary: \$${calculateSalary()}');
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
