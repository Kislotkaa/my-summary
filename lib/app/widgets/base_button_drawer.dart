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
    return Align(
      alignment: Alignment.topRight,
      child: IconButton(
        icon: const Icon(
          Icons.menu,
          color: AppColors.primaryColor,
        ),
        onPressed: () {
          keyGlobal.currentState!.openDrawer();
        },
      ),
    );
  }
}
