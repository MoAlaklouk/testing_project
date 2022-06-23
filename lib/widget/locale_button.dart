import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/localization/changelocale.dart';

enum LOCALE {
  ARBIC,
  ENGLISH,
  FRENCH,
  JAPANESE,
}

LocaleController localeController = Get.find();

class LocaleButton extends StatelessWidget {
  LOCALE locale;
  LocaleButton({
    Key? key,
    required this.locale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text('Change locale to ${locale.name}'),
        onPressed: () {
          switch (locale) {
            case LOCALE.ARBIC:
              localeController.changeLang(languageCode: 'ar');
              break;
            case LOCALE.ENGLISH:
              localeController.changeLang(languageCode: 'en');

              break;
            case LOCALE.FRENCH:
              localeController.changeLang(languageCode: 'fr');

              break;
            case LOCALE.JAPANESE:
              localeController.changeLang(languageCode: 'ja');

              break;
            default:
              Get.updateLocale(Locale('en'));
              break;
          }
        });
  }
}
