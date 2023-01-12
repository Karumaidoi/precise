import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:cupertino_onboarding/cupertino_onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Auth/main_auth.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoOnboarding(
      onPressedOnLastPage: () => Navigator.of(context)
          .pushReplacement(CupertinoPageRoute(builder: (context) {
        return MainAuth();
      })),
      bottomButtonColor: Theme.of(context).primaryColor,
      bottomButtonChild: const Text('Get started',
          style: TextStyle(fontFamily: 'Nunito', fontWeight: FontWeight.bold)),
      pages: [
        // To create What's New page like Calendar or Translator
        // examples in the readme, use `WhatsNewPage` widget:

        // Actual code from the Calendar example:
        WhatsNewPage(
          title: const Text(
            "What's New in Precise",
            style: TextStyle(fontFamily: 'Nunito'),
          ),
          features: [
            // Feature's type must be `WhatsNewFeature`
            WhatsNewFeature(
              icon: Icon(
                BootstrapIcons.person_workspace,
                color: CupertinoColors.systemOrange.resolveFrom(context),
              ),
              title: const Text('Work on tasks remotely',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  )),
              description: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                    'Get unlimited tasks daily to improve your rating and your daily earnind.',
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.time,
                color: CupertinoColors.systemOrange.resolveFrom(context),
              ),
              title: const Text('Quickest & Safest Online gigs',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  )),
              description: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                    "Connect with clients all over the world that will enable you unlock your earning potential.",
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.location_circle,
                color: CupertinoColors.systemOrange.resolveFrom(context),
              ),
              title: const Text('Anything anytime anywhere',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  )),
              description: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                    "Get tasks delivered anytime, anywhere you are & with any team.",
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
            WhatsNewFeature(
              icon: Icon(
                CupertinoIcons.pin,
                color: CupertinoColors.systemOrange.resolveFrom(context),
              ),
              title: const Text('Unlock the magic',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                  )),
              description: const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(
                    "Get started today and see the magic happens. Work remotely and get to meet thousands of our daily clients.",
                    style: TextStyle(fontFamily: 'Nunito')),
              ),
            ),
          ],
        ),

        CupertinoOnboardingPage(
          title: const Text('Great Look in Light and Dark Mode',
              style: TextStyle(fontFamily: 'Nunito')),
          body: Lottie.asset('assets/dark.json'),
        ),
      ],
    );
  }
}
