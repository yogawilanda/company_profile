import "package:flutter/material.dart";

import 'responsive_layout/desktop_layout.dart';

import 'responsive_layout/device_type.dart';

import 'responsive_layout/mobile_layout.dart';

import 'undangan_nikah_online/index.dart';

class IndexView extends StatelessWidget {
  const IndexView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
      ),
      backgroundColor: Color.fromARGB(255, 37, 26, 81),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contoh Button",
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ElevatedButtonStyles()));
              },
              child: const Text("Contoh Button"),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => IndexUndanganNikah()));
              },
              child: const Text("UI Undangan Nikah"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ResponsiveLayout(
                              desktopLayout: MyDesktopBody(),
                              mobileLayout: MyMobileBody(),
                            )));
              },
              child: const Text("Responsive Layout Preview"),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonPreview extends StatelessWidget {
  const ButtonPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Contoh Button",
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ElevatedButtonStyles()));
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Normal Outline Button"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("This is Text Button"),
            ),
          ],
        ),
      ),
    );
  }
}

class ElevatedButtonStyles extends StatelessWidget {
  const ElevatedButtonStyles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text("Normal"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Normal Button With Icons"),
          ),
        ],
      ),
    );
  }
}
