import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<ExpenseModel> getExpenses() =>
      Hive.box<ExpenseModel>('expenses');
}