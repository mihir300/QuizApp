import 'package:flutter/material.dart';
import 'package:quizapp/MainActivity.dart';
import 'package:quizapp/QuestionsScreen.dart';
import 'package:quizapp/QuizResult.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = MainActivity(switchScreen);
  }

  void switchScreen() {
    setState(() {
      if (activeScreen is MainActivity) {
        activeScreen = QuestionsScreen(switchScreen);
      } else if(activeScreen is QuestionsScreen){
        activeScreen = QuizResult(switchScreen);
      } else{
        activeScreen = MainActivity(switchScreen);
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 255, 255, 255),
            Color.fromARGB(255, 255, 165, 0)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: activeScreen,
        ),
      ),
    );
  }
}
