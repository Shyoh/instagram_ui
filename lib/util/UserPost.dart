// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserPost extends StatefulWidget {
  @override
  State<UserPost> createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  List data = [];
  getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=30s3iL22og_5WF3iNPxFeVUa0KTukNRamwwQu0HqZv0'));
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    Widget captionBuilder(index) {
      return Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8.0, right: 6.0),
        child: RichText(
          text: TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(
                text: data[index]["user"]["username"],
                style: TextStyle(fontWeight: FontWeight.bold)),
            WidgetSpan(child: SizedBox(width: 5)),
            TextSpan(
              text: data[index]["user"]["bio"],
            ),
          ]),
        ),
      );
    }

    Widget profileBuilder(index) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                data[index]["user"]["profile_image"] == null
                    ? Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.grey[400]),
                      )
                    : Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(data[index]["user"]
                                    ["profile_image"]["small"]))),
                      ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  data[index]["user"]["username"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(Icons.more_horiz, size: 30),
          ],
        ),
      );
    }

    Widget commentBuilder(index) {
      return Padding(
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
      );
    }

    var likedBy = Padding(
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
    );
    return Expanded(
      child: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return CircularProgressIndicator();
          } else {
            data = json.decode(snapshot.data as String);
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //profile photo and name
                      profileBuilder(index),
                      //post
                      Container(
                        height: 400,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    data[index]["urls"]["regular"]))),
                      ),
                      //Comments,Likes,Share,Bookmark
                      commentBuilder(index),
                      //Liked by
                      likedBy,
                      //Caption
                      captionBuilder(index),
                      //Comments
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
