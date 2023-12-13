import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'expense_model.g.dart';

final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work, home }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie_sharp,
  Category.work: Icons.work,
  Category.home: Icons.home,
};

@HiveType(typeId: 1)
class ExpenseModel extends HiveObject {
  ExpenseModel({
    required this.name,
    required this.amount,
    required this.date,
  });
  @HiveField(0)
  String name;

  @HiveField(1)
  double amount;

  @HiveField(2)
  DateTime date;

  String get formattedDate {
    return formatter.format(date);
  }
}
