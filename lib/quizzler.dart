import 'package:flutter/material.dart';
import 'package:flutter_ui_practice/quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Icon> scoreKeeper = [];
  QuizBrain questions = QuizBrain();
  int nextQues = 0;
  int rightScore = 0;
  int wrongScore = 0;

  void CheckAnswer(bool userInput){
    bool answer = questions.qBank[nextQues].answer;
    setState(() {

      if(answer == userInput){
        scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
        rightScore++;
      }else{
        scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
        wrongScore++;
      }

      if(nextQues >= questions.qBank.length -1){
        Alert(
          type: AlertType.info,
          context: context,
          title: "Quiz Ended",
          buttons: [
            DialogButton(
              color: Colors.teal,
              child: Text(
                "End Test",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
              width: 120,
            )
          ],
        ).show();
        scoreKeeper = [];
      }
      if(scoreKeeper.isEmpty){
        nextQues=0;
      }else{
        nextQues++;

      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions.qBank[nextQues].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.green,
              child: TextButton(

                child: Text(
                  'True',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {

                 CheckAnswer(true);
                },
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.red,
              child: TextButton(

                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  CheckAnswer(false);
                },
              ),
            ),
          ),
        ),
        // score keeper
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}


