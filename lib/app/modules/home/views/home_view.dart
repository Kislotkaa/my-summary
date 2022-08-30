import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/base_adaptive_home_content.dart';
import '../../../widgets/base_drawer_content.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      rebuildFactor: RebuildFactors.size,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          key: controller.key,
          drawer: BaseDrawerContent(controller: controller),
          body: BaseAdaptiveHomeContent(controller: controller),
        );
      },
    );
  }
}
