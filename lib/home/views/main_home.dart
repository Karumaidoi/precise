// ignore_for_file: unused_import

import 'package:bootstrap_icons/bootstrap_icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:precise/home/views/pages/gigs.dart';
import 'package:precise/home/views/pages/messages.dart';
import 'package:precise/home/views/pages/new_jobs.dart';
import 'package:precise/home/views/pages/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/home_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int index = 0;
  List pages = const [
    HomePage(),
    OpenClosedScreen(),
    MessagesScreen(),
    ProfilePage()
  ];
  @override
  void initState() {
    super.initState();
  }

  void onClickedNotification(String? payload) => print("Commuter");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Row(
          children: [
            Icon(
              BootstrapIcons.chat_right_fill,
              color: Theme.of(context).primaryColor,
              size: 21,
            ),
            const SizedBox(
              width: 4,
            ),
            Text.rich(
              TextSpan(text: 'Find', children: [
                TextSpan(
                    text: "Work",
                    style: TextStyle(color: Theme.of(context).primaryColor))
              ]),
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            this.index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.rocket_takeoff),
            label: 'Job',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline_rounded),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
