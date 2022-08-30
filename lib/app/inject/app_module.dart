import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../data/build_mode.dart';
import '../modules/home/controllers/home_controller.dart';

BuildMode? kBuildMode;

Future<void> initAppModule(BuildMode buildMode) async {
  kBuildMode = buildMode;

  await initializeDateFormatting();
  await GetStorage.init();

  await _initApi(buildMode);
  _initDataSource();
  _initInteractor();
  _initRepositories();
  _initControllers();
}

Future<void> _initApi(BuildMode buildMode) async {}

void _initInteractor() {}

void _initDataSource() {}

void _initRepositories() {}

void _initControllers() {
  Get.put(HomeController());
}
