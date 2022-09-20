import 'package:flutter/material.dart';
import 'package:yoga_wilanda/theme.dart';

class CustomCardSection3 extends StatelessWidget {
  final String textTitle;
  final String textExplanatory;
  final String cardIcon;

  const CustomCardSection3(
      {required this.textTitle,
      required this.textExplanatory,
      required this.cardIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.amber.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 9),
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textExplanatory,
                textAlign: TextAlign.center,
                style: textStyleCardSection3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleTextContainer extends StatelessWidget {
  const TitleTextContainer({
    Key? key,
    required this.textTitle,
    required this.textSubtitle,
    required this.textStyleTitle,
    required this.textStyleSubtitle,
  }) : super(key: key);

  final String textTitle;
  final String textSubtitle;
  final TextStyle textStyleTitle;
  final TextStyle textStyleSubtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
      child: Column(
        children: [
          Text(
            textTitle,
            style: textStyleTitle,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            textSubtitle,
            style: textStyleSubtitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class CardSection7 extends StatelessWidget {
  const CardSection7(
      {Key? key,
      required this.cardTitle,
      required this.cardSubTitle,
      required this.cardTextStyle,
      required this.cardSubTextStyle})
      : super(key: key);

  final String cardTitle;
  final String cardSubTitle;
  final TextStyle cardTextStyle;
  final TextStyle cardSubTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cardTitle,
                  style: cardTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  cardSubTitle,
                  style: cardSubTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
