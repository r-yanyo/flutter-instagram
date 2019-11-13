import 'package:flutter/material.dart';
import 'package:own_layout/posts.dart';
import 'package:own_layout/stories.dart';

void main() => runApp(MyApp());

final _iconSize = 30.0;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      home: MyHomePage(title: 'Instagram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DefaultTabController(
        length: 5,
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(40),
                child: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  title: Text(
                    widget.title,
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: IconButton(
                      icon: Icon(Icons.camera_alt), iconSize: _iconSize),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.live_tv),
                      iconSize: _iconSize,
                    ),
                    IconButton(icon: Icon(Icons.send), iconSize: _iconSize),
                  ],
                )),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(0),
                      child: Stories(),
                    ),
                    Center(
                      child: Posts(),
                    )
                  ],
                ),
              ),
              Center(),
              Center(),
              Center(),
              Center(),
            ]),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1, color: Color(0x33330000)))),
              height: 80,
              alignment: Alignment.topCenter,
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.home, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.search, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.add_circle, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.favorite, color: Colors.black, size: 30),
                  ),
                  Tab(
                    icon: Icon(Icons.person, color: Colors.black, size: 30),
                  ),
                ],
              ),
            )));
  }
}
