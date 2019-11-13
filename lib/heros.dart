import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final _heroItem = Container(
    decoration: BoxDecoration(
        border: Border.all(width: 2, color: Color(0x33330000)),
        borderRadius: BorderRadius.circular(5)),
    width: 150,
    height: 250,
    margin: EdgeInsets.only(right: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.account_circle,
          size: 100,
        ),
        Text("ほげ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        Text("ほげ"),
        FlatButton(
            onPressed: () {},
            padding: EdgeInsets.fromLTRB(24, 8, 24, 8),
            splashColor: Colors.blueAccent,
            textColor: Colors.white,
            color: Colors.blue,
            child:
                Text("フォローする", style: TextStyle(fontWeight: FontWeight.bold))),
      ],
    ));

class Heros extends StatelessWidget {
  // final String name;
  // final IconData icon;

  // Heros({Key key, @required this.name, @required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 12),
        color: Color(0x11101110),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "おすすめ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: [_heroItem, _heroItem, _heroItem, _heroItem])),
          ],
        ));
  }
}
