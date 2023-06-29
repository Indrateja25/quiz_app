import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.restartQuiz});

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getsummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct-answer': questions[i].correctAnswer,
        'chosen-answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getsummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct-answer'] == data['chosen-answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "You got $numCorrectQuestions out of $numTotalQuestions questions correctly ",
                style: const TextStyle(
                  color: Color.fromARGB(255, 241, 234, 234),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              QuestionsSummary(summaryData),
              const SizedBox(height: 30),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(219, 255, 255, 255),
                ),
                onPressed: restartQuiz,
                icon: const Icon(Icons.restart_alt_sharp),
                label: const Text("Restart Quiz!"),
              ),
            ]),
      ),
    );
  }
}
