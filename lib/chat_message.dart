import 'package:flutter/material.dart';

const String _name = "Pramod";

class ChatMessage extends StatelessWidget{
  final String text;
  ChatMessage({this.text});
  @override
  Widget build(BuildContext context){
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: new EdgeInsets.only(right: 15.0),
            child: new CircleAvatar(
              child: new Text(_name[0]),
            ),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(_name, style:Theme.of(context).textTheme.subhead),
              new Container(
                margin: new EdgeInsets.only(top: 10.0),
                child: new Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}