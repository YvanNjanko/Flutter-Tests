import 'package:appli/models/social_networks.dart';
import 'package:flutter/material.dart';
import 'package:appli/pages/help/help_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpContoller {
  //fonctions agissant sur la vue
  MaterialColor whiteSwatch = const MaterialColor(255, {
    50: Colors.black,
    100: Colors.black,
    200: Colors.black,
    300: Colors.black,
    400: Colors.black,
    500: Colors.black,
    600: Colors.black,
    700: Colors.black,
    800: Colors.black,
    900: Colors.black,
  });

  bool iconBool = false;
  IconData iconLight = Icons.wb_sunny;
  IconData iconDark = Icons.nights_stay;

  final ThemeData LightTheme = ThemeData(
    primarySwatch: Colors.amber,
    brightness: Brightness.light,
  );

  ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
  );

  HelpViewModel viewModel = HelpViewModel();

  List<SocialNetwork> data = [];

  void UrlLaunch(String Url) {
    launchUrl(Uri.parse(Url));
  }

  HelpContoller() {
    data = viewModel.fetchSocialNetworkFromData();
  }
}
