part of 'expenses_bloc.dart';

@immutable
abstract class ExpensesEvent {}

class AddExpenses extends ExpensesEvent {
  final String categpry;
  final int cost;

  AddExpenses({
    required this.categpry,
    required this.cost,
  });
}

class GetExpensesPeriod extends ExpensesEvent {
  final DateTimeRange range;

  GetExpensesPeriod({required this.range});
}

class GetMonthExpensesPeriod extends ExpensesEvent {}

class GetExpenses extends ExpensesEvent {
  final DateTime date;

  GetExpenses({required this.date});
}
