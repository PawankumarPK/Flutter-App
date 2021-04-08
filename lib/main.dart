import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage()   ,
      theme: new ThemeData(
        primarySwatch: Colors.green,
        brightness: Brightness.light,
        accentColor: Colors.red

      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String myText = "Hello World";

  void changeText() {
    setState(() {
      if (myText.startsWith("H"))
        myText = "Welcome to my Pawan";
      else
        myText = "Hello World";
    });
  }

  Widget _bodyWidget() {
    //Container is for give padding ,margin ,bgcolor etc
    return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                myText,
                style: new TextStyle(fontSize: 20.0),
              ),
              new RaisedButton(
                child: new Text(
                  "Click",
                  style: new TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
                onPressed: changeText,
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Home Page")), body: _bodyWidget());
  }
}
