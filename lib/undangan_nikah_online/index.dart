import 'package:flutter/material.dart';
import 'package:yoga_wilanda/landing_page/appbar.dart';

import 'body.dart';

class IndexUndanganNikah extends StatelessWidget {
  const IndexUndanganNikah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          AppBarCustom(),
          BodyNikah(),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(40),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Hubungi Kami',
          child: const Icon(Icons.call),
        ),
      ),
    );
  }
}
