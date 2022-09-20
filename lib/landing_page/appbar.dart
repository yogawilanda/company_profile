import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,

      // padding: EdgeInsets.all(20),
      width: double.infinity,
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'STEDIO',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
          ),
          Spacer(),
          ButtonBar(
            alignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(onPressed: () {}, child: Text('Products')),
              TextButton(onPressed: () {}, child: Text('Our Services')),
              TextButton(onPressed: () {}, child: Text('Contacts')),
              TextButton(onPressed: () {}, child: Text('Resource')),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Get Started!',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
