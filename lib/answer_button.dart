import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.tapAnswer});

  final String answerText;
  final void Function() tapAnswer;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: tapAnswer,
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 245, 241, 241),
        padding: const EdgeInsets.all(10),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
