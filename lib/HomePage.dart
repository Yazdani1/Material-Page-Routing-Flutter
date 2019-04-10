import 'package:flutter/material.dart';
import 'package:ud_flutter_pagerouting/First Page.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      appBar: new AppBar(
        title: new Text("Flutter Routing"),
        backgroundColor: Colors.redAccent,

        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              onPressed: (){
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
              }
          )
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[

            new UserAccountsDrawerHeader(
                accountName: new Text("code with ydc"),
                accountEmail: new Text("ydc@gmail.com"),
            decoration: new BoxDecoration(
              color: Colors.redAccent
            ),
            ),
            new ListTile(
              title: new Text("First Page"),
              leading: new Icon(Icons.add,color: Colors.deepOrange,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
              },
            ),
            new ListTile(
              title: new Text("Second Page"),
              leading: new Icon(Icons.add,color: Colors.deepOrange,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
              },
            ),
            new ListTile(
              title: new Text("Third Page"),
              leading: new Icon(Icons.add,color: Colors.deepOrange,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
              },
            ),
            new ListTile(
              title: new Text("Fourth Page"),
              leading: new Icon(Icons.add,color: Colors.deepOrange,),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
              },
            ),
          ],
        ),
      ),//end drawer

      body: new ListView(
        children: <Widget>[

          new Container(
            margin: EdgeInsets.all(10.0),
              child: ButtonTheme(
                height: 40.0,

                child: new RaisedButton(
                    child: new Text("Click here",
                    style: TextStyle(fontSize: 20.0,color: Colors.white),
                    ),
                    color: Colors.deepOrange,
                    shape: StadiumBorder(),
                    onPressed: (){
                      Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
                    }
                ),
              )
          ),

          new Container(
            margin: EdgeInsets.all(10.0),
            height: 50.0,
            child: new Card(
              elevation: 10.0,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new InkWell(
                  child: new Text("Go to Second Page",
                  style: TextStyle(fontSize: 20.0,color: Colors.black),
                  ),
                  onTap: (){
                    Navigator.of(context).push(new MaterialPageRoute(builder: (context)=>FirstPage()));
                  },
                ),
              ),
              
            )
          )

          
        ],
      ),


    );
  }
}
