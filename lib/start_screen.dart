import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(100, 255, 255, 255),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Learn Flutter Fun way",
            style: TextStyle(
              color: Color.fromARGB(200, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(219, 255, 255, 255),
            ),
            onPressed: () {},
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start Quiz!"),
          ),
        ],
      ),
    );
  }
}
