part of 'expense_bloc.dart';


sealed class ExpenseEvent extends Equatable {
  const ExpenseEvent();

  @override
  List<Object> get props => [];
}



class FetchAllData extends ExpenseEvent {
  const FetchAllData();

  @override
  List<Object> get props => [];
}

class FetchSpecificData extends ExpenseEvent {
  const FetchSpecificData();

  @override
  List<Object> get props => [];
}

class AddData extends ExpenseEvent {
  const AddData({required this.transaction});

  final ExpenseModel transaction;

  @override
  List<Object> get props => [transaction];
}

class DeleteSpecificData extends ExpenseEvent {
  const DeleteSpecificData({required this.transaction});

  final ExpenseModel transaction;

  @override
  List<Object> get props => [transaction];
}

class UpdateSpecificData extends ExpenseEvent {
  const UpdateSpecificData({
    required this.transaction,
    required this.name,
    required this.amount,
    required this.date,
  });

  final ExpenseModel transaction;
  final String name;
  final double amount;
  final DateTime date;

  @override
  List<Object> get props => [name, amount, date, transaction];
}
