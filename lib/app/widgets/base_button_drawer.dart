import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

class BaseButtonDrawer extends StatelessWidget {
  const BaseButtonDrawer({
    Key? key,
    required this.keyGlobal,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> keyGlobal;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        keyGlobal.currentState?.openDrawer();
      },
      child: Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.all(12),
        child: const Icon(
          Icons.menu,
          size: 26,
          color: AppColors.primaryColor,
        ),
      ),
    );
  }
}
