import 'package:flutter/material.dart';

import '../modules/home/controllers/home_controller.dart';
import 'base_right_content.dart';
import 'base_text.dart';
import 'base_title.dart';

class BaseRightContentFill extends StatelessWidget {
  const BaseRightContentFill({
    Key? key,
    required this.controller,
    this.isSmallScreen = false,
  }) : super(key: key);

  final HomeController controller;
  final bool isSmallScreen;

  @override
  Widget build(BuildContext context) {
    return BaseRightContent(
      controller: controller,
      isSmallScreen: isSmallScreen,
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
    );
  }
}
