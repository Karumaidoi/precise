import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:precise/home/Auth/create%20account/email_address.dart';

import 'log_in.dart';

class MainAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    Text(
                      'Precise',
                      style: TextStyle(
                          color: Theme.of(context).buttonColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Create an Account with precise to \n unlock the magic.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        height: 1.4,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: Column(children: [
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(CupertinoPageRoute(builder: (context) {
                      return const LoginPage(
                        userName: '',
                      );
                    }));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    width: MediaQuery.of(context).size.width * 0.7,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          SizedBox(),
                          Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an acoount?',
                      style: TextStyle(
                          color: Theme.of(context).buttonColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(CupertinoPageRoute(builder: (context) {
                            return const CreateUserMail(
                              userName: '',
                            );
                          }));
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ]),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
