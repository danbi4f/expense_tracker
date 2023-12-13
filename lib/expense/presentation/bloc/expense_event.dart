part of 'expense_bloc.dart';

sealed class ExpenseEvent extends Equatable {
  const ExpenseEvent();

  @override
  List<Object> get props => [];
}
class ReadData extends ExpenseEvent {
  const ReadData();

  @override
  List<Object> get props => [];
}



class CreateData extends ExpenseEvent {
  const CreateData({required this.expense});

  final ExpenseModel expense;

  @override
  List<Object> get props => [expense];
}

class DeleteData extends ExpenseEvent {
  const DeleteData({required this.expense});

  final ExpenseModel expense;

  @override
  List<Object> get props => [expense];
}

class UpdateData extends ExpenseEvent {
  const UpdateData({
    required this.expense,
    required this.name,
    required this.amount,
    required this.date,
  });

  final ExpenseModel expense;
  final String name;
  final double amount;
  final DateTime date;

  @override
  List<Object> get props => [name, amount, date, expense];
}