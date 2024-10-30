import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:money_traffic_app/constans/app_constans.dart';
import 'package:money_traffic_app/ui/alert_dialog/expenses_alert.dart';
import 'package:money_traffic_app/ui/pages/main_page/bloc/expenses_bloc.dart';
import 'package:money_traffic_app/ui/pages/main_page/bloc/expenses_state.dart';

class PeriodWidget extends StatelessWidget {
  const PeriodWidget({
    Key? key,
    required ExpensesBloc expensesBloc,
  })  : _expensesBloc = expensesBloc,
        super(key: key);

  final ExpensesBloc _expensesBloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExpensesBloc, UserExpenses>(
      bloc: _expensesBloc,
      builder: (context, state) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(MediaQuery.of(context).size.width, 0),
            backgroundColor: Theme.of(context).indicatorColor,
            foregroundColor: Theme.of(context).canvasColor,
          ),
          onPressed: () async {
            final DateTimeRange range =
                await CustomAlertDialog.getDateTime(context) ??
                    AppConst.initialDateTimeRange;

            _expensesBloc.add(GetExpensesPeriod(range: range));
          },
          child: Text(
            AppConst.dateFormat.format(DateTime.now()),
            style: const TextStyle(fontSize: 25),
          ),
        );
      },
    );
  }
}
