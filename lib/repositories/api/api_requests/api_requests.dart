import 'dart:developer';

import '../../../model/thome.dart';
import '../api_core/api.dart';
import '../api_core/methods.dart';


class ApiRequests {
  THome? tHome;

  testRequest() {
    ApiRequest(
      path: '',
      method: getMethod,
      withLoading: true,
      // body: {'': ''},
    ).request(
      onSuccess: (data, response) {
        tHome = THome.fromJson(response);
        log(tHome!.status!);
      },
      onError: (e) {
        log(e.toString());
      },
    );
  }
}
