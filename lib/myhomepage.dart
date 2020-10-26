import 'package:flutter/material.dart';
import 'mysecondscreen.dart';
import 'mythird.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("MainScreen"),
        backgroundColor: Colors.lightGreen[900],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/0/a/1/853536-green-leaves-wallpaper-2560x1600-hd.jpg'),
        Text(
          'HomeScreen : Muhammad Alif Kurniawan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Wanna Go To SecondScreen?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.lightGreen[600],
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
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
