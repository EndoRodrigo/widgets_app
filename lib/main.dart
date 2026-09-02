import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

import 'config/router/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Flutter + Material 3',
      theme: AppTheme(selectedColor: 5).theme(),
      debugShowCheckedModeBanner: false,

    );
  }
}
