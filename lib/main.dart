import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Center(child: Text('Magic 8 Ball')),
      ),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  @override
  _ballState createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    void rollBall(){
      setState((){
        ballNum = Random().nextInt(4) + 1;
      });
    }
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
             child: TextButton(
              onPressed:(){
                rollBall();
              }, child: Image.asset('images/ball$ballNum.png'),
    ),
            ),
            ),
        ],
      ),
    );
  }
}
