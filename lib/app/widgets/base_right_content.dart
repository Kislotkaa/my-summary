import 'package:flutter/material.dart';

import '../modules/home/controllers/home_controller.dart';

class BaseRightContent extends StatelessWidget {
  const BaseRightContent({
    Key? key,
    required this.controller,
    required this.children,
    this.isSmallScreen = false,
  }) : super(key: key);

  final HomeController controller;
  final bool isSmallScreen;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: isSmallScreen ? 0 : controller.leftWidth),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
