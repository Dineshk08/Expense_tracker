import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense.dart';

class ExpenseBloc extends Bloc<ExpenseEvent, List<Expense>> {
  final SharedPreferences _prefs;

  ExpenseBloc(this._prefs) : super([]);

  @override
  Stream<List<Expense>> mapEventToState(ExpenseEvent event) async* {
    if (event is AddExpenseEvent) {
      final updatedExpenses = List.of(state)..add(event.expense);
      await saveExpenses(updatedExpenses);
      yield updatedExpenses;
    } else if (event is RemoveExpenseEvent) {
      final updatedExpenses = List.of(state)..remove(event.expense);
      await saveExpenses(updatedExpenses);
      yield updatedExpenses;
    } else if (event is LoadExpensesEvent) {
      yield event.expenses;
    }
  }

  Future<void> saveExpenses(List<Expense> expenses) async {
    final jsonData = expenses.map((expense) => expense.toJson()).toList();
    await _prefs.setString('expenses', jsonEncode(jsonData));
  }

  Future<void> loadExpenses() async {
    final jsonData = _prefs.getString('expenses');
    if (jsonData != null) {
      final List<dynamic> jsonList = jsonDecode(jsonData);
      final expenses = jsonList.map((jsonExpense) => Expense.fromJson(jsonExpense)).toList();
      add(LoadExpensesEvent(expenses));
    }
  }
}

abstract class ExpenseEvent {}

class AddExpenseEvent extends ExpenseEvent {
  final Expense expense;

  AddExpenseEvent(this.expense);
}

class RemoveExpenseEvent extends ExpenseEvent {
  final Expense expense;

  RemoveExpenseEvent(this.expense);
}

class LoadExpensesEvent extends ExpenseEvent {
  final List<Expense> expenses;

  LoadExpensesEvent(this.expenses);
}
 