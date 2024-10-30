import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:money_traffic_app/constans/app_constans.dart';
import 'package:money_traffic_app/services/local_data_base/entity/expenses.dart';
import 'package:money_traffic_app/ui/pages/main_page/bloc/expenses_state.dart';

part 'expenses_event.dart';

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isThisMonth(DateTime other) {
    return year == other.year && month == other.month;
  }

  bool isOnPeriod({
    required DateTime date,
    required DateTimeRange range,
  }) {
    return date.isBefore(range.end) && date.isAfter(range.start) ||
        date.isSameDate(range.start) ||
        date.isSameDate(range.end);
  }
}

class ExpensesBloc extends Bloc<ExpensesEvent, UserExpenses> {
  ExpensesBloc() : super(const UserExpenses()) {
    on<AddExpenses>((event, emit) async {
      if (!Hive.isAdapterRegistered(1)) {
        Hive.registerAdapter(ExpensesAdapter());
      }

      final _box = await Hive.openBox<Expenses>(AppConst.expensesHiveBox);
      _box.add(
        Expenses(
          category: event.categpry,
          cost: event.cost,
          date: DateTime.now(),
        ),
      );
    });

    on<GetMonthExpensesPeriod>(
      (event, emit) async {
        emit(state.copyWith(loading: true));

        final List<Expenses>? listExpenses;

        if (!Hive.isAdapterRegistered(1)) {
          Hive.registerAdapter(ExpensesAdapter());
        }

        final _box = await Hive.openBox<Expenses>(AppConst.expensesHiveBox);

        listExpenses = _box.values
            .where((element) => element.date.isThisMonth(DateTime.now()))
            .toList();

        emit(
          state.copyWith(
            listExpenses: listExpenses,
            loading: false,
          ),
        );
      },
    );

    on<GetExpenses>((event, emit) async {
      emit(state.copyWith(loading: true));

      final List<Expenses>? listExpenses;
      int sum = 0;

      if (!Hive.isAdapterRegistered(1)) {
        Hive.registerAdapter(ExpensesAdapter());
      }

      final _box = await Hive.openBox<Expenses>(AppConst.expensesHiveBox);

      listExpenses = _box.values
          .where((element) => element.date.isSameDate(event.date))
          .toList();

      for (var i = 0; i < listExpenses.length; i++) {
        sum += listExpenses[i].cost;
      }
      // emit(ExpensesLoadedState(
      //   range: event.ra,
      //   listExpenses: listExpenses,
      //   sum: sum,
      // ));
    });

    on<GetExpensesPeriod>(
      (event, emit) async {
        emit(state.copyWith(loading: true));

        final List<Expenses>? listExpenses;
        int sum = 0;

        if (!Hive.isAdapterRegistered(1)) {
          Hive.registerAdapter(ExpensesAdapter());
        }

        final _box = await Hive.openBox<Expenses>(AppConst.expensesHiveBox);

        listExpenses = _box.values
            .where((element) =>
                element.date.isOnPeriod(date: element.date, range: event.range))
            .toList();

        for (var i = 0; i < listExpenses.length; i++) {
          sum += listExpenses[i].cost;
        }
        
        emit(
          state.copyWith(
            range: event.range,
            listExpenses: listExpenses,
            sum: sum,
          ),
        );
      },
    );
  }
}
