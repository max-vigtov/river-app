

import 'package:flutter/material.dart';

class AppTheme {

  static const seedColor = Color.fromARGB(255, 7, 80, 59);

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: seedColor,
    listTileTheme: const ListTileThemeData(
      iconColor: seedColor
    )
  );
}