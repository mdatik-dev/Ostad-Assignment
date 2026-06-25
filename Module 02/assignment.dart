void main() {
  List<String> initialStudents = ['Atik', 'shamim', 'arafat', 'ohmor'];

  bool isNewStudent = true;

  List<String> conditionalStudents = [
    if (isNewStudent) 'Rahim'
  ];

  List<String> students = [...initialStudents, ...conditionalStudents];

  Set<String> courses = {'App', 'Web', 'AI'};

  Map<String, int> studentAges = {
    'Atik': 26,
    'shamim': 29,
    'arafat': 21,
    'ohmor': 20,
    if (isNewStudent) 'Rahim': 20,
  };

  print('Students:');
  print(students);
  print('');

  print('Courses:');
  print(courses);
  print('');

  print('Student Ages:');
  studentAges.forEach((name, age) {
    print('$name -> $age');
  });
}