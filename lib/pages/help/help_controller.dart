import 'package:appli/models/social_networks.dart';
import 'package:flutter/material.dart';
import 'package:appli/pages/help/help_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpContoller {
  // view function

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

  HelpViewModel viewModel;

  List<SocialNetwork> data = [];

  void UrlLaunch(String Url) {
    launchUrl(Uri.parse(Url));
  }

  HelpContoller(HelpViewModel Hview):
    viewModel = Hview{
    data = viewModel.getAllSocialNetwork();
    }
  
}