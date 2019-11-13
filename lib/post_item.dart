import 'package:flutter/material.dart';

import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';

final _dummyIcon = IconButton(
  icon: Icon(Icons.account_circle),
  iconSize: 40.0,
  onPressed: () => {},
);

final _sliderItem = Container(
  child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(0.0)),
      child: Image.network(
        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
        fit: BoxFit.cover,
        width: 1000.0,
      )),
);

class PostItem extends StatefulWidget {
  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State {
  int _current = 0;

  final _pictures = <Widget>[_sliderItem, _sliderItem, _sliderItem];

  // _PostItemState({Key key})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
        Row(children: [
          _dummyIcon,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("hoge_hoge"), Text("Japan no dokoka")],
          ),
        ]),
        IconButton(icon: Icon(Icons.more_horiz))
      ]),
      Center(
        child: CarouselSlider(
            height: 400,
            enableInfiniteScroll: false,
            viewportFraction: 1.0,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },
            items: _pictures),
      ),
      Row(
        children: [
          Container(
              margin: EdgeInsets.only(right: 44),
              child: Row(children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(Icons.mode_comment),
                  iconSize: 30,
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  iconSize: 30,
                ),
              ])),
          Expanded(
              child: Row(
                  children: _pictures
                      .asMap()
                      .map((index, picture) {
                        return MapEntry(
                            index,
                            Container(
                              height: 8.0,
                              width: 8.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 20.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _current == index
                                      ? Color.fromRGBO(0, 0, 0, 0.9)
                                      : Color.fromRGBO(0, 0, 0, 0.4)),
                            ));
                      })
                      .values
                      .toList())),
          Container(
              padding: EdgeInsets.only(right: 4),
              child: Row(children: [
                Transform.rotate(
                  angle: 3 * pi / 2,
                  child: IconButton(
                      icon: Icon(Icons.label_important), iconSize: 30),
                )
              ])),
        ],
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        alignment: Alignment.centerLeft,
        child: Text("ホゲホゲさんが「Good！」しました。"),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            Text(
              "r-yanyo",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("梟を撮影しに行きました..."),
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12),
          alignment: Alignment.centerLeft,
          child: Text(
            "コメント1件を表示",
          )),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              IconButton(
                icon: Icon(Icons.account_circle),
                iconSize: 30,
              ),
              Text("コメント..."),
            ]),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.favorite),
                ),
                IconButton(
                  icon: Icon(Icons.ac_unit),
                ),
                IconButton(
                  icon: Icon(Icons.add_circle),
                ),
              ],
            ),
          ],
        ),
      ),
      Container(
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(width: 1, color: Color(0x33330000)))),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(12, 0, 12, 8),
          child: Text("x時間前")),
    ]);
  }
}
