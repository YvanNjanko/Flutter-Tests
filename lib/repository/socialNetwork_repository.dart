import 'package:appli/models/social_networks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class SocialNetworkRepository{

List datas = [
    {
      "name": "Google",
      "url": "https://google.com",
      "icon": FontAwesomeIcons.google,
      "color": Colors.redAccent,
    },
    {
      "name": "Facebook",
      "url": "https://facebook.com",
      "icon": FontAwesomeIcons.facebook,
      "color": Colors.blueAccent,
    },
    {
      "name": "Instagram",
      "url": "https://instagram.com",
      "icon": FontAwesomeIcons.instagram,
      "color": Color.fromARGB(255, 170, 96, 197),
    },
    {
      "name": "Twitter",
      "url": "https://twitter.com",
      "icon": FontAwesomeIcons.twitter,
      "color": const Color.fromARGB(255, 101, 186, 255),
    },
    {
      "name": "Mail",
      "url": "mailto:yvannjanko04@gmail.com",
      "icon": FontAwesomeIcons.at,
      "color": Colors.black,
    },
    {
      "name": "Contact us",
      "url": "tel:+237698181058",
      "icon": FontAwesomeIcons.phone,
      "color": Colors.grey
    },
    {
      "name": "Contact us",
      "url": "sms:+237698181058",
      "icon": FontAwesomeIcons.solidMessage,
      "color": Colors.black,
    },
  ];


   List<SocialNetwork> fetchSocialNetworkFromData() {
    List<SocialNetwork> socialNetworks = [];

    for (var data in datas) {
      String name = data['name'];
      String url = data['url'];
      IconData icon = data['icon'];
      Color color = data['color'];

      SocialNetwork socialNetwork = SocialNetwork.fromJson(data);
      socialNetworks.add(socialNetwork);
    }

    return socialNetworks;
  }
}