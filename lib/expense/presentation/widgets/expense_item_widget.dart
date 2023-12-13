import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:flutter/material.dart';

class ExpenseItemWidget extends StatelessWidget {
  const ExpenseItemWidget({
    super.key,
    required this.expense,
  });

  final ExpenseModel expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.name, // expense.name
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  expense.amount
                      .toStringAsFixed(2), // expense.price.toStringAsFixed(2)
                ),
                const Spacer(),
                Row(
                  children: [
                    const Icon(Icons.abc), // Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate), //expense.formattedDate
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
