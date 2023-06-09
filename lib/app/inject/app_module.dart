import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';

Future<void> initAppModule() async {
  _initControllers();
}

void _initControllers() {
  Get.put(HomeController());
}
