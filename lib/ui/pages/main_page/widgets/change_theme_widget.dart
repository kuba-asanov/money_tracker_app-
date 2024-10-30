import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:money_traffic_app/bloc/theme_bloc.dart';

class ChangeThemeWidget extends StatelessWidget {
  const ChangeThemeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Hive.box('theme').get('theme') == 'dark'
            ? context.read<ThemeBloc>().add(ChangeThemeEvent(theme: 'light'))
            : context.read<ThemeBloc>().add(ChangeThemeEvent(theme: 'dark'));
      },
      icon: const Icon(Icons.mode_night_outlined),
    );
  }
}
