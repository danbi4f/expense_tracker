import 'package:uuid/uuid.dart';

const uuid = Uuid();
enum Category{food, travel, leisure, work}

class Expense {
   Expense({
    required this.name,
    required this.price,
    required this.category,
    required this.date,
  }) : id = uuid.v4();

  final String name;
  final int price;
  final String id;
  final Category category;
  final DateTime date;
}
