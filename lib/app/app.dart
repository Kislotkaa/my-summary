import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'resources/app_strings.dart';
import 'routes/app_pages.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Summary",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      locale: const Locale('ru_RU'),
      translations: AppStrings(),
    );
  }
}
