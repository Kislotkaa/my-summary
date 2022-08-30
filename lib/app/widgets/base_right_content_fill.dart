import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:keyfood_admin/app/resources/app_colors.dart';

import 'package:url_launcher/url_launcher.dart';

import '../modules/home/controllers/home_controller.dart';
import 'base_right_content.dart';
import 'base_text.dart';
import 'base_title.dart';
import 'base_url_lounch_text.dart';

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
          'Максим Федюшкин',
          high: true,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
        const Divider(
          color: AppColors.inactiveColor,
          thickness: 1,
        ),
        BaseTitle(
          'Опыт работы',
          high: true,
        ),
        const Divider(
          color: AppColors.inactiveColor,
          thickness: 1,
        ),
        Container(
          child: BaseTitle(
            'Front разработчик',
          ),
        ),
        BaseText(
          'Коммерчиский опыт работы - 1 год.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Работаю по методологии Agile. Придерживаюсь принципа ООП SOLID и шаблона проектирования MVС.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Работал с Hasura, GraphQl, RestApi, CodeMagic, Sentry, Firebase-web, DaData',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Основные используемые библиотеки: get_cli, dartx, getx, dio, artemis',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Опыт работы с: bloc, freezed',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Работаю с Figma и считаю что первоначально отрисованный дизайн приложения, половина успеха вёрстки в дальнейшем',
        ),
        SizedBox(height: 12),
        BaseTitle(
          'Backend разработчик',
        ),
        BaseText(
          'Опыт развёртывание бэкенда на удалённом хостинге и дальнейшей работы с ним',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Используемые технологии: docker, hasura(admin panel), hasura backend plus(api), postgresql, graphql, traefic',
        ),
        BaseTitle(
          'Образование',
          high: true,
        ),
        const Divider(
          color: AppColors.inactiveColor,
          thickness: 1,
        ),
        BaseTitle(
          'Бакалавриат с отличием',
        ),
        BaseText(
          'ЮГУ, Институт Цифровой Экономики \nНаправление - информатика и вычислительная техника',
        ),
        BaseTitle(
          'Ссылки',
          high: true,
        ),
        const Divider(
          color: AppColors.inactiveColor,
          thickness: 1,
        ),
        const SizedBox(height: 6),
        const BaseUrlLaunchText(
          text: 'GitHub : ',
          hideUrl: 'Go to GitHub',
          url: 'https://github.com/Kislotkaa',
        ),
      ],
    );
  }
}
