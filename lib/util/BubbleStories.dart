import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BubbleStories extends StatefulWidget {
  @override
  State<BubbleStories> createState() => _BubbleStoriesState();
}

class _BubbleStoriesState extends State<BubbleStories> {
  List people = [
    'shyshyoh',
    'lilseyiofficial',
    'exrtgreen',
    'montellfish',
    'overpade',
    'supamedia',
    'mermzcreates',
  ];

  List data = [];
  getData() async {
    http.Response response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/?client_id=30s3iL22og_5WF3iNPxFeVUa0KTukNRamwwQu0HqZv0'));
    return response.body;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return CircularProgressIndicator();
        } else {
          data = json.decode(snapshot.data as String);
          return Container(
            color: Colors.transparent,
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.transparent,
                  height: 100,
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(data[index]["user"]
                                        ["profile_image"]["small"]))),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(data[index]["user"]["username"])
                        ],
                      )),
                );
              },
            ),
          );
        }
      },
    );
  }
}
