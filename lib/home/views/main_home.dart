// ignore_for_file: unused_import

import 'package:bootstrap_icons/bootstrap_icons.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:precise/home/views/pages/gigs.dart';
import 'package:precise/home/views/pages/messages.dart';
import 'package:precise/home/views/pages/new_jobs.dart';
import 'package:precise/home/views/pages/profile.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/home_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  void initState() {
    super.initState();
  }

  void onClickedNotification(String? payload) => print("Commuter");

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar:
            CupertinoTabBar(activeColor: Colors.orange.shade700, items: const [
          BottomNavigationBarItem(
              tooltip: 'Home',
              icon: Icon(
                BootstrapIcons.box_seam,
                size: 22,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              tooltip: 'Messages',
              icon: Icon(
                BootstrapIcons.compass,
                size: 22,
              ),
              label: 'Messages'),
          BottomNavigationBarItem(
              tooltip: 'Gigs',
              icon: Icon(
                BootstrapIcons.radioactive,
                size: 22,
              ),
              label: ''),
          BottomNavigationBarItem(
              tooltip: 'Jobs',
              icon: Icon(
                BootstrapIcons.radioactive,
                size: 22,
              ),
              label: 'Jobs'),
          BottomNavigationBarItem(
              tooltip: 'Profile',
              icon: Icon(
                BootstrapIcons.radioactive,
                size: 22,
              ),
              label: 'Profile'),
        ]),
        tabBuilder: ((context, index) {
          switch (index) {
            case 0:
              return const HomePage();
            case 1:
              return const MessagesScreen();
            case 2:
              return const GigsPage();
            case 3:
              return const OpenClosedScreen();
            case 4:
              return const ProfilePage();
            default:
              return const HomePage();
          }
        }));
  }
}
