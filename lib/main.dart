import 'package:appli/pages/help/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
      theme: controller.iconBool ? controller.darkTheme : controller.LightTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text("Help"), actions: [
          IconButton(
            onPressed: () {
              setState(() {
                controller.iconBool = !controller.iconBool;
              });
            },
            icon: Icon(controller.iconBool
                ? controller.iconDark
                : controller.iconLight),
          ),
        ]),
        body: content(),
        bottomNavigationBar: const Text(
          "TransAll 2023",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget content() {
    HelpContoller controller = HelpContoller();
    return ListView(
      children: controller.data.map((item) {
        return Card(
          child: ListTile(
            onTap: () => launchUrl(Uri.parse(item.url)),
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              child: FaIcon(
                item.icon,
                color: item.color,
                size: 25,
              ),
            ),
            title: Text(item.name),
            subtitle: Text(item.url),
          ),
        );
      }).toList(),
    );
  }
}
