import 'package:flutter/material.dart';

import '../theme.dart';

import 'particles/custom_card.dart';

import 'particles/text.dart';

class Section7 extends StatelessWidget {
  const Section7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TitleTextContainer(
          textTitle: testimonialsTitle,
          textStyleTitle: textStyleTitleGlobal,
          textSubtitle: testimonialsExplanatory.replaceAll('', ''),
          textStyleSubtitle: textStyleCardSection3,
        ),
        Wrap(
          runAlignment: WrapAlignment.center,
          children: [
            CardSection7(
              cardTitle: faqSubTitle,
              cardSubTitle: faqSubExplanatory,
              cardTextStyle: textStyleTitleGlobal,
              cardSubTextStyle: textStyleHeroSubtitle2,
            ),
            CardSection7(
              cardTitle: faqSubTitleB,
              cardSubTitle: faqSubExplanatoryB,
              cardTextStyle: textStyleTitleGlobal,
              cardSubTextStyle: textStyleHeroSubtitle2,
            ),
            CardSection7(
              cardTitle: faqSubTitleC,
              cardSubTitle: faqSubExplanatoryC,
              cardTextStyle: textStyleTitleGlobal,
              cardSubTextStyle: textStyleHeroSubtitle2,
            ),
            CardSection7(
              cardTitle: faqSubTitleD,
              cardSubTitle: faqSubExplanatoryD,
              cardTextStyle: textStyleTitleGlobal,
              cardSubTextStyle: textStyleHeroSubtitle2,
            ),
          ],
        )
      ],
    );
  }
}
