import 'package:flutter/material.dart';
import 'package:yoga_wilanda/undangan_nikah_online/section5.dart';
import 'package:yoga_wilanda/undangan_nikah_online/section6.dart';
import 'package:yoga_wilanda/undangan_nikah_online/section7.dart';

import 'footer.dart';
import 'section2.dart';
import 'section3.dart';
import 'section4.dart';
import 'section_hero.dart';

class BodyNikah extends StatelessWidget {
  const BodyNikah({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeroSection(), // buat conditional appbar
        Section2(),
        Section3(),
        Section4(),
        Section5(),
        Section6(),
        Section7(),
        Footer(),
      ],
    );
  }
}
