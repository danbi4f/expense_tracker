import 'package:expense_tracker/expense/data/models/expense_model.dart';

List<Expense> expenseList = [
  Expense(
    name: 'Treadmill',
    price: 1500,
    category: Category.work,
    date: DateTime.now(),
  ),
  Expense(
    name: 'Christmas tree',
    price: 300,
    category: Category.home,
    date: DateTime.now(),
  ),
];

final expense = Expense(
  name: 'Christmas tree',
  price: 300,
  category: Category.home,
  date: DateTime.now(),
);
