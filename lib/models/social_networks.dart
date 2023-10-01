import 'package:flutter/material.dart';

class SocialNetwork {
  /// The stored key ref for the [body] property.
  static const keyName = 'name';
  static const keyUrl = 'url';
  static const keyIcon = 'icon';
  static const keyColor = 'color';

  final String name;
  final String url;
  final IconData icon;
  final Color color;

  SocialNetwork(
      {required String name,
      required String url,
      required IconData icon,
      required Color colors})
      : name = name,
        url = url,
        icon = icon,
        color = colors;

  SocialNetwork.fromJson(Map<String, dynamic> json)
      : name = json[keyName],
        url = json[keyUrl],
        icon = json[keyIcon],
        color = json[keyColor];
}
