part of 'expense_bloc.dart';

sealed class ExpenseState extends Equatable {
  const ExpenseState();

  @override
  List<Object> get props => [];
}

final class ExpenseInitial extends ExpenseState {}

class DisplayAllDatas extends ExpenseState {
  const DisplayAllDatas({required this.transactions});
  final List<ExpenseModel> transactions;

  List<Object> get props => [transactions];
}

class DisplaySpecificData extends ExpenseState {
  const DisplaySpecificData({required this.transaction});
  final ExpenseModel transaction;

  @override
  List<Object> get props => [transaction];
}
