import 'package:flutter/material.dart';

import 'package:yoga_wilanda/undangan_nikah_online/particles/custom_card.dart';

import 'package:yoga_wilanda/undangan_nikah_online/particles/text.dart';

import '../image.dart';
import '../theme.dart';

class Section5 extends StatelessWidget {
  Section5({Key? key}) : super(key: key);

  final List<Map> themeList =
      List.generate(4, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyProductContent(
            themeList: [],
          ),
        ],
      ),
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
            textStyleTitle: textStyleTitleGlobal,
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
              children: [
                CustomCardSection5(),
                CustomCardSection5(),
                CustomCardSection5(),
                CustomCardSection5(),
                CustomCardSection5(),
                CustomCardSection5(),
              ],
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
                'Lihat Desain Lainnya',
                style: textStyleTitleGlobal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// GridView.count(
//               crossAxisCount: 3,
//               crossAxisSpacing: 10,
//               children: [
//                 CustomCardSection5(),
//                 CustomCardSection5(),
//                 CustomCardSection5(),
//                 CustomCardSection5(),
//                 CustomCardSection5(),
//                 CustomCardSection5(),
//               ],
//             ),

class CustomCardSection5 extends StatelessWidget {
  const CustomCardSection5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            // height: 250,
            // width: 300,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage(
                    'https://alexandra.bridestory.com/images/dpr_1.0,f_auto,fl_progressive,q_80,c_fill,g_faces,w_412/blogs/amanda-and-septian-01-rk11tnavi-H14mmIb1w/rekomendasi-desain-undangan-pernikahan-digital-dari-vendor-terpercaya-4.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(24),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              'Nama Desain',
              style: textStyleTitleGlobal,
            ),
          ),
        )
      ],
    ));
  }
}
