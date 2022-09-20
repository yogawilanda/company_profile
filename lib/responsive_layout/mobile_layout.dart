import 'package:flutter/material.dart';

final textCustom = TextStyle(fontSize: 12);

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width.toInt();
    final widthText = MediaQuery.of(context).size.width.toDouble();
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text(
          'MOBILE',
          style: TextStyle(letterSpacing: 6),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.deepPurple[400],
                  child: Text(
                    "Mobile size is $width px",
                    style: TextStyle(
                      fontSize: widthText / 12,
                      color: Color.fromARGB(
                        255,
                        width,
                        width - 2,
                        width,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // comment section & recommended videos
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[300],
                      height: 120,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
