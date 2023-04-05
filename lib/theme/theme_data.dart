import 'package:flutter/material.dart';

part 'input_decoration_theme.dart';
part 'text_theme.dart';
part 'color_scheme.dart';
part 'button_themes.dart';

final lightTheme = ThemeData(
  colorScheme: _colorScheme,
  textTheme: _textTheme,
  inputDecorationTheme: _inputDecorationTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
);
