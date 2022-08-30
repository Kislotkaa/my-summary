import 'package:flutter/material.dart';

import '../modules/home/controllers/home_controller.dart';

class BaseRightContent extends StatelessWidget {
  const BaseRightContent({
    Key? key,
    required this.controller,
    required this.children,
  }) : super(key: key);

  final HomeController controller;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: controller.leftWidth),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children),
          ),
        ],
      ),
    );
  }
}
