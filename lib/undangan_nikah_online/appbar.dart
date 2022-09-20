import 'package:flutter/material.dart';
import 'package:yoga_wilanda/button_styling.dart';
import 'package:yoga_wilanda/theme.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    if (width == 300) {
      return Container(
        height: 60,

        // padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Wrap(
          alignment: WrapAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: TextButton(
                onPressed: () {},
                child: const Text('Mobile', style: textStyleTitleGlobal),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  style: hoveringButtonLinks,
                  child: const Text(
                    'HOME',
                    style: textStyleTitleButton2,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: hoveringButtonLinks,
                  child: const Text(
                    'FITUR',
                    style: textStyleTitleButton2,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: hoveringButtonLinks,
                    child: const Text(
                      'DESAIN',
                      style: textStyleTitleButton2,
                    )),
                TextButton(
                    onPressed: () {},
                    style: hoveringButtonLinks,
                    child: const Text(
                      'MASUK',
                      style: textStyleTitleButton2,
                    )),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: hoveringButton,
                    child: const Text('BUAT UNDANGAN')),
              ],
            ),
          ],
        ),
      );
    } else {
      return Container(
        height: 60,

        // padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: const EdgeInsets.all(12),
              child: TextButton(
                onPressed: () {},
                child: const Text('STEDIO', style: textStyleTitleGlobal),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  style: hoveringButtonLinks,
                  child: const Text(
                    'HOME',
                    style: textStyleTitleButton2,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: hoveringButtonLinks,
                  child: const Text(
                    'FITUR',
                    style: textStyleTitleButton2,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: hoveringButtonLinks,
                    child: const Text(
                      'DESAIN',
                      style: textStyleTitleButton2,
                    )),
                TextButton(
                    onPressed: () {},
                    style: hoveringButtonLinks,
                    child: const Text(
                      'MASUK',
                      style: textStyleTitleButton2,
                    )),
              ],
            ),
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style: hoveringButton,
                    child: const Text('BUAT UNDANGAN')),
              ],
            ),
          ],
        ),
      );
    }
  }
}
