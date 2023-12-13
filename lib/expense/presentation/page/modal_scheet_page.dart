import 'package:expense_tracker/expense/presentation/widgets/new_expense/new_expense.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ModalSheetPage extends StatelessWidget {
  const ModalSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    void openExpenseOverlay() {
      showBottomSheet(
        context: context,
        builder: (context) => NewExpense(),
      );
    }

    return IconButton(
      onPressed: openExpenseOverlay,
      icon: const Icon(Icons.add),
    );
  }
}


/*


*/