//expenses_list.dart


import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    Key?key,
    required this.expenses,
    required this.onRemoveExpense,
  }): super(
          key: key,
        );

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(
          expenses[index],
        ),
      ),
    );
  }
}


// card