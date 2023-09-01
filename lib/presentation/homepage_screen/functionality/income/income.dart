import 'package:uuid/uuid.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category1 { Employment, Rental, Investment, Royalties, Pension, Awards}

const categoryIcons = {
  Category1.Employment: Icons.account_balance_wallet,
  Category1.Rental: Icons.house_rounded,
  Category1.Investment: Icons.attach_money_outlined,
  Category1.Royalties: Icons.airport_shuttle_outlined,
  Category1.Pension: Icons.account_balance_wallet_outlined,
  Category1.Awards: Icons.auto_awesome,
};

class Income {
  Income({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category1 category;

  String get formattedDate {
    return formatter.format(date);
  }
}

class IncomeBucket {
  const IncomeBucket({
    required this.category,
    required this.incomes,
  });

  IncomeBucket.forCategory1(List<Income> allIncomes, this.category)
      : incomes = allIncomes
            .where((income) => income.category == category)
            .toList();

  final Category1 category;
  final List<Income> incomes;

  double get totalIncomes {
    double sum = 0;

    for (final income in incomes) {
      sum = sum + income.amount;
    }
    return sum;
  }
}
