import 'package:expense_tracker/expense/presentation/widgets/expense_card_widget.dart';
import 'package:flutter/material.dart';

class ExpensesListWidget extends StatelessWidget {
  const ExpensesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) => const ExpenseItemWidget(),
            ),
          ),
        ),
      ),
    );
  }
}


/*



*/