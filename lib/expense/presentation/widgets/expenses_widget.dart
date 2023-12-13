import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker/expense/presentation/page/modal_scheet_page.dart';
import 'package:expense_tracker/expense/presentation/widgets/expenses_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensesWidget extends StatelessWidget {
  const ExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseBloc(),
      child: Scaffold(
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
      ),
    );
  }
}
