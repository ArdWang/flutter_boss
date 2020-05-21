import 'package:flutter/material.dart';


const double _kTextAndIconTabHeight = 53.0;
const double _kMarginBottom = 3.0;

class IconTab extends StatefulWidget{

  const IconTab({
    Key key,
    this.text,
    this.icon,
    this.color,
  }):assert(text!=null || icon != null || color != null),
  super(key:key);

  final String text;
  final String icon;
  final Color color;

  @override
  State<StatefulWidget> createState() {
    return new IconTabState();
  }
}


class IconTabState extends State<IconTab>{

  @override
  Widget build(BuildContext context) {


    assert(debugCheckHashMaterial(context));

    double height = _kTextAndIconTabHeight;

    Widget label = new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

      ],
    );



    return null;
  }





}