import 'package:get/get.dart';

import '../../modules/home/home_screen.dart';

class Routes {
  static const String homeRoute = '/';
  static const String resRoute = '/mapScreen';
}

List<GetPage<dynamic>> appRoutes = [
  GetPage(name: Routes.homeRoute, page: () => Home()),

];