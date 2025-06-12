class Faculty {
  // 1. Properties
  final String firstName;
  final String lastName;
  final int age;

  // 2. Behavior
  // Constructor
  Faculty(this.firstName, this.lastName, this.age);

  // toString
  @override
  String toString() {
    return "First Name : $firstName, Last Name: $lastName, Age: $age";
  }
}

class FullTimeFaculty extends Faculty {
  final double monthlySalary;
  FullTimeFaculty(
    super.firstName,
    super.lastName,
    super.age,
    this.monthlySalary,
  );

  double getYearlySalary() {
    return monthlySalary * 12;
  }

  @override
  String toString() {
    return "First Name: $firstName, Last Name: $lastName, Age: $age, Monthly Salary: $monthlySalary";
  }
}

class PartTimeFaculty extends Faculty {
  final double hourlySalsary;
  PartTimeFaculty(
    super.firstName,
    super.lastName,
    super.age,
    this.hourlySalsary,
  );

  double calculateYearlySalary() {
    return hourlySalsary * 12 * 20;
  }

  @override
  String toString() {
    return "First Name: $firstName, Last Name: $lastName, Age: $age, Hourly Salary: $hourlySalsary";
  }
}

String highestAndLowestEarner(List<FullTimeFaculty> fullFaculty) {
  double highestSalary = fullFaculty[0].monthlySalary;
  String name = fullFaculty[0].firstName + fullFaculty[0].lastName;
  for (var faculty in fullFaculty) {
    if (faculty.monthlySalary > highestSalary) {
      highestSalary = faculty.monthlySalary;
      name = faculty.firstName + faculty.lastName;
    }
  }

  double lowestSalary = fullFaculty[0].monthlySalary;
  String lowestName = fullFaculty[0].firstName + fullFaculty[0].lastName;

  for (var faculty in fullFaculty) {
    if (faculty.monthlySalary < lowestSalary) {
      lowestSalary = faculty.monthlySalary;
      lowestName = faculty.firstName + faculty.lastName;
    }
  }
  return "Highest Earner: $name = $highestSalary  \nLowest Earner: $lowestName = $lowestSalary ";
}

double fullTimeSalarySpending(List<FullTimeFaculty> fullFaculty) {
  double total = 0;
  for (var faculty in fullFaculty) {
    total += faculty.monthlySalary;
  }
  return total;
}

void main() {
  FullTimeFaculty fullFaculty1 = FullTimeFaculty(
    "Albert",
    "Maharjan",
    22,
    100000,
  );
  FullTimeFaculty fullFaculty2 = FullTimeFaculty("Kiran", "Rana", 33, 1000000);
  FullTimeFaculty fullFaculty3 = FullTimeFaculty(
    "Giriraj",
    "Rawat",
    28,
    400000,
  );
  FullTimeFaculty fullFaculty4 = FullTimeFaculty(
    "Manoj",
    "Shrestha",
    34,
    3000000,
  );
  FullTimeFaculty fullFaculty5 = FullTimeFaculty("Kiran", "Rana", 30, 200000);

  List<FullTimeFaculty> fullFaculty = [
    fullFaculty1,
    fullFaculty2,
    fullFaculty3,
    fullFaculty4,
    fullFaculty5,
  ];

  print(highestAndLowestEarner(fullFaculty));
  print(fullTimeSalarySpending(fullFaculty));
  // PartTimeFaculty partFaculty1 = PartTimeFaculty("Hari", "Shrestha", 29, 1000);
  // PartTimeFaculty partFaculty2 = PartTimeFaculty("Hari", "Shrestha", 28, 2000);
  // PartTimeFaculty partFaculty3 = PartTimeFaculty("Hari", "Shrestha", 27, 3000);
  // PartTimeFaculty partFaculty4 = PartTimeFaculty("Hari", "Shrestha", 26, 4000);
  // PartTimeFaculty partFaculty5 = PartTimeFaculty("Hari", "Shrestha", 25, 5000);
}
