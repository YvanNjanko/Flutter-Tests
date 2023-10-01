import 'package:appli/pages/help/help_view.dart';
import 'package:appli/repository/socialNetwork_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(SocialNetworkRepository());
    return MaterialApp(
      title: 'Mon application',
      home: HelpView(),
    );
  }
}
