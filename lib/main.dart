import 'package:flutter/material.dart';

import 'showcase.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga Company Profile',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primarySwatch: Colors.amber, brightness: Brightness.dark),
      home: IndexView(),
    );
  }
}

// enum sifat static pada sebuah class (bisa lebih dari satu data value)
//

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
