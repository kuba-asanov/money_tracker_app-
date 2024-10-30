import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_traffic_app/constans/app_constans.dart';
import 'package:money_traffic_app/init/lang/locale_keys.g.dart';
import 'package:money_traffic_app/services/local_data_base/entity/expenses.dart';
import 'package:money_traffic_app/ui/alert_dialog/expenses_alert.dart';
import 'package:money_traffic_app/ui/pages/main_page/bloc/expenses_bloc.dart';
import 'package:money_traffic_app/ui/pages/main_page/bloc/expenses_state.dart';
import 'package:money_traffic_app/ui/pages/main_page/widgets/change_locale_widget.dart';
import 'package:money_traffic_app/ui/pages/main_page/widgets/change_theme_widget.dart';
import 'package:money_traffic_app/ui/pages/main_page/widgets/period_widget.dart';
import 'package:money_traffic_app/ui/pages/search/search_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late ExpensesBloc _expensesBloc;
  List<Expenses> listExpenses = [];

  @override
  void initState() {
    _expensesBloc = ExpensesBloc();
    _expensesBloc.add(GetExpensesPeriod(range: AppConst.initialDateTimeRange));
    _expensesBloc.add(GetMonthExpensesPeriod());
    super.initState();
  }

  void _inputExpenses() {
    CustomAlertDialog.expensesAlertDialog(
      expensesBloc: _expensesBloc,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SearchPage(
                    listExpenses: listExpenses,
                  ),
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Text(LocaleKeys.toDay.tr())),
              Tab(icon: Text(LocaleKeys.perMonth.tr())),
              Tab(icon: Icon(Icons.show_chart_sharp)),
            ],
          ),
          title: PeriodWidget(expensesBloc: _expensesBloc),
          centerTitle: true,
          actions: const [
            ChangeThemeWidget(),
            ChangeLocaleWidget(),
          ],
        ),
        body: BlocProvider(
          create: (context) => _expensesBloc,
          child: BlocBuilder<ExpensesBloc, UserExpenses>(
            builder: (context, state) {
              return TabBarView(
                children: [
                  _CustomListView(
                    expensesBloc: _expensesBloc,
                    sum: state.sum,
                    listExpenses: state.listExpenses,
                  ),
                  _CustomListView(
                    expensesBloc: _expensesBloc,
                    sum: state.sumForFood,
                    listExpenses: state.monthExpenses,
                  ),
                  _CustomListView(
                    expensesBloc: _expensesBloc,
                    sum: state.sumMonth,
                    listExpenses: state.monthExpenses,
                  ),
                ],
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(width: 10),
            FloatingActionButton(
              heroTag: 'add',
              onPressed: _inputExpenses,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomListView extends StatelessWidget {
  final ExpensesBloc expensesBloc;
  final int sum;

  final List<Expenses> listExpenses;
  const _CustomListView({
    Key? key,
    required this.expensesBloc,
    required this.sum,
    required this.listExpenses,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                alignment: Alignment.center,
                child: Text(
                  '${LocaleKeys.sum.tr()}: $sum',
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.sort),
                splashRadius: 20,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            itemCount: listExpenses.length,
            itemBuilder: (context, index) => InkWell(
              onLongPress: () async {
                CustomAlertDialog.deleteExpensesDialog(
                  context,
                  expensesBloc: expensesBloc,
                  index: index,
                );
              },
              child: Card(
                child: ListTile(
                  subtitle: Text(
                      '${LocaleKeys.date.tr()}: ${listExpenses[index].date.year}.${listExpenses[index].date.month}.${listExpenses[index].date.day}'),
                  title: Text(
                      '${LocaleKeys.category.tr()}: ${listExpenses[index].category}'),
                  trailing: Text('${listExpenses[index].cost} \$'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
