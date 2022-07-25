// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:instagram_ui/util/ProfileGrid.dart';
import 'package:instagram_ui/util/ShopTags.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('ShyShyoh', style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Icon(Icons.add),
                    ),
                    Icon(Icons.menu)
                  ],
                )
              ],
            ),
          )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Profile Photo
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 25.0),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[500]),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Post
                    Column(
                      children: [
                        Text(
                          '12',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('Post')
                      ],
                    ),
                    //Following
                    Column(
                      children: [
                        Text(
                          '3028',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('Following')
                      ],
                    ),
                    //Followers
                    Column(
                      children: [
                        Text(
                          '154',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('Followers')
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    Text(
                      'Shyoh',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    //catergory
                    Text(
                      'Political Candidate',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                    //bio
                    Text(
                      'I make videos n stuff :)',
                      style: TextStyle(color: Colors.black),
                    ),
                    //Website
                    Text(
                      'Shyoh.com',
                      style:
                          TextStyle(color: Color.fromARGB(255, 39, 120, 219)),
                    )
                  ],
                ),
              ],
            ),
          ),
          ShopTags(tag: 'Edit Profile'),
          Expanded(child: ProfileGrid()),
        ],
      ),
    );
  }
}
