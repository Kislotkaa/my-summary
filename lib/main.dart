import 'package:flutter/material.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'app/app.dart';
import 'app/data/build_mode.dart';
import 'app/inject/app_module.dart';

Future<void> main() async {
  setUrlStrategy(PathUrlStrategy());

  await initAppModule(BuildMode.prod);
  runApp(App());
}
