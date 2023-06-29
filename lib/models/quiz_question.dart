class QuizQuestion {
  const QuizQuestion(
    this.text,
    this.options,
    this.correctAnswer,
  );
  final String text;
  final List<String> options;
  final String correctAnswer;
}
