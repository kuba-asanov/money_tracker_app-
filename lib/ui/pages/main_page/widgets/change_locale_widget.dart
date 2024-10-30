import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLocaleWidget extends StatelessWidget {
  const ChangeLocaleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        switch (EasyLocalization.of(context)?.locale.languageCode) {
          case 'ru':
            await EasyLocalization.of(context)
                ?.setLocale(const Locale.fromSubtags(languageCode: 'en'));
            break;
          case 'en':
            await EasyLocalization.of(context)
                ?.setLocale(const Locale.fromSubtags(languageCode: 'ky'));
            break;
          case 'ky':
            await EasyLocalization.of(context)
                ?.setLocale(const Locale.fromSubtags(languageCode: 'ru'));
            break;
        }
      },
      icon: Text(
        EasyLocalization.of(context)?.locale.languageCode.toUpperCase() ?? '',
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
