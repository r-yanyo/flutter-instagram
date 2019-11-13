import 'package:flutter/material.dart';
import 'package:own_layout/story_item.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0x3333000000)))),
        child: Row(
          children: <Widget>[
            StoryItem(name: "r-yanyo", icon: Icons.account_circle),
            StoryItem(name: "fugafuga", icon: Icons.account_circle),
            StoryItem(name: "hogehogeo", icon: Icons.account_circle),
            StoryItem(name: "mogemogeo", icon: Icons.account_circle),
            StoryItem(name: "fugefugeo", icon: Icons.account_circle),
          ],
        ));
  }
}
