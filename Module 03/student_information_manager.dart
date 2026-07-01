import 'dart:io';

abstract class Person {
  void displayInfo();
}

class Student extends Person {
  String _id;
  String _name;
  int _age;

  Student(this._id, this._name, this._age);

  String get id => _id;
  String get name => _name;
  int get age => _age;

  @override
  void displayInfo() {
    print("ID   : $_id");
    print("Name : $_name");
    print("Age  : $_age");
    print("--------------------------");
  }
}

void main() {
  List<Student> students = [];

  void showMenu() => print("""
===== Student Information Manager =====

1. Add Student
2. View Students
3. Search Student
4. Delete Student
5. Exit
""");

  while (true) {
    showMenu();

    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write("Enter Student ID: ");
        String id = stdin.readLineSync()!;

        stdout.write("Enter Student Name: ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter Student Age: ");
        int age = int.parse(stdin.readLineSync()!);

        students.add(Student(id, name, age));

        print("\nStudent Added Successfully!\n");
        break;
      case '2':
        if (students.isEmpty) {
          print("\nNo Students Found.\n");
        } else {
          print("\n===== Student List =====");
          students.forEach((student) {
            student.displayInfo();
          });
        }
        break;
      case '3':
        stdout.write("Enter Student ID to Search: ");
        String searchId = stdin.readLineSync()!;

        Student? found;

        for (var student in students) {
          if (student.id == searchId) {
            found = student;
            break;
          }
        }

        if (found != null) {
          print("\nStudent Found:");
          found.displayInfo();
        } else {
          print("\nStudent Not Found.\n");
        }
        break;
      case '4':
        stdout.write("Enter Student ID to Delete: ");
        String deleteId = stdin.readLineSync()!;

        students.removeWhere((student) => student.id == deleteId);

        print("\nDelete Operation Completed.\n");
        break;
      case '5':
        print("\nThank You!");
        exit(0);

      default:
        print("\nInvalid Choice!\n");
    }
  }
}
