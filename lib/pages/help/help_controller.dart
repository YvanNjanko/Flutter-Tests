import 'package:appli/models/social_networks.dart';
import 'package:flutter/material.dart';
import 'package:appli/pages/help/help_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HelpContoller {
  // view function
  HelpViewModel viewModel;

  List<SocialNetwork> data = [];

  void UrlLaunch(String Url) {
    launchUrl(Uri.parse(Url));
  }

  HelpContoller(HelpViewModel Hview) : viewModel = Hview {
    data = viewModel.getAllSocialNetwork();
  }
}
