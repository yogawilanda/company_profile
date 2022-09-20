import 'package:flutter/material.dart';

import '../theme.dart';
import '../widget/core_widget.dart';
import 'particles/text.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        RightColumn(),
        ImageCaseStandard(
          imageloader: 'assets/nikah/picture/3344439.jpg',
        ),
      ],
    );
  }
}

//Column on the right
class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          RightWidgetA(),
          // RightWidgetB(),
        ],
      ),
    );
  }
}

//Textual Widget of Right Column
class RightWidgetA extends StatelessWidget {
  const RightWidgetA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heroTitle,
            style: textStyleHeroTitle,
            maxLines: 2,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            heroSubtitle,
            style: textStyleHeroSubtitle2,
            maxLines: 4,
            softWrap: true,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            heroSubtitleB,
            style: textStyleHeroSubtitle,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

class RightWidgetB extends StatelessWidget {
  const RightWidgetB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: const Icon(Icons.security_outlined)),
          const Text(
            'Qualified and Steady',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            explanatory3,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                overflow: TextOverflow.clip,
                height: 1.3),
            maxLines: 4,
            softWrap: true,
          ),
          Container(
            child: Container(
              child: Container(),
            ),
          )
        ],
      ),
    );
  }
}
