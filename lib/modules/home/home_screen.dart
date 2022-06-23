import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../app/app_route/app_router.dart';
import '../../widget/locale_button.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.accessibility_new)],
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) => SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(10.0.w),
              child: Column(
                children: [
                  Text("title".trArgs(['John'])),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text("wellcome".tr),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: ListView.separated(
                        itemBuilder: (context, index) =>
                            LocaleButton(locale: LOCALE.values[index]),
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 20,
                            ),
                        itemCount: LOCALE.values.length),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        homeController.fetchMediaData();
                        // print(controller.data!.totalResults.toString());
                      },
                      child: const Text('Go to Res Screen')),
                  ElevatedButton(
                      onPressed: () {
                        controller.fetchMediaData2();
                        // print(controller.data!.totalResults.toString());
                      },
                      child: const Text('Go to Res Screen')),

                  // Expanded(child: ListView.builder(
                  //   itemBuilder: (BuildContext context, int index) {
                  //     return Text(controller.data!.totalResults.toString());
                  //   },
                  // )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
