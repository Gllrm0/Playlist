import 'playlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gllrm App',
      theme: ThemeData.light(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.back),
        middle: Text('Rock en Español'),
        trailing: Icon(CupertinoIcons.search),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark), title: Text("Browse")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), title: Text("Search")),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.collections),
              title: Text("Your Library")),
        ],
      ),
      body: Playlist()
      );
  }
}
