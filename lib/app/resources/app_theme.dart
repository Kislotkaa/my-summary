import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.backgroundColor,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(color: Color.fromRGBO(24, 26, 31, 1)),
        actionsIconTheme: IconThemeData(color: AppColors.textColor),
        iconTheme: IconThemeData(color: AppColors.textColor),
      ),
      iconTheme: const IconThemeData(color: AppColors.textColor),
      primaryIconTheme: const IconThemeData(color: AppColors.textColor),
      highlightColor: Colors.transparent,
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(color: AppColors.textColor),
          ),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.activeColor,
        circularTrackColor: Colors.transparent,
      ),
      primaryColor: AppColors.primaryColor,
      backgroundColor: AppColors.backgroundColor,
      dividerColor: AppColors.inactiveColor,
      cardColor: AppColors.cardColor,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: AppColors.whiteColor),
      textTheme: const TextTheme(
        headline1: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.normal,
          color: AppColors.titleColor,
        ),
        headline2: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.titleColor,
        ),
        bodyText2: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.titleColor,
        ),
      ),
    );
