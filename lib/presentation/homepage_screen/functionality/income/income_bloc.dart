// income_bloc.dart

import 'package:bloc/bloc.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income.dart';

class IncomeBloc extends Bloc<IncomeEvent, List<Income>> {
  IncomeBloc() : super([]);

  @override
  Stream<List<Income>> mapEventToState(IncomeEvent event) async* {
    if (event is AddIncomeEvent) {
      final updatedIncomes = List.of(state)..add(event.income);
      yield updatedIncomes;
    } else if (event is RemoveIncomeEvent) {
      final updatedIncomes = List.of(state)..remove(event.income);
      yield updatedIncomes;
    }
  }
}

abstract class IncomeEvent {}

class AddIncomeEvent extends IncomeEvent {
  final Income income;

  AddIncomeEvent(this.income);
}

class RemoveIncomeEvent extends IncomeEvent {
  final Income income;

  RemoveIncomeEvent(this.income);
}
