import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int? leftDieNum = 1;
  int? rightDieNum =1;

  void changeDieState(){
    setState(() {
      leftDieNum =  1 + Random().nextInt(6);
      rightDieNum =  1 + Random().nextInt(6);

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child:  Row(
            children: <Widget>[
              Expanded(
                  child: TextButton(
                      onPressed: (){
                        changeDieState();
                      },
                      child: Image.asset('assets/images/dice$leftDieNum.png')
                  )
              ),
              Expanded(
                  child: TextButton(
                      onPressed: (){
                        changeDieState();
                      },
                      child: Image.asset('assets/images/dice$rightDieNum.png')
                  )
              )
            ],
          ),
        )
    );
  }
}
