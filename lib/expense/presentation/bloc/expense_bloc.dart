import 'package:expense_tracker/expense/data/datasource/local_data_box.dart';
import 'package:expense_tracker/expense/data/models/expense.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'expense_event.dart';
part 'expense_state.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, ExpenseState> {
  ExpenseBloc() : super(ExpenseInitial()) {
    Box<ExpenseModel> boxTransaction;
    List<ExpenseModel> transactions = [];
    ExpenseModel? transaction;
    on<FetchAllData>(
      (event, emit) {
        try {
          boxTransaction = Boxes.getTransactions();
          transactions = boxTransaction.values.toList();
          emit(DisplayAllDatas(transactions: transactions));
        } catch (e) {
          print('$e');
        }
      },
    );
    on<AddData>(
      (event, emit) {
        try {
          final box = Boxes.getTransactions();
          box.add(event.transaction);
        } catch (e) {
          print('$e');
        }
      },
    );
    on<UpdateSpecificData>(
      (event, emit) {
        try {
          transaction = event.transaction;
          transaction!.name = event.name;
          transaction!.amount = event.amount;
          transaction!.date = event.date;
          transaction!.save();
          add(const FetchAllData());
        } catch (e) {
          print('$e');
        }
      },
    );
    on<DeleteSpecificData>(
      (event, emit) {
        try {
          event.transaction.delete();
          add(const FetchAllData());
        } catch (e) {
          print('$e');
        }
      },
    );
  }
}
