import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => new _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("First Page"),
        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new Text("Hello its First Page here",
        style: TextStyle(fontSize: 23.0,color: Colors.black),
        ),
      ),
    );
  }
}

