import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 50,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(3.0),
            child: Container(color: Color.fromARGB(255, 248, 216, 101)),
          );
        });
  }
}
