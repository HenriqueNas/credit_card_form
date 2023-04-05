part of 'theme_data.dart';

final _inputDecorationTheme = InputDecorationTheme(
  fillColor: _colorScheme.surface,
  filled: true,
  hintStyle: TextStyle(
    fontFamily: 'Source Sans Pro',
    color: _colorScheme.onBackground,
    fontSize: 14,
    height: 1.14,
  ),
  labelStyle: TextStyle(
    fontFamily: 'Source Sans Pro',
    color: _colorScheme.onBackground,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    height: 1.14,
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: _colorScheme.primary,
      width: 1.5,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: _colorScheme.outline,
      width: 1,
    ),
  ),
  errorBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFDC2626),
      width: 1,
    ),
  ),
  focusedErrorBorder: const OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xFFDC2626),
      width: 1.5,
    ),
  ),
);
