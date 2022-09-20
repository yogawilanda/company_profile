import 'package:flutter/material.dart';

import '../theme.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        // ImageCase(),
        RightColumn(),
      ],
    );
  }
}

class RightColumn extends StatelessWidget {
  const RightColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          RightWidgetA(),
          RightWidgetB(),
          RightWidgetA(),
        ],
      ),
    );
  }
}

class RightWidgetA extends StatelessWidget {
  const RightWidgetA({
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
              child: const Icon(Icons.computer)),
          const Text(
            'Remote Ready',
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.cyan, fontSize: 16),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Our system and culture enable ideas and thinking to be flourished. We also empower our team to help each other',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                overflow: TextOverflow.clip,
                height: 1.3),
            maxLines: 4,
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
        ],
      ),
    );
  }
}
