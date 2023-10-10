import 'package:flutter/material.dart';
import 'package:ss_restaurant/theme/app_color.dart';
import 'package:ss_restaurant/theme/app_size.dart';
import 'package:ss_restaurant/utils/screen_utils.dart';

class AppTheme {
  static const colors = AppColors();

  static ThemeData config() {
    return ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
        colorSchemeSeed: colors.primary_01,
        textTheme: TextTheme(

            ///@fontSize: 26
            displayLarge: TextStyle(
                fontSize: ScreenUtil().responsiveSize(26),
                color: const AppColors().black,
                height: ScreenUtil().responsiveSize(26) * 1.5),

            ///@fontSize: 24
            displayMedium: TextStyle(
                fontSize: AppSize.xxl,
                color: const AppColors().black,
                height: AppSize.xxl * 1.5),

            ///@fontSize: 22
            displaySmall: TextStyle(
                fontSize: AppSize.xls,
                color: const AppColors().black,
                height: AppSize.xls * 1.5),

            ///@fontSize: 20
            headlineMedium: TextStyle(
                fontSize: AppSize.xl,
                color: const AppColors().black,
                height: AppSize.xl * 1.5),

            ///@fontSize: 18
            titleMedium: TextStyle(
                fontSize: AppSize.ls,
                color: const AppColors().black,
                height: AppSize.ls * 1.5),

            ///@fontSize: 16
            labelLarge: TextStyle(
                fontSize: AppSize.l,
                color: const AppColors().black,
                height: AppSize.l * 1.5),

            ///@fontSize: 14
            labelMedium: TextStyle(
                fontSize: AppSize.ms,
                color: const AppColors().black,
                height: AppSize.ms * 1.5),

            ///@fontSize: 12
            labelSmall: TextStyle(
                fontSize: AppSize.m,
                color: const AppColors().black,
                height: AppSize.m * 1.5),

            ///@fontSize: 10
            bodySmall: TextStyle(
                fontSize: AppSize.s,
                color: const AppColors().black,
                height: AppSize.s * 1.5)),
        outlinedButtonTheme: OutlinedButtonThemeData(
            style: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: AppSize.m,
              height: AppSize.l / AppSize.m,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins")),
          side: MaterialStateProperty.all(
              BorderSide(width: 1, color: colors.border)),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.m),
          )),
          padding: MaterialStateProperty.all(EdgeInsets.all(AppSize.xs)),
          iconSize: MaterialStateProperty.all(AppSize.ms),
          iconColor: MaterialStateProperty.all(colors.gray_02),
          foregroundColor: MaterialStateProperty.all(colors.gray_02),
        )),
        filledButtonTheme: FilledButtonThemeData(
            style: ButtonStyle(
          textStyle: MaterialStateProperty.all(TextStyle(
              fontSize: AppSize.m,
              fontWeight: FontWeight.bold,
              height: AppSize.l / AppSize.m,
              fontFamily: "Poppins")),
          side: MaterialStateProperty.all(BorderSide.none),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
          padding: MaterialStateProperty.all(EdgeInsets.all(AppSize.xs)),
          iconSize: MaterialStateProperty.all(AppSize.ms),
          foregroundColor: MaterialStateProperty.all(Colors.white),

          // backgroundColor: MaterialStateProperty.all(colors.blue_03)
        )));
  }
}
