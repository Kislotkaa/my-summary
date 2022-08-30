import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:keyfood_admin/app/resources/app_colors.dart';
import 'package:keyfood_admin/app/widgets/base_title.dart';

import '../../../widgets/base_image_avatar.dart';
import '../../../widgets/base_item_left_content.dart';
import '../../../widgets/base_left_content.dart';
import '../../../widgets/base_right_content.dart';
import '../../../widgets/base_text.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 1080,
            color: Colors.white,
            child: Stack(
              children: [
                BaseLeftContent(
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
                      title: 'Адрес',
                      text: 'Екатеринбург, Ткачей 13 628100',
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
                      title: 'UX/UI',
                    ),
                    const SizedBox(height: 2),
                    const BaseItemLeftContent(
                      title: 'Design',
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
                ),
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
            ),
          ),
        ),
      ),
    );
  }
}
