import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mythird.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Second Screen"),
        backgroundColor: Colors.lightGreen[900],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/1/d/d/304702.jpg'),
        Text(
          'SecondScreen : Muhammad Alif Kurniawan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Wanna Go To HomeScreen?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.lightGreen[600],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.lightGreen[800],
          child: Text("Wanna Go To The ThirdScreen?"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          },
        ),
      ]),
    );
  }
}
