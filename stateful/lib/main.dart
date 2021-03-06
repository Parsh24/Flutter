import "package:flutter/material.dart";

void main() => runApp(new MaterialApp(home: new AwesomeButton()));

class AwesomeButton extends StatefulWidget{
  
  @override
  createState() => new AwesomeButtonState();
}

class AwesomeButtonState extends State<AwesomeButton>{

  int counter = 0;
  List<String> strings = ["This is", "going", "to be", "Awesome"];
  String displayedString = "";

  void onPress(){
    setState((){
      displayedString = strings[counter];
      counter = counter < strings.length - 1 ? counter + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text('Stateful Flutter App'), backgroundColor: Colors.deepOrange,),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(displayedString, style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)),
              new Padding(padding: new EdgeInsets.all(20.0)),
              new RaisedButton(
                child: new Text("Press me", style: new TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 20.0 )),
                color: Colors.deepOrange,
                onPressed: onPress
              )
            ],)
        )
      )
    );
  }

}