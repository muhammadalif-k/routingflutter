import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mysecondscreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Third Screen"),
        backgroundColor: Colors.lightGreen[900],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'http://getwallpapers.com/wallpaper/full/2/5/e/727488-amazing-four-leaf-clover-wallpaper-1920x1200.jpg'),
        Text(
          'ThirdScreen : Muhammad Alif Kurniawan',
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
          child: Text("Wanna Go To The SecondScreen?"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ]),
    );
  }
}
