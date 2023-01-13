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
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (i) {
            setState(() {
              index = i;
            });
          },
          showUnselectedLabels: true,
          unselectedLabelStyle:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          selectedLabelStyle: TextStyle(
              color: Theme.of(context).buttonColor,
              fontWeight: FontWeight.bold),
          selectedIconTheme:
              IconThemeData(color: Theme.of(context).buttonColor),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Jobs'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Account'),
          ]),
    );
  }
}
