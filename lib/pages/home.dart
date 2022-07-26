// ignore_for_file: prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_ui/util/BubbleStories.dart';
import 'package:instagram_ui/util/UserPost.dart';

class UserHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram',
                style: TextStyle(fontFamily: "pacifico", color: Colors.black)),
            Row(
              children: [
                Icon(Icons.add, color: Colors.black),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  // ignore: prefer_const_constructors
                  child: Icon(Icons.favorite_outline, color: Colors.black),
                ),
                Icon(Icons.message, color: Colors.black),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          BubbleStories(),
          //Square post
          UserPost(),
        ],
      ),
    );
  }
}
