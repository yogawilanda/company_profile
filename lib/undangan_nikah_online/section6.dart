import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../theme.dart';
import 'particles/custom_card.dart';
import 'particles/text.dart';

class Section6 extends StatelessWidget {
  Section6({Key? key}) : super(key: key);

  final List<Map> themeList =
      List.generate(4, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TitleTextContainer(
            textTitle: testimonialsTitle,
            textStyleTitle: textStyleTitleButton,
            textSubtitle: testimonialsExplanatory,
            textStyleSubtitle: textStyleCardSection3,
          ),
          CarouselSection6()
        ],
      ),
    );
  }
}

class CarouselSection6 extends StatelessWidget {
  const CarouselSection6({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 500.0,
        autoPlay: true,
        aspectRatio: 1 / 8,
        viewportFraction: 0.35,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: 250,

              width: 500,
              // margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 12),
              decoration: BoxDecoration(
                  // color: Colors.amber, borderRadius: BorderRadius.circular(12)
                  ),
              child: Center(
                  child: Image.network(
                'https://picsum.photos/id/$i/300/300',
                fit: BoxFit.cover,
              )

                  // Text(
                  //   'text $i',
                  //   style: TextStyle(fontSize: 16.0),
                  // ),
                  ),
            );
          },
        );
      }).toList(),
    );
  }
}

class MyProductContent extends StatelessWidget {
  const MyProductContent({
    Key? key,
    required this.themeList,
  }) : super(key: key);

  final List<Map> themeList;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //TextContainer

          TitleTextContainer(
            textTitle: designTemplateTitle,
            textStyleTitle: textStyleTitleButton,
            textSubtitle: designTemplateExplanatory,
            textStyleSubtitle: textStyleCardSection3,
          ),

          //Content Grid
          Container(
            width: 1100,
            height: 750,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              children: [],
            ),
          ),
          Container(
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(120)),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                  // backgroundColor: Colors.amber,
                  shape: StadiumBorder()),
              child: Text(
                buttonSectionText6,
                style: textStyleTitleGlobal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
