import 'package:flutter/material.dart';
import 'package:kafiil/core/style_manager.dart';
import 'package:kafiil/core/value_manager.dart';
import 'dart:ui';

import 'color_manger.dart';
import 'fonts_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //main color
    primaryColor: ColorManager.primary_900,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    // card theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // app Bar theme
    appBarTheme: AppBarTheme(
      elevation: AppSize.s2,
      color: ColorManager.primary_900,
      shadowColor: ColorManager.grey,
      centerTitle: true,
      titleTextStyle:
          getRegularStyle(fontSize: AppSize.s16, color: ColorManager.white),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.grey1,
      buttonColor: ColorManager.primary_900,
      splashColor: ColorManager.lightPrimary,
    ),
    //elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s17),
        backgroundColor: ColorManager.primary_900,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge:
          getSemiBoldStyle(color: ColorManager.grey_900, fontSize: FontSize.s22),
      // head line 1
      // headlineLarge: getSemiBoldStyle(
      //     color: ColorManager.darkGrey, fontSize: FontSize.s16),
      headlineMedium: getRegularStyle(
          color: ColorManager.grey_500, fontSize: FontSize.s14),
      // sub title 1
      titleMedium:
          getMediumStyle(color: ColorManager.grey_500, fontSize: FontSize.s12),
      // caption
      // bodyLarge: getRegularStyle(color: ColorManager.grey1),
      // //body text 1
      // bodySmall: getRegularStyle(color: ColorManager.grey),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.grey_50,
      focusColor: ColorManager.grey_50,
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      labelStyle:
          getMediumStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      hintStyle:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s14),
      errorStyle: getRegularStyle(
        color: ColorManager.error,
      ),
      // enabled Border
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(

          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.grey_500,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////////////////// focused Border
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.primary_900,
          width: AppSize.s1_5,
        ),
      ),

      ////////////////////////////////////////focused Error Border
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.primary_900,
          width: AppSize.s1_5,
        ),
      ),

      //////////////////////////////////// error Border
      errorBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s8),
        ),
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s1_5,
        ),
      ),
    ),
  );
}
