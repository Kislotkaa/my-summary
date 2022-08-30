import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../generated/locales.g.dart';
import '../resources/app_strings.dart';

String getPriceWithZero(double price) {
  return getCountToStringWithZero(price) + ' ' + AppStrings.kRub;
}

String getPrice(double? price) {
  if (price != null) {
    return getCountToString(price) + ' ' + AppStrings.kRub;
  }
  return '';
}

String getCount(int? price) {
  if (price != null) {
    return getCountToString(price) + ' ' + LocaleKeys.base_pc.tr;
  }
  return '';
}

String getCountToString(price) {
  if (price != null) return price.toStringAsFixed(0);
  return '';
}

String getCountToStringWithZero(price) {
  if (price != null) return price.toStringAsFixed(2);
  return '';
}
