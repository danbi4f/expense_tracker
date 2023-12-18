import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:expense_tracker/expense/presentation/widgets/expense_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ExpensesListWidget extends StatelessWidget {
  const ExpensesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExpenseBloc(),
      child: BlocBuilder<ExpenseBloc, ExpenseState>(
        builder: (context, state) {
          if (state is ExpenseInitial) {
            context.watch<ExpenseBloc>().add(
                  const ReadData(),
                );
          }
          if (state is DisplayAllDatas) {
            if (state.expenses.isNotEmpty) {
              return Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.builder(
                        itemCount: state.expenses.length,
                        itemBuilder: (context, index) => Dismissible(
                          key: ValueKey(
                            state.expenses[index],
                          ),
                          background: Container(
                            color: Theme.of(context)
                                .colorScheme
                                .error
                                .withOpacity(0.75),
                          ),
                          onDismissed: (direction) async {
                            final box =
                                await Hive.openBox<ExpenseModel>('expenseBox');
                            box.deleteAt(index);
                          },
                          child: ExpenseItemWidget(
                            expense: state.expenses[index],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }
          }
          return BlocBuilder<ExpenseBloc, ExpenseState>(
            builder: (context, state) {
              if (state is ExpenseInitial) {
                return Center(
                  child: Text(
                    'empty'.toUpperCase(),
                    style: const TextStyle(fontSize: 21),
                  ),
                );
              }
              return const Text('error');
            },
          );
        },
      ),
    );
  }
}


/*



*/