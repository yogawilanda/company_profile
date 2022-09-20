import 'package:flutter/material.dart';

import '../image.dart';
import '../theme.dart';
import 'particles/text.dart';

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  final List<Map> myProducts =
      List.generate(4, (index) => {"id": index, "name": "Product $index"})
          .toList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyProductContent(myProducts: myProducts),
        ],
      ),
    );
  }
}

class MyProductContent extends StatelessWidget {
  const MyProductContent({
    Key? key,
    required this.myProducts,
  }) : super(key: key);

  final List<Map> myProducts;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150,
            width: 750,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 24),
            child: Column(
              children: [
                Text(
                  whyUs,
                  style: textStyleTitleGlobal,
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  whyUsExplanatory,
                  style: textStyleHeroSubtitle3,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            constraints: BoxConstraints.tight(
              Size(900, 350),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 500,
                  height: 400,
                  child: Image.network(imageSection2),
                ),
                SizedBox(
                  width: 60,
                ),
                // Container(
                //   margin: EdgeInsets.all(8),
                //   padding: EdgeInsets.all(9),
                //   child: Center(),
                // ),
                Flexible(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              mainAxisExtent: 150,
                              childAspectRatio: 2,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: myProducts.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text(myProducts[index]["name"]),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
