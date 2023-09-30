import 'package:appli/models/social_networks.dart';
import 'package:flutter/material.dart';
import 'package:appli/pages/help/help_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpContoller {
  //fonctions agissant sur la vue

  bool iconBool = false;
  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.nights_stay;

  final ThemeData LightTheme = ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
  );

  ThemeData DarkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
  );

  HelpViewModel viewModel = HelpViewModel();

  List<SocialNetwork> data = [];

  void UrlLaunch(String Url) {
    launchUrl(Uri.parse(Url));
  }

  HelpController() {
    data = viewModel.getAllSocialNetwork();
  }
}
