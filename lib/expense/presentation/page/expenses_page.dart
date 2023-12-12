import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker/expense/presentation/widgets/expenses_list_widget.dart';
import 'package:expense_tracker/expense/presentation/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  State<ExpensesPage> createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    openAddExpenseOverlay() {
      
    }

    return BlocBuilder<ExpenseBloc, ExpenseState>(
      builder: (context, state) {
        if (state is ExpenseState) {
              context.read<ExpenseBloc>().add(
                    const FetchAllData(),
                  );
            }          
            if (state is DisplayAllDatas) {
              if (state.transactions.isNotEmpty) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Expense Tracker'),
            actions: [
              IconButton(
                onPressed: (){
                  showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) => NewExpense(transaction: state.transactions[1]),
        );
                },
                icon: const Icon(Icons.add),
              ),
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
      return Text('data');
      }
    );
  }
}
