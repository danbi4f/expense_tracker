import 'package:expense_tracker/expense/data/models/expense_model.dart';
import 'package:hive/hive.dart';

part 'expense_data_source.g.dart';

@HiveType(typeId: 1)
class ExpenseDataSource {
  ExpenseDataSource(
      {required this.name,
      required this.price,
      required this.category,
      required this.date});
  @HiveField(0)
  String name;

  @HiveField(1)
  int price;

  @HiveField(2)
  Category category;

  @HiveField(3)
  DateTime? date;
}
