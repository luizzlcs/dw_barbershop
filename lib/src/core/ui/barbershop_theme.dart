import 'package:dw_barbershop/src/core/ui/constants.dart';
import 'package:flutter/material.dart';

sealed class BarbershopTheme {
  static const _defaultImputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8),
    ),
  );

  static ThemeData themeData = ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          iconTheme: IconThemeData(color: ColorsConstants.brown),
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Colors.black,
            fontFamily: FontsConstants.fontFamily,
          )),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(color: ColorsConstants.grey),
        border: _defaultImputBorder,
        enabledBorder: _defaultImputBorder,
        focusedBorder: _defaultImputBorder,
        errorBorder: _defaultImputBorder.copyWith(
          borderSide: const BorderSide(
            color: ColorsConstants.red,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: ColorsConstants.white,
          backgroundColor: ColorsConstants.brown,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      fontFamily: FontsConstants.fontFamily);
}
