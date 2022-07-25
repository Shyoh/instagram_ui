// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/util/FollowButton.dart';

class ReelsPost2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 72, 243, 33),
      body: Column(
        children: [
          SizedBox(height: 550),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Profile, Photo, Caption
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 150),
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.grey[500]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('shyshyoh',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13)),
                        ),
                        FollowButton(tag: 'Follow')
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 4.0),
                      child: Text('Insert a good caption here',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite_outline, color: Colors.white, size: 30),
                    Icon(Icons.chat_bubble_outline,
                        color: Colors.white, size: 30),
                    Icon(Icons.share_outlined, color: Colors.white, size: 30),
                    Icon(Icons.more_horiz, color: Colors.white, size: 30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
