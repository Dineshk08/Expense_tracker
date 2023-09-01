//expense_item.dart



import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense.dart';
import 'package:dinesh_s_application42/core/app_export.dart';


class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key?key}): super(
          key: key,
        );

  final Expense expense;

@override
  Widget build(BuildContext context) {
    return Card(
      
      child: Container(
      padding: getPadding(
        left: 24,
        top: 13,
        right: 24,
        bottom: 13,
      ),
      decoration: AppDecoration.fill.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          
          Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
          Padding(
            padding: getPadding(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 20,
                  ),
                  child: Text(
                    expense.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyLarge?.copyWith(
    color: Color.fromARGB(255, 227, 110, 60),
  ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                    right:20
                  ),
                  child:Text(expense.formattedDate,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 20,
              right: 3,
              bottom: 12,
            ),
            child: Text('₹ ${expense.amount.toStringAsFixed(2)}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyLarge?.copyWith(
    color: const Color.fromARGB(255, 227, 110, 60),
  ),
            ),
          ),
        ],
      ),
    )
    );
  }
}



