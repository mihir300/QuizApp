import 'package:flutter/material.dart';

class MainActivity extends StatelessWidget {
  const MainActivity(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz.png',
              width: 250,
            ),
            Text(
              "Learn Flutter In Fun Way !",
              style: TextStyle(fontSize: 18),
            ),
            OutlinedButton.icon(
              icon: Icon(Icons.arrow_forward_ios),
              onPressed: switchScreen,
              label: Text("Start"),
            )
          ],
        )));
  }
}
