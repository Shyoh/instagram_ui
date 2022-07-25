import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String name;

  BubbleStories({required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[400], shape: BoxShape.circle)),
            SizedBox(
              height: 10,
            ),
            Text(name)
          ],
        ));
  }
}
