import 'package:flutter/material.dart';

import 'Globals.dart';
import 'data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.switchScreen, {super.key});

  final void Function() switchScreen;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentIndex = 0;
  bool isLast = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Globals.answers = [];
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = QuestionsList[currentIndex];
    return Container(
        margin: EdgeInsets.only(top: 50.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/quiz.png',
              width: 300,
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20.0),
              // Set the desired bottom margin here
              child: Align(
                alignment: Alignment.center,
                // Centering the SizedBox horizontally
                child: SizedBox(
                  width: 300,
                  child: Text(
                    currentQuestion.question,
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign
                        .center, // Centering the text within the SizedBox
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center, // Centering only the button
              child: SizedBox(
                width: 300, // Set the desired width here
                child: ElevatedButton(
                  onPressed: () => selectAnswer(0),
                  child: Text(currentQuestion.options[0]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center, // Centering only the button
              child: SizedBox(
                width: 300, // Set the desired width here
                child: ElevatedButton(
                  onPressed: () => selectAnswer(1),
                  child: Text(currentQuestion.options[1]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center, // Centering only the button
              child: SizedBox(
                width: 300, // Set the desired width here
                child: ElevatedButton(
                  style: ButtonStyle(),
                  onPressed: () => selectAnswer(2),
                  child: Text(currentQuestion.options[2]),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center, // Centering only the button
              child: SizedBox(
                width: 300, // Set the desired width here
                child: ElevatedButton(
                  onPressed: () => selectAnswer(3),
                  child: Text(currentQuestion.options[3]),
                ),
              ),
            ),
            //we also use like this
            // ...List.generate(currentQuestion.options.length, (index) {
            //   return Align(
            //     alignment: Alignment.center,
            //     child: SizedBox(
            //       width: 300,
            //       child: ElevatedButton(
            //         onPressed: () => selectAnswer(index),
            //         child: Text(currentQuestion.options[index]),
            //       ),
            //     ),
            //   );
            // }),
          ],
        )));
  }

  void selectAnswer(index) {
    setState(() {
      currentIndex++;
      Globals.answers.add(index);
      if (currentIndex == QuestionsList.length) widget.switchScreen();
    });
  }
}
