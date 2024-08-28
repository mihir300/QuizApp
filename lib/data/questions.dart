import '../model/quiz_question.dart';

final List<QuizQuestion> QuestionsList = [
  QuizQuestion(
    "What is Flutter?",
    ["A mobile development framework", "A programming language", "A database", "An operating system"],
    0,
  ),
  QuizQuestion(
    "Which language is primarily used for Flutter development?",
    ["Java", "Kotlin", "Dart", "Swift"],
    2,
  ),
  QuizQuestion(
    "What is the name of Flutter's rendering engine?",
    ["Skia", "Blink", "Vulkan", "Metal"],
    0,
  ),
  QuizQuestion(
    "Which widget is used to create a button in Flutter?",
    ["TextField", "Container", "ElevatedButton", "ListView"],
    2,
  ),
  QuizQuestion(
    "How do you define a stateless widget in Flutter?",
    ["Extends StatelessWidget", "Extends StatefulWidget", "Extends InheritedWidget", "Extends ParentWidget"],
    0,
  ),
  QuizQuestion(
    "What is the use of a 'pubspec.yaml' file in Flutter?",
    ["To configure routing", "To manage app permissions", "To manage dependencies", "To define UI styles"],
    2,
  ),
  QuizQuestion(
    "Which command is used to run a Flutter application?",
    ["flutter run", "flutter build", "flutter install", "flutter start"],
    0,
  ),
  QuizQuestion(
    "What is the purpose of the 'setState' method in Flutter?",
    ["To initialize state", "To rebuild the UI with updated data", "To destroy state", "To pause the app"],
    1,
  ),
  QuizQuestion(
    "Which widget is commonly used to handle user gestures in Flutter?",
    ["GestureDetector", "Form", "IconButton", "Flexible"],
    0,
  ),
  QuizQuestion(
    "What is the default port for running a Flutter web app?",
    ["8080", "8000", "5000", "3000"],
    0,
  ),
];
