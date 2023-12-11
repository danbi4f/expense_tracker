part of 'data_list_cubit.dart';

sealed class DataListState {}

class DataListInitial extends DataListState {}

class DataListLoading extends DataListState {}

class DataListLoaded extends DataListState {
  DataListLoaded();

  List<Expense> data = [
    Expense(
      name: 'Treadmill',
      price: 1500,
      category: Category.work,
      date: DateTime.now(),
    ),
    Expense(
      name: 'Christmas tree',
      price: 300,
      category: Category.home,
      date: DateTime.now(),
    ),
  ];
}
