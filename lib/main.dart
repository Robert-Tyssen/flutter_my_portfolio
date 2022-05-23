import 'package:flutter/material.dart';
import 'package:flutter_my_portfolio/config/themes/text_themes.dart';
import 'package:flutter_my_portfolio/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
        textTheme: appTextTheme,
      ),
      home: const MainScreen(key: ValueKey('HomeScreen')),
    );
  }
}