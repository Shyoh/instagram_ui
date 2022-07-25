// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String text;

  UserPost({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  //profile photo and name
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.more_horiz, size: 30),
            ],
          ),
        ),
        //post
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        //Comments,Likes,Share,Bookmark
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite_outline),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.ios_share_outlined),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //Liked by
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'lilseyiofficial ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and others', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        //Caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 3.0),
          child: RichText(
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: 'shyshyoh',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(
                text: 'They call me mr.clean they way my fits are always clean',
              ),
            ]),
          ),
        ),
        //Comments
      ],
    );
  }
}
