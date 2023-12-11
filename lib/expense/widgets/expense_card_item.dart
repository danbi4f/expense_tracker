import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:expense_tracker/expense/data/models/expense_model.dart';

class ExpenseItemWidget extends StatelessWidget {
  const ExpenseItemWidget({super.key});

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
              'name', // expense.name
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 4),
            const Row(
              children: [
                Text(
                  'price', // expense.price.toStringAsFixed(2)
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.abc), // Icon(categoryIcons[expense.category]),
                    SizedBox(width: 8),
                    Text('date'), //expense.formattedDate
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
