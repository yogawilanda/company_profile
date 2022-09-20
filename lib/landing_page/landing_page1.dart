import 'package:flutter/material.dart';

import 'appbar.dart';
import 'body.dart';

class LandingPageOne extends StatelessWidget {
  const LandingPageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBarCustom(),
              Body(),
            ],
          ),
        ),
      ]),
    );
  }
}
