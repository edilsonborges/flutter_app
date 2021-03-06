import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Contador", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/bg.jpeg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text("Pessoas: $_people",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Text(
                    "+1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {
                    _changePeople(1);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                  child: Text(
                    "-1",
                    style: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                  onPressed: () {
                    _changePeople(-1);
                  },
                ),
              ),
            ],
          ),
          Text("contador",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none))
        ])
      ],
    );
  }
}
