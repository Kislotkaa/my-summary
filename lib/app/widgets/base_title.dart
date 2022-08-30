import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class BaseTitle extends StatelessWidget {
  BaseTitle(
    this.text, {
    this.high = false,
    this.fontSize,
    this.fontWeight,
    this.inActive = false,
    Key? key,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final bool high;
  final bool inActive;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? (high ? 20 : 18),
        fontWeight: fontWeight ?? FontWeight.w600,
        color: inActive ? AppColors.inactiveColor : null,
      ),
    );
  }
}
