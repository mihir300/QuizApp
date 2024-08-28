import 'package:flutter/material.dart';

import 'Globals.dart';
import 'data/questions.dart';

class QuizResult extends StatefulWidget {
  const QuizResult(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  State<QuizResult> createState() => _QuizResultState();
}

class _QuizResultState extends State<QuizResult> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50, right: 50, top: 50.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/answer.png',
              width: 150,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20.0),
              child: const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "Answers",
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: Globals.answers.length,
                itemBuilder: (context, index) {
                  return Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(QuestionsList[index].question,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          if (Globals.answers[index] ==
                              QuestionsList[index].correctAnswerIndex)
                            Text(
                                "Selected : ${QuestionsList[index].options[Globals.answers[index]]}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)))
                          else
                            Text(
                                "Selected : ${QuestionsList[index].options[Globals.answers[index]]}",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 70, 70))),
                          Text(
                            "Answer : ${QuestionsList[index].options[QuestionsList[index].correctAnswerIndex]}",
                            style: TextStyle(),
                          ),
                          //Text(Globals.answers[index] as String),
                          SizedBox(height: 10),
                          // Add some spacing between items
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
                onPressed: widget.switchScreen,
                child: Text("Restart"))
          ],
        ),
      ),
    );
  }
}
