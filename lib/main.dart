import 'package:calculator_app/screens/home_screen.dart';
import 'package:calculator_app/theme/theme_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: LightTheme.themeData,
      darkTheme: DarkTheme.themeData,
      themeMode: ThemeMode.system,
      home: const Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
