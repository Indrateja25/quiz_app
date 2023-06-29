import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: const TextStyle(
                    color: Color.fromARGB(255, 15, 191, 68),
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        (data['question']).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 241, 234, 234),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        (data['correct-answer']).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 241, 234, 234),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        (data['chosen-answer']).toString(),
                        style: const TextStyle(
                          color: Color.fromARGB(255, 159, 68, 68),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
