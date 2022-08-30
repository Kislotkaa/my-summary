import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/base_adaptive_home_content.dart';
import '../../../widgets/base_drawer_content.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.key,
      drawer: BaseDrawerContent(),
      body: BaseAdaptiveHomeContent(controller: controller),
    );
  }
}
