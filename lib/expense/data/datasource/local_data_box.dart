import 'package:expense_tracker/expense/data/models/expense.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<ExpenseModel> getTransactions() =>
      Hive.box<ExpenseModel>('transactions');
}
