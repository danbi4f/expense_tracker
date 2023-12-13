part of 'expense_bloc.dart';

sealed class ExpenseState extends Equatable {
  const ExpenseState();

  @override
  List<Object> get props => [];
}

final class ExpenseInitial extends ExpenseState {}

class DisplayAllDatas extends ExpenseState {
  const DisplayAllDatas({required this.expenses});
  final List<ExpenseModel> expenses;

@override
  List<Object> get props => [expenses];
}

class DisplaySpecificData extends ExpenseState {
  const DisplaySpecificData({required this.expense});
  final ExpenseModel expense;

  @override
  List<Object> get props => [expense];
}
