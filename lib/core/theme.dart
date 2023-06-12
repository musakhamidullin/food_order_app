import 'package:flutter/material.dart';

import 'colors.dart';

class ThemeApp {
  ThemeApp(BuildContext context) {
    _fontSize = Theme.of(context).textTheme.titleLarge!.fontSize!;
  }

  static double _fontSize = 22;

  static ThemeData get() {
    return ThemeData(
        elevatedButtonTheme: const ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))),
        ))),
        primaryColor: primary,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primary),
        fontFamily: 'SF Pro Display',
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: _fontSize),
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          iconTheme: const IconThemeData(
            color: Colors.black, //change your color here
          ),
        ));
  }
}
