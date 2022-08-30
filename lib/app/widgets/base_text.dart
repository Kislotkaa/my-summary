import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keyfood_admin/app/resources/app_colors.dart';

class BaseText extends StatelessWidget {
  BaseText(
    this.text, {
    Key? key,
    this.inActive = false,
    this.small = false,
  }) : super(key: key);

  final String text;
  final bool inActive;
  final bool small;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: small ? 12 : 14,
        fontWeight: FontWeight.normal,
        color: inActive ? AppColors.inactiveColor : null,
      ),
    );
  }
}
