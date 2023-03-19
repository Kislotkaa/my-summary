import 'package:flutter/material.dart';
import 'package:keyfood_admin/app/resources/app_colors.dart';

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
          'Коммерчиский опыт работы - 2 года.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Работаю по методологии Agile. Придерживаюсь принципа ООП SOLID и шаблона проектирования MVС.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Основной используемый стэк: Запросы GraphQl, CI/CD CodeMagic, Мониторинг багов Sentry, Архитектура MVC, Стейт менеджер GetX',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Опыт работы с сервисами: Hasura, CodeMagic, Sentry, Firebase-web, DaData, Figma, Miro, Smtp.bz ',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Опыт работы с библиотеками: flutter_blue, dio, flutter_dotenv, flutter_secure_storage, graphql_flutter, onesignal_flutter, sentry_flutter, app_tracking_transparency, dartx, permission_handler, url_launcher, get_cli, getx, artemis',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Работаю с Figma и считаю что первоначально отрисованный дизайн приложения, половина успеха вёрстки в дальнейшем',
        ),
        const SizedBox(height: 12),
        BaseTitle(
          'Backend разработчик',
        ),
        BaseText(
          'Опыт развёртывание бэкенда на удалённом хостинге, подключения домена и дальнейшей работы с backend',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Используемые технологии: docker, hasura(admin panel), hasura backend plus(api), postgresql, graphql, traefic, minio, mailhog',
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
          'Бакалавриат',
        ),
        BaseText(
          'Вуз - Югорский Государственный университет (ЮГУ)',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Институт - Институт Цифровой Экономики',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Направление - Информатика и вычислительная техника',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Статус - Окончание отличием',
        ),
        const SizedBox(height: 12),
        BaseTitle(
          'Магистратура',
        ),
        BaseText(
          'Вуз - Югорский Государственный университет (ЮГУ)',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Институт - Институт Цифровой Экономики',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Направление - Прикладная математка и информатика',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Статус - в процессе',
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
        const SizedBox(height: 6),
        const BaseUrlLaunchText(
          text: 'Pets Google : ',
          hideUrl: 'Go to Google',
          url:
              'https://play.google.com/store/apps/details?id=com.notanapps.pets_flutter',
        ),
        const SizedBox(height: 6),
        const BaseUrlLaunchText(
          text: 'Pets AppStore : ',
          hideUrl: 'Go to AppStore',
          url:
              'https://apps.apple.com/us/app/pets-%D0%BF%D0%BE%D0%B8%D1%81%D0%BA-%D0%B4%D0%BE%D0%BC%D0%B0%D1%88%D0%BD%D0%B8%D1%85-%D0%B6%D0%B8%D0%B2%D0%BE%D1%82%D0%BD%D1%8B%D1%85/id6443840696',
        ),
        const SizedBox(height: 6),
        const BaseUrlLaunchText(
          text: 'Heart Tracker Google : ',
          hideUrl: 'Go to Google',
          url:
              'https://play.google.com/store/apps/details?id=com.notanapps.svarog_heart_tracker',
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
