import 'package:expense_tracker/config/theme.dart';
import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:expense_tracker/expense/presentation/page/expenses_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ExpenseModelAdapter());
  

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
