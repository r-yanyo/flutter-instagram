import 'package:flutter/material.dart';
import 'package:own_layout/heros.dart';
import 'package:own_layout/post_item.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(width: 1, color: Color(0x33330000)))),
            child: Column(
              children: [
                PostItem(),
                Heros(),
              ],
            )));
  }
}
