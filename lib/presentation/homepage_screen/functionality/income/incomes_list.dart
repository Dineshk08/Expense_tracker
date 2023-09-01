import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income_item.dart';
import 'package:flutter/material.dart';

class IncomesList extends StatelessWidget {
  const IncomesList({
    Key?key,
    required this.incomes,
    required this.onRemoveIncome,
  }): super(
          key: key,
        );

  final List<Income> incomes;
  final void Function(Income income) onRemoveIncome;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: incomes.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(incomes[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          
        ),
        onDismissed: (direction) {
          onRemoveIncome(incomes[index]);
        },
        child: IncomeItem(
          incomes[index],
        ),
      ),
    );
  }
}


// card