import 'package:another_flushbar/flushbar.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:spring_button/spring_button.dart';
import 'package:pinput/pinput.dart';

import '../../views/main_home.dart';

class VerifyOtpToken extends StatefulWidget {
  final String userName;
  const VerifyOtpToken({super.key, required this.userName});

  @override
  State<VerifyOtpToken> createState() => _VerifyOtpTokenState();
}

class _VerifyOtpTokenState extends State<VerifyOtpToken> {
  String pinToken = '';
  bool showPassword = true;

  //Flash Bar
  Flushbar<dynamic> flashBar(
    Color color,
    String title,
    String subtitle,
    Icon icon,
  ) {
    return Flushbar(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 36),
      flushbarPosition: FlushbarPosition.TOP,
      flushbarStyle: FlushbarStyle.FLOATING,
      borderRadius: BorderRadius.circular(8),
      reverseAnimationCurve: Curves.easeInBack,
      forwardAnimationCurve: Curves.elasticOut,
      backgroundGradient: LinearGradient(colors: [
        color,
        color,
      ]),
      isDismissible: true,
      duration: const Duration(seconds: 3),
      icon: icon,
      titleText: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.white,
            fontFamily: "Nunito"),
      ),
      messageText: Text(
        subtitle,
        style: const TextStyle(
            fontSize: 15.0, color: Colors.white, fontFamily: "Nunito"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).buttonColor,
            )),
      ),
      body: Column(
        children: [
          Column(
            children: [
              const Center(
                child: Text(
                  'Precise',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Create your account password',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextField(
                  obscureText: showPassword,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  onChanged: (value) {
                    setState(() {
                      pinToken = value;
                    });
                  },
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              showPassword = !showPassword;
                            });
                          },
                          icon: Icon(
                            showPassword
                                ? BootstrapIcons.eye
                                : BootstrapIcons.eye_slash_fill,
                            color: Theme.of(context).primaryColor,
                          )),
                      border: InputBorder.none,
                      hintText: 'Enter password',
                      hintStyle: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).buttonColor.withOpacity(.4),
                      )),
                ),
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 28),
            child: SpringButton(
              SpringButtonType.OnlyScale,
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width * .7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Theme.of(context).primaryColor),
                child: const Center(
                    child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              onTap: () {
                if (pinToken == '' || pinToken.length < 6) {
                  flashBar(
                      Colors.red,
                      'OTP Code',
                      'Unable to verify password.',
                      const Icon(
                        BootstrapIcons.capsule,
                        color: Colors.white,
                      )).show(context);
                } else {
                  Navigator.of(context).popUntil((route) => route.isFirst);
                  Navigator.of(context)
                      .pushReplacement(CupertinoPageRoute(builder: (context) {
                    return const MainHome();
                  }));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
