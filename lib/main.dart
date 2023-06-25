import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_bytes/utils/theme.dart';
import 'package:tech_bytes/view/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const HomeScreen(),
    );
  }
}
