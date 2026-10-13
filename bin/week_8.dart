void main() {
  double calculateAverage(List<double> grades) {
    if (grades.isEmpty) {
      throw FormatException('Grade list cannot be empty.');
    }
    double total = 0;
    for (double grade in grades) {
      total += grade;
    }
    return total / grades.length;
  }
  String studentName = 'Leeroy Soriano';
  int attendance = 95;
  List<double> grades = [95.99, 96.90, 97.22];
  List<String> terms = ['Prelim', 'Midterm', 'Final'];

  try {
    double calculateGrade = calculateAverage(grades);
    bool isPassed = calculateGrade >= 75 && calculateGrade <= 100;

    print('Student: $studentName');
    print('Attendance: $attendance%');

    print('\nGrades Breakdown:');
    for (int i = 0; i < grades.length; i++) {
      print(' - ${terms[i]}: ${grades[i]}');
    }
    print('\nGWA: ${calculateGrade.toStringAsFixed(2)}');
    print('Did $studentName pass? $isPassed');

    print('\nAcademic Status:');
    if (calculateGrade >= 90 && attendance >= 90) {
      print('Status: Passed!');
    } else if (calculateGrade >= 75) {
      print('Status: Passed.');
    } else {
      print('Status: Failed.');
    }
  } catch (e) {
    print('An error occurred during calculation: $e');
  }
}
