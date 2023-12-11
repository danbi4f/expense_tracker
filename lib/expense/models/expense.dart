import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

part 'expense.g.dart';
final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};


@HiveType(typeId: 1)
class ExpenseModel {
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
