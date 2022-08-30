import 'package:flutter/material.dart';

import '../modules/home/controllers/home_controller.dart';
import '../resources/app_colors.dart';
import 'base_image_avatar.dart';
import 'base_item_left_content.dart';
import 'base_left_content.dart';
import 'base_title.dart';

class BaseLeftContentFill extends StatelessWidget {
  const BaseLeftContentFill({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return BaseLeftContent(
      width: controller.leftWidth,
      children: [
        const BaseImageAvatar(),
        const SizedBox(height: 16),
        BaseTitle(
          'Личные данные',
          inActive: true,
        ),
        const SizedBox(height: 4),
        const Divider(
          color: AppColors.textReverseColor,
          thickness: 1,
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Имя',
          text: 'Максим Федюшкин',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Город',
          text: 'Екатеринбург',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Номер телефона',
          text: '+7(922)-195-16-43',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Email',
          text: 'maksihill@yandex.ru',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Дата рождения',
          text: '04.01.2000',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Пол',
          text: 'Мужской',
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'Гражданство',
          text: 'РФ',
        ),
        const SizedBox(height: 16),
        BaseTitle(
          'Интересы',
          inActive: true,
        ),
        const SizedBox(height: 4),
        const Divider(
          color: AppColors.textReverseColor,
          thickness: 1,
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'FlutterDevelop',
        ),
        const SizedBox(height: 2),
        const BaseItemLeftContent(
          title: 'UnityDevelop',
        ),
        const SizedBox(height: 2),
        const BaseItemLeftContent(
          title: 'UX/UI Design',
        ),
        const SizedBox(height: 2),
        const BaseItemLeftContent(
          title: 'Photoshop',
        ),
        const SizedBox(height: 4),
        const Divider(
          color: AppColors.textReverseColor,
          thickness: 1,
        ),
        const SizedBox(height: 16),
        BaseTitle(
          'Языки',
          inActive: true,
        ),
        const SizedBox(height: 4),
        const Divider(
          color: AppColors.textReverseColor,
          thickness: 1,
        ),
        const SizedBox(height: 8),
        const BaseItemLeftContent(
          title: 'English (средний уровень)',
        ),
        const SizedBox(height: 2),
        const BaseItemLeftContent(
          title: 'Русский (родной)',
        ),
        const SizedBox(height: 100),
      ],
    );
  }
}
