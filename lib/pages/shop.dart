// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_ui/util/ShopGrid.dart';
import 'package:instagram_ui/util/ShopTags.dart';

class UserShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Shop',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30,
                    ),
                  ),
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                padding: EdgeInsets.all(4.0),
                color: Colors.grey[300],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey[700],
                        ),
                        Container(
                            child: Text(
                          'Search',
                          style: TextStyle(color: Colors.grey[700]),
                        )),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(Icons.camera_alt_outlined),
                    )
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ShopTags(tag: 'Catergories'),
                ShopTags(tag: 'Shops'),
                ShopTags(tag: 'Offers & sales'),
                ShopTags(tag: 'Drops'),
                ShopTags(tag: 'Live'),
                ShopTags(tag: "Editor's Picks"),
                ShopTags(tag: 'Buy on Instagram'),
              ],
            ),
          ),
          Expanded(child: ShopGrid()),
        ],
      ),
    );
  }
}
