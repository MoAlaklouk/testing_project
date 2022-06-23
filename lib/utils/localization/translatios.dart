import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'title': 'Hello World %s',
          'wellcome': 'Wellcome ',
        },
        'ar': {
          'title': 'مرحبا بالجميع',
          'wellcome': 'اهلا و سهلا',
        },
        'fr': {
          'title': 'bienvenu à tous',
          'wellcome': 'Bienvenue',
        },
        'ja': {
          'title': 'みなさん、ようこそ',
          'wellcome': 'こんにちは',
        },
      };
}
