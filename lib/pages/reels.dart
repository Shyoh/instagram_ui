import 'package:flutter/material.dart';
import 'package:instagram_ui/util/Post/ReelsPost1.dart';
import 'package:instagram_ui/util/Post/ReelsPost2.dart';
import 'package:instagram_ui/util/Post/ReelsPost3.dart';
import 'package:instagram_ui/util/Post/ReelsPost4.dart';

class UserReels extends StatelessWidget {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reels',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: 30,
              )
            ],
          ),
        ),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [ReelsPost1(), ReelsPost2(), ReelsPost3(), ReelsPost4()],
      ),
    );
  }
}
