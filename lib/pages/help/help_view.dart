import 'package:appli/repository/socialNetwork_repository.dart';
import 'package:flutter/material.dart';
import 'package:appli/models/social_networks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'help_controller.dart';
import 'package:get/get.dart';
import 'help_view_model.dart';

class HelpView extends StatelessWidget {
  const HelpView({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = Get.find<SocialNetworkRepository>();
    HelpViewModel viewModel = HelpViewModel(repository);
    final HelpContoller controller = HelpContoller(viewModel);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'TransAll',
          style: TextStyle(color: Colors.white),    
        ),
        ),
      endDrawer: const NavigationDrawer(),
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

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: 24,
        ),
        child: const Column(children: [
          CircleAvatar(
            radius: 60,
            // backgroundImage: Image(image: image),
          ),
          Text(
            'TransAll',
            style: TextStyle(fontSize: 28, color: Colors.black),
          ),
        ]),
      );

  Widget buildMenuItems(BuildContext context) => Wrap(
        runSpacing: 20,
        children: [
          // ListTile(
          //   leading: const Icon(Icons.home_outlined),
          //   title: const Text('Home'),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: const Icon(Icons.favorite_border),
          //   title: const Text('Favorites'),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: const Icon(Icons.workspaces_outline),
          //   title: const Text('Workflow'),
          //   onTap: () {},
          // ),
          // ListTile(
          //   leading: const Icon(Icons.update),
          //   title: const Text('Upadte'),
          //   onTap: () {},
          // ),
          const Divider(
            color: Colors.grey,
            height: 200,
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.facebook),
            title: const Text('Facebook'),
            onTap:  () {
              launch('https://www.facebook.com');
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.instagram),
            title: const Text('Instagram'),
            onTap:  () {
              launch('https://www.instagram.com');
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.twitter),
            title: const Text('Twitter'),
            onTap:  () {
              launch('https://www.twitter.com');
            },
          )
        ],
      );
}
