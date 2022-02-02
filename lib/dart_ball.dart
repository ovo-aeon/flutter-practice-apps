import 'dart:math';

import 'package:flutter/material.dart';

class DartBall extends StatelessWidget{
  const DartBall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ball()
    );
  }
}


class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNum = 1;
  void changeBall(){
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: TextButton(
              child: Image.asset('assets/images/ball$ballNum.png'),
              onPressed: (){
                changeBall();
      },
          ),
      )
    );
  }
}
