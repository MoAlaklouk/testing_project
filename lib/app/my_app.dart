import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import '../utils/localization/changelocale.dart';
import '../utils/localization/translatios.dart';
import 'binding.dart';
import 'app_route/app_router.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  LocaleController localeController = Get.put(LocaleController());
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (BuildContext context, Widget? child) => GetMaterialApp(
        locale: localeController.locale,
        debugShowCheckedModeBanner: false,
        translations: MyTranslations(),
        initialBinding: Binding(),
        getPages: appRoutes,
        builder: (context, child) {
          return FlutterSmartDialog(child: child);
        },
      ),
    );
  }
}
