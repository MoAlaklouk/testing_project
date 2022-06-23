
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../helper/keys/storage_key.dart';

import '../local_storage/local_storage.dart';

class LocaleController extends GetxController {
  Locale? locale;

  LocalStorage localStorage = LocalStorage();

  changeLang({required String languageCode}) {
    localStorage.saveToStorage(
        key: ConstantsManager.langKey, value: languageCode);
    Get.updateLocale(Locale(languageCode));
    update();
  }

  @override
  void onInit() async {
    dynamic storageLang =
        await localStorage.getFromStorage(key: ConstantsManager.langKey);

    locale = storageLang == null ? Locale('en') : Locale(storageLang);

    super.onInit();
  }
}
