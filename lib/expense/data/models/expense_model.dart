import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, travel, leisure, work, home }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie_sharp,
  Category.work: Icons.work,
  Category.home: Icons.home,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}
