class QuestionModel {
  final String question;
  final String image;
  final Map<String, bool> answers;

  QuestionModel(
      {required this.question, required this.answers, required this.image});
}
