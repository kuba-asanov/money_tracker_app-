// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expenses_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserExpenses {
  int get sum => throw _privateConstructorUsedError;
  int get sumForFood => throw _privateConstructorUsedError;
  int get sumMonth => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<Expenses> get listExpenses => throw _privateConstructorUsedError;
  List<Expenses> get monthExpenses => throw _privateConstructorUsedError;
  DateTimeRange? get range => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserExpensesCopyWith<UserExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExpensesCopyWith<$Res> {
  factory $UserExpensesCopyWith(
          UserExpenses value, $Res Function(UserExpenses) then) =
      _$UserExpensesCopyWithImpl<$Res, UserExpenses>;
  @useResult
  $Res call(
      {int sum,
      int sumForFood,
      int sumMonth,
      bool loading,
      List<Expenses> listExpenses,
      List<Expenses> monthExpenses,
      DateTimeRange? range});
}

/// @nodoc
class _$UserExpensesCopyWithImpl<$Res, $Val extends UserExpenses>
    implements $UserExpensesCopyWith<$Res> {
  _$UserExpensesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sum = null,
    Object? sumForFood = null,
    Object? sumMonth = null,
    Object? loading = null,
    Object? listExpenses = null,
    Object? monthExpenses = null,
    Object? range = freezed,
  }) {
    return _then(_value.copyWith(
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      sumForFood: null == sumForFood
          ? _value.sumForFood
          : sumForFood // ignore: cast_nullable_to_non_nullable
              as int,
      sumMonth: null == sumMonth
          ? _value.sumMonth
          : sumMonth // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listExpenses: null == listExpenses
          ? _value.listExpenses
          : listExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expenses>,
      monthExpenses: null == monthExpenses
          ? _value.monthExpenses
          : monthExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expenses>,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserExpensesCopyWith<$Res>
    implements $UserExpensesCopyWith<$Res> {
  factory _$$_UserExpensesCopyWith(
          _$_UserExpenses value, $Res Function(_$_UserExpenses) then) =
      __$$_UserExpensesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int sum,
      int sumForFood,
      int sumMonth,
      bool loading,
      List<Expenses> listExpenses,
      List<Expenses> monthExpenses,
      DateTimeRange? range});
}

/// @nodoc
class __$$_UserExpensesCopyWithImpl<$Res>
    extends _$UserExpensesCopyWithImpl<$Res, _$_UserExpenses>
    implements _$$_UserExpensesCopyWith<$Res> {
  __$$_UserExpensesCopyWithImpl(
      _$_UserExpenses _value, $Res Function(_$_UserExpenses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sum = null,
    Object? sumForFood = null,
    Object? sumMonth = null,
    Object? loading = null,
    Object? listExpenses = null,
    Object? monthExpenses = null,
    Object? range = freezed,
  }) {
    return _then(_$_UserExpenses(
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int,
      sumForFood: null == sumForFood
          ? _value.sumForFood
          : sumForFood // ignore: cast_nullable_to_non_nullable
              as int,
      sumMonth: null == sumMonth
          ? _value.sumMonth
          : sumMonth // ignore: cast_nullable_to_non_nullable
              as int,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      listExpenses: null == listExpenses
          ? _value._listExpenses
          : listExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expenses>,
      monthExpenses: null == monthExpenses
          ? _value._monthExpenses
          : monthExpenses // ignore: cast_nullable_to_non_nullable
              as List<Expenses>,
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as DateTimeRange?,
    ));
  }
}

/// @nodoc

class _$_UserExpenses implements _UserExpenses {
  const _$_UserExpenses(
      {this.sum = 0,
      this.sumForFood = 0,
      this.sumMonth = 0,
      this.loading = false,
      final List<Expenses> listExpenses = const [],
      final List<Expenses> monthExpenses = const [],
      this.range})
      : _listExpenses = listExpenses,
        _monthExpenses = monthExpenses;

  @override
  @JsonKey()
  final int sum;
  @override
  @JsonKey()
  final int sumForFood;
  @override
  @JsonKey()
  final int sumMonth;
  @override
  @JsonKey()
  final bool loading;
  final List<Expenses> _listExpenses;
  @override
  @JsonKey()
  List<Expenses> get listExpenses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listExpenses);
  }

  final List<Expenses> _monthExpenses;
  @override
  @JsonKey()
  List<Expenses> get monthExpenses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthExpenses);
  }

  @override
  final DateTimeRange? range;

  @override
  String toString() {
    return 'UserExpenses(sum: $sum, sumForFood: $sumForFood, sumMonth: $sumMonth, loading: $loading, listExpenses: $listExpenses, monthExpenses: $monthExpenses, range: $range)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserExpenses &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.sumForFood, sumForFood) ||
                other.sumForFood == sumForFood) &&
            (identical(other.sumMonth, sumMonth) ||
                other.sumMonth == sumMonth) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._listExpenses, _listExpenses) &&
            const DeepCollectionEquality()
                .equals(other._monthExpenses, _monthExpenses) &&
            (identical(other.range, range) || other.range == range));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sum,
      sumForFood,
      sumMonth,
      loading,
      const DeepCollectionEquality().hash(_listExpenses),
      const DeepCollectionEquality().hash(_monthExpenses),
      range);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserExpensesCopyWith<_$_UserExpenses> get copyWith =>
      __$$_UserExpensesCopyWithImpl<_$_UserExpenses>(this, _$identity);
}

abstract class _UserExpenses implements UserExpenses {
  const factory _UserExpenses(
      {final int sum,
      final int sumForFood,
      final int sumMonth,
      final bool loading,
      final List<Expenses> listExpenses,
      final List<Expenses> monthExpenses,
      final DateTimeRange? range}) = _$_UserExpenses;

  @override
  int get sum;
  @override
  int get sumForFood;
  @override
  int get sumMonth;
  @override
  bool get loading;
  @override
  List<Expenses> get listExpenses;
  @override
  List<Expenses> get monthExpenses;
  @override
  DateTimeRange? get range;
  @override
  @JsonKey(ignore: true)
  _$$_UserExpensesCopyWith<_$_UserExpenses> get copyWith =>
      throw _privateConstructorUsedError;
}
