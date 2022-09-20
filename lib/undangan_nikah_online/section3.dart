import 'package:flutter/material.dart';
import 'package:yoga_wilanda/theme.dart';
import 'package:yoga_wilanda/undangan_nikah_online/particles/custom_card.dart';

import 'particles/text.dart';

class Section3 extends StatelessWidget {
  Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [MyProductContent3()],
      ),
    );
  }
}

class MyProductContent3 extends StatelessWidget {
  const MyProductContent3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: 651,
            // color: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: Column(
              children: [
                Text(
                  featureTitle,
                  style: textStyleTitleGlobal,
                ),
                const SizedBox(
                  height: 25,
                ),
                RichText(
                  text: TextSpan(
                    text: featureExplanatory,
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                          text: featureExplanatoryBoldText,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: featureExplanatory2),
                    ],
                  ),
                )
              ],
            ),
          ),
          Wrap(children: [
            CustomCardSection3(
              textTitle: cardFeatureSectionA,
              textExplanatory: cardFeatureExplanatoryA,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionB,
              textExplanatory: cardFeatureExplanatoryB,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionC,
              textExplanatory: cardFeatureExplanatoryC,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionD,
              textExplanatory: cardFeatureExplanatoryD,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionE,
              textExplanatory: cardFeatureExplanatoryE,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionF,
              textExplanatory: cardFeatureExplanatoryF,
              cardIcon: '',
            ),
            CustomCardSection3(
              textTitle: cardFeatureSectionG,
              textExplanatory: cardFeatureExplanatoryG,
              cardIcon: '',
            ),
          ]),
        ],
      ),
    );
  }
}
