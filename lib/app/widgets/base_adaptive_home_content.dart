import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'base_button_drawer.dart';
import 'base_left_content_fill.dart';
import 'base_right_content.dart';
import 'base_right_content_fill.dart';
import 'base_text.dart';
import 'base_title.dart';

class BaseAdaptiveHomeContent extends StatelessWidget {
  const BaseAdaptiveHomeContent({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Center(
        child: Container(
          color: Colors.white,
          child: () {
            if (Get.width <= 768) {
              return SmallHomeScreen(controller: controller);
            } else {
              if (controller.key.currentState?.isDrawerOpen ?? false) {
                Navigator.pop(context);
              }
              return BigHomeScreen(controller: controller);
            }
          }(),
        ),
      ),
    ]);
  }
}

class BigHomeScreen extends StatelessWidget {
  const BigHomeScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BaseLeftContentFill(controller: controller),
        BaseRightContentFill(controller: controller),
      ],
    );
  }
}

class SmallHomeScreen extends StatelessWidget {
  const SmallHomeScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BaseRightContentFill(
          controller: controller,
          isSmallScreen: true,
        ),
        BaseButtonDrawer(
          keyGlobal: controller.key,
        ),
      ],
    );
  }
}
