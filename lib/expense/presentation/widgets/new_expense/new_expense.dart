import 'package:expense_tracker/config/theme.dart';
import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker/expense/presentation/widgets/expenses_widget.dart';
import 'package:expense_tracker/expense/presentation/widgets/new_expense/button_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  DateTime? selectedDate;
  //Category selectedCategory = Category.leisure;

  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );
    setState(
      () {
        selectedDate = pickedDate;
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseBloc(),
      child: SizedBox(
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 48, 16, 16),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                maxLength: 60,
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: amountController,
                      decoration: const InputDecoration(
                        prefixText: '\$',
                        label: Text('amount'),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          selectedDate == null
                              ? 'No selected'
                              : formatter.format(selectedDate!),
                        ),
                        IconButton(
                          onPressed: _presentDatePicker,
                          icon: const Icon(Icons.calendar_month),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  ButtonExpense(
                    titleController: titleController,
                    amountController: amountController,
                    context: context,
                    selectedDate: selectedDate,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
