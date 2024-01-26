import 'package:flutter/material.dart';
import 'package:question_and_answer/data/questions.dart';
import 'package:question_and_answer/homeScreen.dart';
import 'package:question_and_answer/questions_screen.dart';
import 'package:question_and_answer/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  /*Widget? activeScreen;
  @override
  void initState() {
    activeScreen = MyHomeScreen(switchScreen);
    super.initState();
  }
  void switchScreen() {
    setState(() {
      activeScreen = const QuestionScreen();
    });
  }*/

  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = MyHomeScreen(switchScreen);

    if (activeScreen == "question-screen") {
      widgetScreen = QuestionScreen(
          onSelectAnswer: chooseAnswer
      );
    }
    if (activeScreen == "result-screen") {
      widgetScreen = ResultsScreen(
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white, Colors.purple, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
            child: widgetScreen),
      ),
    );
  }
}
