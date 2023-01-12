import 'package:flutter/material.dart';

class OpenClosedScreen extends StatefulWidget {
  const OpenClosedScreen({super.key});

  @override
  State<OpenClosedScreen> createState() => _OpenClosedScreenState();
}

class _OpenClosedScreenState extends State<OpenClosedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
    );
  }
}
