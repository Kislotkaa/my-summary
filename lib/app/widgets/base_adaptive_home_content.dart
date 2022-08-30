import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';
import 'base_button_drawer.dart';
import 'base_left_content_fill.dart';
import 'base_right_content.dart';
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
    return SingleChildScrollView(
      child: Center(
        child: Container(
          width: 1080,
          color: Colors.white,
          child: () {
            if (Get.width <= 768) {
              return SmallHomeScreen(controller: controller);
            } else
              return BigHomeScreen(controller: controller);
          }(),
        ),
      ),
    );
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
        BaseRightContent(
          controller: controller,
          children: [
            BaseTitle(
              'Титульный основной текст',
              high: true,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            BaseTitle(
              'Титульный большой текст',
              high: true,
            ),
            BaseTitle(
              'Титульный текст',
            ),
            BaseText(
              'Основной текст',
            ),
          ],
        ),
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
        BaseButtonDrawer(
          keyGlobal: controller.key,
        ),
        BaseRightContent(
          isSmallScreen: true,
          controller: controller,
          children: [
            BaseTitle(
              'Титульный основной текст',
              high: true,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            BaseTitle(
              'Титульный большой текст',
              high: true,
            ),
            BaseTitle(
              'Титульный текст',
            ),
            BaseText(
              'Основной текст',
            ),
          ],
        ),
      ],
    );
  }
}
