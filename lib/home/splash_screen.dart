// ignore_for_file: unrelated_type_equality_checks

import 'dart:async';
import 'package:bootstrap_icons/bootstrap_icons.dart';

import 'package:flutter/material.dart';

import 'onBoarding/on_borading_screen.dart';
import 'views/main_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String token = '';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  token == '' ? const OnBoardingScreen() : const MainHome()));
    });
    return Scaffold(
      key: const ValueKey("Splash screen"),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 155,
                width: 155,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/app-logo.png'))),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                '',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
