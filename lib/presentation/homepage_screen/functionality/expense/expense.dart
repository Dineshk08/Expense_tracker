//expense.dart


import 'package:uuid/uuid.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { Essentials, Transportation, Housing, Healthcare, Education, Personal_Care, Entertainment, Communication, Savings, Investments, Dept_payments, Miscellaneous, Travel_Entertainment, Emergency_Fund}

const categoryIcons = {
  Category.Essentials: Icons.add_business_rounded,
  Category.Transportation: Icons.directions_car_filled,
  Category.Housing: Icons.add_home_work_sharp ,
  Category.Healthcare: Icons.health_and_safety_rounded,
  Category.Education: Icons.school_rounded,
  Category.Personal_Care: Icons.attribution_outlined,
  Category.Entertainment: Icons.add_home_work_sharp ,
  Category.Communication: Icons.face_retouching_natural_sharp,
  Category.Savings: Icons.area_chart_sharp,
  Category.Investments: Icons.attach_money_outlined,
  Category.Dept_payments: Icons.feed_rounded ,
  Category.Miscellaneous: Icons.fitness_center_sharp,
  Category.Travel_Entertainment: Icons.fire_truck_rounded ,
  Category.Emergency_Fund: Icons.fireplace_outlined,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : 
  
  
  id = uuid.v4();

  

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

   Map<String, dynamic> toJson() {
    return {
      'title': title,
      'amount': amount,
      'date': date.toIso8601String(),
      'category': category.index
    };
  }

 
  factory Expense.fromJson(Map<String, dynamic> json) {
  return Expense(
    title: json['title'],
    amount: json['amount'],
    date: DateTime.parse(json['date']),
    category: Category.values[json['category']],
  );
}



  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;

    for (final expense in expenses) {
      sum = sum + expense.amount;
    }
    return sum;
  }
}
