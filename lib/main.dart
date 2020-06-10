import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceState(),
      ),
    ),
  );
}

class DiceState extends StatefulWidget {
  @override
  _DiceStateState createState() => _DiceStateState();
}

class _DiceStateState extends State<DiceState> {

  int d1 = 1;
  int d2 = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    d1 = 3;
                  });
                },
                child: Image.asset('images/dice$d1.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => {},
                child: Image.asset('images/dice$d2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
