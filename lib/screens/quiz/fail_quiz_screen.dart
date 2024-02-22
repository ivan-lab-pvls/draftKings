import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/models/quiz_model.dart';
import 'package:draftkings_app/router/router.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:draftkings_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class FailQuizScreen extends StatefulWidget {
  final QuizModel quiz;
  final int result;
  const FailQuizScreen({super.key, required this.quiz, required this.result});

  @override
  State<FailQuizScreen> createState() => _FailQuizScreenState();
}

class _FailQuizScreenState extends State<FailQuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'quiz failed'.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      width: 220,
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          border: Border.all(color: AppColors.green, width: 2),
                          borderRadius:
                          BorderRadius.all(Radius.circular(18.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/elements/timer.svg'),
                          SizedBox(width: 5),
                          Text(
                            'Time spent: ',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "2:00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.green,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(12),
                      width: 220,
                      decoration: BoxDecoration(
                          color: AppColors.grey,
                          border: Border.all(color: AppColors.green, width: 2),
                          borderRadius:
                          BorderRadius.all(Radius.circular(18.0))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Right Question: ',
                            style: TextStyle(
                                color: AppColors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "${widget.result} / ${widget.quiz.questionCount}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.green,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    ActionButtonWidget(
                        text: 'Play Again',
                        color: AppColors.green,
                        width: 220,
                        onTap: () {
                          context.router.push(QuizRoute(quiz: widget.quiz));
                        }),
                    SizedBox(height: 15),
                    ActionButtonWidget(
                        text: 'Main Menu',
                        color: AppColors.green,
                        width: 220,
                        onTap: () {
                          context.router.push(MainRoute());
                        }),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
