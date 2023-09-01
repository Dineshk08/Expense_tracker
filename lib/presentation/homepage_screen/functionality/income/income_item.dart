import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income.dart';
import 'package:dinesh_s_application42/core/app_export.dart';


class IncomeItem extends StatelessWidget {
  const IncomeItem(this.income, {Key?key}): super(
          key: key,
        );

  final Income income;

  

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
          
          Icon(categoryIcons[income.category]),
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
                    income.title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                    right:20
                  ),
                  child:Text(income.formattedDate,
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
            child: Text('₹ ${income.amount.toStringAsFixed(2)}',
              selectionColor: Color.fromARGB(255, 0, 212, 106),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.bodyLarge ,
            ),
          ),
        ],
      ),
    )
    );
  }
}



