import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'form.dart';
import 'theme/theme_data.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark,
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Credit Card Flip Demo',
      darkTheme: darkTheme,
      themeMode: ThemeMode.dark,
      home: const FormPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
