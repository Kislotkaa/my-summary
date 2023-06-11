import 'package:flutter/material.dart';
import 'package:my_summary/app/resources/app_colors.dart';

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
          'Коммерчиский опыт работы - 1.5 года.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Основной используемый стэк: Запросы GraphQl, CI/CD CodeMagic, Мониторинг багов Sentry, Архитектура MVC, Стейт менеджер GetX',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Опыт работы с сервисами: Hasura, CodeMagic, Sentry, OneSignal, Firebase-web, DaData, Figma',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Опыт работы с библиотеками: flutter_blue, dio, flutter_dotenv, flutter_secure_storage, graphql_flutter, onesignal_flutter, sentry_flutter, app_tracking_transparency, dartx, permission_handler, url_launcher, get_cli, getx, bloc, artemis, onesignal_flutter, sqllite, ',
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
          'О себе',
          high: true,
        ),
        const Divider(
          color: AppColors.inactiveColor,
          thickness: 1,
        ),
        BaseText(
          'Что касается основного используемого стэка во FrontEnd разработке, могу сказать что стэк хорошо себя показывается в скорости написания кода и интегрирования новых фичей в проект. Общего мнения о GetX - могу сказать что если построенная архитектура масштабируема, то при росте проекта, GetX не мешает, а наоборот позволяет не сбрасывать темп разработки.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Уделяю достаточное время оптимизации кода, внедряю sql запросы, что бы избежать нагромождение условий if else. Избегаю дублирование кода и выношу его в модули для дальнейшего переиспользования. Избегаю зависимости модулей друг от друга, что бы избежать конфликтов при масштабировании проекта.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Считаю что для пользователя, основное - это получить положительный опыт, а значит приложение должно быть не плоским листом бумаги, а общительным и с правильно построеным UX/UI дизайном. Поэтому первоночально отрисовываю и продумываю дизайн в Figma.',
        ),
        const SizedBox(height: 6),
        BaseText(
          'Иногда большой задачей для меня стоит внедрить сторонний сервис в приложение, разработать новый экран для него и испоользовать в разных местах, но на удивление с ней я справляюсь быстро и без значитильных проблем. Но бывают малые задачи, к примеру, реализовать несложный, но новый для меня алгоритм, такие задачи иногда даются сложно и на их реализацию уходит больше времени чем планировалось, но всё же после реализации, следующая такая задача, не занимает много времени.',
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
