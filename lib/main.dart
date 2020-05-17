import 'dart:async';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.red , accentColor: Colors.yellowAccent
    ),
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  )
  );
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4) , ()=> print("Splash Screen is Worked ! "));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.indigoAccent
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(Icons.shopping_cart , size: 55.0,),
                      ),
                      Padding(padding: EdgeInsets.only(top: 16.0)),
                      Text("Flutter Cart" , style: TextStyle(color: Colors.white , fontSize: 24.0),)
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(

                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                      Text("Online Store \nFor Everyone" , style: TextStyle(fontSize: 16.0 , color: Colors.white),)
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
