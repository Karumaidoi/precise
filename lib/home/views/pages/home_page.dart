import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView(
          children: [
            const SearchWidget(),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.all(12),
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('assets/app-logo.png'),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
          height: 54,
          width: MediaQuery.of(context).size.width * .7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Theme.of(context).buttonColor,
          ),
          child: TextFormField(
            style: TextStyle(
              color: Theme.of(context).backgroundColor,
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
                prefixIcon: Icon(Feather.search,
                    color: Theme.of(context).backgroundColor.withOpacity(.5)),
                border: InputBorder.none,
                hintText: 'Keyword',
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).backgroundColor.withOpacity(.5))),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: 54,
          width: MediaQuery.of(context).size.width * .15,
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Icon(
              Feather.sliders,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
