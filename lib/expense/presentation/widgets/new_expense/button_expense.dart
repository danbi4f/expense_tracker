import 'package:expense_tracker/config/theme.dart';
import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker/expense/presentation/widgets/expenses_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
/*
class ButtonExpense {
  ButtonExpense({
    required this.titleController,
    required this.amountController,
    required this.context,
    required this.selectedDate,
  });

  TextEditingController titleController;
  TextEditingController amountController;
  DateTime? selectedDate;
  BuildContext context;

  void submitExpenseData() {
    final enteredAmount = double.tryParse(amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        selectedDate == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text('check all fields'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('okay'))
          ],
        ),
      );
    }
    context.read<ExpenseBloc>().add(
          CreateData(
            expense: ExpenseModel(
              name: titleController.text,
              amount: enteredAmount!,
              date: selectedDate!,
            ),
          ),
        );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: theme.primaryColor,
      duration: const Duration(seconds: 1),
      content: const Text("added successfully"),
    ));
    titleController.clear();
    amountController.clear();

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExpensesWidget(),
      ),
    );
  }
}
*/

class ButtonExpense extends StatelessWidget {
  const ButtonExpense({
    super.key,
    required this.titleController,
    required this.amountController,
    required this.context,
    required this.selectedDate,
  });

  final TextEditingController titleController;
  final TextEditingController amountController;
  final DateTime? selectedDate;
  final BuildContext context;

  void submitExpenseData() {
    final enteredAmount = double.tryParse(amountController.text);
    final amountIsInvalid = enteredAmount == null || enteredAmount <= 0;
    if (titleController.text.trim().isEmpty ||
        amountIsInvalid ||
        selectedDate == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Invalid input'),
          content: const Text('check all fields'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('okay'))
          ],
        ),
      );
    }
    context.read<ExpenseBloc>().add(
          CreateData(
            expense: ExpenseModel(
              name: titleController.text,
              amount: enteredAmount!,
              date: selectedDate!,
            ),
          ),
        );
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: theme.primaryColor,
      duration: const Duration(seconds: 1),
      content: const Text("added successfully"),
    ));
    titleController.clear();
    amountController.clear();

    

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ExpensesWidget(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: submitExpenseData,
      child: const Text('Save Expense'),
    );
  }
}
