import 'package:draftkings_app/models/question_model.dart';

class QuizModel {
  final String title;
  final String image;
  final List<QuestionModel> quiz;
  int result;
  final int questionCount;
  int minutes;
  int seconds;

  QuizModel(
      {required this.title,
        required this.image,
        required this.minutes,
        required this.seconds,
        required this.quiz,
        required this.questionCount,
        required this.result});
}