import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money_traffic_app/services/local_data_base/entity/expenses.dart';

part 'expenses_state.freezed.dart';

@freezed
class UserExpenses with _$UserExpenses {
  const factory UserExpenses({
    @Default(0) int sum,
    @Default(0) int sumForFood,
    @Default(0) int sumMonth,
    @Default(false) bool loading,
    @Default([]) List<Expenses> listExpenses,
    @Default([]) List<Expenses> monthExpenses,
    DateTimeRange? range,
  }) = _UserExpenses;
}
