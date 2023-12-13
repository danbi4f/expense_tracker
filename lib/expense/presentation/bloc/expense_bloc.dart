import 'package:expense_tracker/expense/data/datasource/local_db_boxes.dart';
import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(ExpenseInitial()) {
    Box<ExpenseModel> boxExpense;
    List<ExpenseModel> expenses = [];
    ExpenseModel? expense;
    on<ReadData>(
      (event, emit) {
        try {
          boxExpense = Boxes.getExpenses();
          expenses = boxExpense.values.toList();
          emit(DisplayAllDatas(expenses: expenses));
        } catch (e) {
          print('$e');
        }
      },
    );
    on<CreateData>(
      (event, emit) {
        try {
          final box = Boxes.getExpenses();
          box.add(event.expense);
        } catch (e) {
          print('$e');
        }
      },
    );
    on<UpdateData>(
      (event, emit) {
        try {
          expense = event.expense;
          expense!.name = event.name;
          expense!.amount = event.amount;
          expense!.date = event.date;
          expense!.save();
          add(const ReadData());
        } catch (e) {
          print('$e');
        }
      },
    );
    on<DeleteData>(
      (event, emit) {
        try {
          event.expense.delete();
          add(const ReadData());
        } catch (e) {
          print('$e');
        }
      },
    );
  }
}
