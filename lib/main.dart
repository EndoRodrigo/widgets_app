import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/scream/home/home_screams.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter + Material 3',
      theme: AppTheme(selectedColor: 1).theme(),
      debugShowCheckedModeBanner: false,
      home: HomeScreams(),
    );
  }
}
