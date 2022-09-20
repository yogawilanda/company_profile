import 'package:flutter/material.dart';

import '../image.dart';

import '../theme.dart';
import 'particles/custom_card.dart';
import 'particles/text.dart';

class Section4 extends StatelessWidget {
  Section4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyProductContent(),
        ],
      ),
    );
  }
}

class MyProductContent extends StatelessWidget {
  const MyProductContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //TextContainer

          TitleTextContainer(
            textTitle: userGuideTitle,
            textStyleTitle: textStyleTitleGlobal,
            textSubtitle: userGuideExplanatory,
            textStyleSubtitle: textStyleCardSection3,
          ),

          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.spaceBetween,
            children: [
              CustomListTile(
                textCustomListTile: cardUserGuideTitleA,
                textCustomListTile2: cardFeatureExplanatoryA,
                textCustomListTile3: cardUserGuideFooterA,
                icon: iconUserGuideA,
              ),
              CustomListTile(
                textCustomListTile: cardUserGuideTitleB,
                textCustomListTile2: cardFeatureExplanatoryB,
                textCustomListTile3: cardUserGuideFooterB,
                icon: iconUserGuideB,
              ),
              CustomListTile(
                textCustomListTile: cardUserGuideTitleC,
                textCustomListTile2: cardFeatureExplanatoryC,
                textCustomListTile3: cardUserGuideFooterC,
                icon: iconUserGuideC,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {Key? key,
      required this.textCustomListTile,
      required this.textCustomListTile2,
      this.textCustomListTile3,
      this.icon,
      this.customWidget,
      this.customText})
      : super(key: key);

  final String textCustomListTile;
  final String textCustomListTile2;
  final String? textCustomListTile3;
  final Icon? icon;
  final Widget? customWidget;
  final Text? customText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 251,
      width: 300,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              textCustomListTile,
              style: textStyleHeroSubtitle,
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(textCustomListTile2,
                  style: TextStyle(color: Colors.black54)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  textCustomListTile3!,
                  style: TextStyle(color: Colors.amber[400], fontSize: 16),
                ),
                Icon(icon!.icon),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
