import 'dart:developer';

import 'package:get/get.dart';
import '../../model/thome.dart';
import '../../repositories/api/api_requests/api_requests.dart';


class HomeController extends GetxController {
  THome? data;
  fetchMediaData() async {
    data = await ApiRequests().testRequest();
    return data;
  }

  fetchMediaData2() {
    log(data!.status!);
  }

  // @override
  // void onInit() {
  //   fetchMediaData();
  //   super.onInit();
  // }
}
