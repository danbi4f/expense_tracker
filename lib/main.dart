import 'package:expense_tracker/config/theme.dart';
import 'package:expense_tracker/expense/models/expense.dart';

import 'package:expense_tracker/expense/page/expenses_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'boxes.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExpenseModelAdapter());
  boxExpenses = await Hive.openBox<ExpenseModel>('expenseBox');

  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const ExpensesPage(),
        );
  }
}
