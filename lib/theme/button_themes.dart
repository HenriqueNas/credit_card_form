part of 'theme_data.dart';

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    backgroundColor: _colorScheme.primary,
    surfaceTintColor: _colorScheme.onPrimary,
    disabledBackgroundColor: _colorScheme.onPrimary.withOpacity(0.12),
    textStyle: _textTheme.bodyLarge,
    minimumSize: const Size(double.infinity, 56),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  ),
);
