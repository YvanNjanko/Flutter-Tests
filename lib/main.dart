import 'package:appli/pages/help/help_controller.dart';
import 'package:appli/pages/help/help_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    HelpContoller controller = HelpContoller();

    return MaterialApp(
      theme: controller.iconBool ? controller.DarkTheme : controller.LightTheme,
      home: HelpView()
    );
  }


}
