void main() {
  String studentName = "Atikur";
  int marks = 82;
  String grade = "";
  String description = "";

  if (marks >= 80) {
    grade = "A";
  } else if (marks >= 70) {
    grade = "B";
  } else if (marks >= 60) {
    grade = "C";
  } else {
    grade = "F";
  }

  switch (grade) {
    case 'A':
      description = "Excellent";
      break;
    case 'B':
      description = "Good Job";
      break;
    case 'C':
      description = "Average";
      break;
    case 'F':
      description = "Failed";
      break;
    default:
      description = "Invalid";
  }

  print("Student Report");
  print("\nName: $studentName");
  print("Marks: $marks");
  print("Grade: $grade \n");
  print(description);
}
