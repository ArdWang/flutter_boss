import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  @override
  SplashState createState() => new SplashState();
}

class SplashState extends State<SplashPage>{

  Timer _t;

  @override
  void initState(){
    super.initState();

    _t = new Timer(const Duration(milliseconds: 1500),(){

    });

  }


  @override
  void dispose(){
    _t.cancel();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: new Padding(
          padding: const EdgeInsets.only(top:150.0,),
          child: new Column(
            children: <Widget>[
              new Text(
                  "BOSS直聘",
                style: new TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
      ),
    );
  }
}
