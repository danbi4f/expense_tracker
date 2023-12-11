import 'package:expense_tracker/expense/page/modal_scheet_page.dart';
import 'package:expense_tracker/expense/widgets/expenses_list_widget.dart';
import 'package:flutter/material.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: const [
          ModalSheetPage(),
        ],
      ),
      body: const Column(
        children: [
          Text('Chart'),
          ExpensesListWidget(),
        ],
      ),
    );
  }
}
