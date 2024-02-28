import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/quiz_model.dart';
import 'package:DK_app/repository/quiz_repository.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizListScreen extends StatefulWidget {
  const QuizListScreen({super.key});

  @override
  State<QuizListScreen> createState() => _QuizListScreenState();
}

class _QuizListScreenState extends State<QuizListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Select Quiz'.toUpperCase(),
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 20),
                itemCount: quizRepository.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 25),
                itemBuilder: (BuildContext context, int index) {
                  final QuizModel _quiz = quizRepository[index];
                  return GestureDetector(
                    onTap: () {
                      context.router.push(QuizRoute(quiz: _quiz));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.all(Radius.circular(12.0))),
                      child: Column(
                        children: [
                          Text(
                            _quiz.title,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 15),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(23),
                            child: Image.asset(
                              _quiz.image,
                              fit: BoxFit.cover,
                              height: 200,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/elements/timer.svg'),
                                  SizedBox(width: 5),
                                  Text(
                                    'Time: ${_quiz.minutes} mins',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/elements/question.svg'),
                                  SizedBox(width: 5),
                                  Text(
                                    '${_quiz.questionCount} Questions',
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
