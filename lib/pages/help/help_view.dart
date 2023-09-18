import 'package:flutter/material.dart';
import 'package:appli/models/social_networks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'help_controller.dart';

class HelpView extends StatelessWidget {
  final HelpContoller controller = HelpContoller();

  HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Help"),
        actions: [
          IconButton(
            onPressed: () {
              controller.iconBool = !controller.iconBool;
            },
            icon: Icon(
              controller.iconBool ? controller.iconDark : controller.iconLight,
            ),
          ),
        ],
      ),
      body: ListView(
        children: controller.data.map((SocialNetwork item) {
          return Card(
            child: ListTile(
              onTap: () => controller.UrlLaunch(item.url),
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
      ),
      bottomNavigationBar: const Text(
        "TransAll 2023",
        textAlign: TextAlign.center,
      ),
    );
  }
}
