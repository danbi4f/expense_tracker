import 'package:expense_tracker/expense/presentation/bloc/expense_bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final formatter = DateFormat.yMd();

class ExpensesListWidget extends StatelessWidget {
  const ExpensesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          child: BlocBuilder<ExpenseBloc, ExpenseState>(
            builder: (context, state) {
              if (state is ExpenseInitial) {
                context.read<ExpenseBloc>().add(const FetchAllData());
              }
              if (state is DisplayAllDatas) {
                if (state.transactions.isNotEmpty) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemCount: state.transactions.length,
                      itemBuilder: (context, i) {
                        //ExpenseModel expense = boxExpenses.getAt(index);
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
                                  state.transactions[i].name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text(
                                      '\$${state.transactions[i].amount.toStringAsFixed(2)}', 
                                    ),
                                    const Spacer(),
                                    Text(state.transactions[i].formattedDate),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                }
              }
              return Center(
                child: Text(
                  'empty'.toUpperCase(),
                  style: const TextStyle(fontSize: 21),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


/*
body: Container(
        padding: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.height,
        child: BlocBuilder<CrudBloc, CrudState>(
          builder: (context, state) {
            if (state is CrudInitial) {
              context.read<CrudBloc>().add(
                    const FetchAllData(),
                  );
            }          
            if (state is DisplayAllDatas) {
              if (state.transactions.isNotEmpty) {
                return Column(
                  children: [
                    Expanded(child: ListView.builder(
                      itemBuilder: (context, i) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => DetailsPage(
                                      transaction: state.transactions[i],
                                    )),
                              ),
                            );
                          },


*/