import 'dart:io';

extension AmountFormatter on double {
  String formatAmount() {
    return "৳${toStringAsFixed(2)}";
  }
}

class Expense {
  String title;
  double amount;
  String category;

  Expense(this.title, this.amount, this.category);

  String display() {
    return "$title - ${amount.formatAmount()} - $category";
  }
}

class Food extends Expense {
  Food(String title, double amount) : super(title, amount, "Food");

  @override
  String display() {
    return "$title - ${amount.formatAmount()} - Food";
  }
}

class Transport extends Expense {
  Transport(String title, double amount) : super(title, amount, "Transport");

  @override
  String display() {
    return "$title - ${amount.formatAmount()} - Transport";
  }
}

class Entertainment extends Expense {
  Entertainment(String title, double amount)
    : super(title, amount, "Entertainment");

  @override
  String display() {
    return "$title - ${amount.formatAmount()} - Entertainment";
  }
}

void main() {
  List<Expense> expenses = [];

  while (true) {
    print("\n===== Expense Tracker =====");
    print("1. Add Expense");
    print("2. View All Expenses");
    print("3. Show Total Expenses");
    print("4. Exit");

    stdout.write("\nChoose Option: ");
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write("\nEnter Expense Title: ");
        String title = stdin.readLineSync()!;

        stdout.write("Enter Expense Amount: ");
        double amount = double.parse(stdin.readLineSync()!);

        stdout.write("Enter Category: ");
        String category = stdin.readLineSync()!;

        Expense expense;

        if (category.toLowerCase() == "food") {
          expense = Food(title, amount);
        } else if (category.toLowerCase() == "transport") {
          expense = Transport(title, amount);
        } else if (category.toLowerCase() == "entertainment") {
          expense = Entertainment(title, amount);
        } else {
          print("Invalid Category!");
          continue;
        }
        expenses.add(expense);
        print("\nExpense Added Successfully!");
        break;
      case 2:
        print("\n===== All Expenses =====");
        if (expenses.isEmpty) {
          print("No expenses found!");
        } else {
          for (int i = 0; i < expenses.length; i++) {
            print("${i + 1}. ${expenses[i].display()}");
          }
        }
        break;
      case 3:
        double total = 0;
        for (var expense in expenses) {
          total += expense.amount;
        }
        print("\nTotal Expenses: ${total.formatAmount()}");
        break;
      case 4:
        print("\nThank you for using Expense Tracker!");
        return;
      default:
        print("Invalid Option!");
    }
  }
}
