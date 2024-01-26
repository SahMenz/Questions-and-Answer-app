import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.purple, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/quiz-logo.png",
                width: 350.0,
                color: const Color.fromARGB(126, 255, 255, 255),
              ),
              /*Opacity(
                opacity: 0.6,
                child: Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 350.0,
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                child: Text(
                  "Learn flutter the fun way!",
                  style: GoogleFonts.lato(color: Colors.white, fontSize: 25.0),
                ),
              ),
              OutlinedButton.icon(
                onPressed: startQuiz,
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                ),
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text(
                  "start Quiz",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
