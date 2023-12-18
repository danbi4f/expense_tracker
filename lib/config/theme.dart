import 'package:flutter/material.dart';

var kColorSchame = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var theme = ThemeData().copyWith(
  colorScheme: kColorSchame,
  appBarTheme: const AppBarTheme().copyWith(
    backgroundColor: kColorSchame.onPrimaryContainer,
    foregroundColor: kColorSchame.primaryContainer,
  ),
);


