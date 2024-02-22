import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/models/quiz_model.dart';
import 'package:draftkings_app/router/router.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:draftkings_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class QuizScreen extends StatefulWidget {
  final QuizModel quiz;

  const QuizScreen({super.key, required this.quiz});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int result = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Continue";
  bool answered = false;
  int startGameTime = DateTime.now().millisecondsSinceEpoch;
  bool isWin = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  int endTime() {
    final int levelCountdownTimer =
        widget.quiz.minutes * 60 * 1000 + widget.quiz.seconds * 1000;
    final int timeLeft = levelCountdownTimer -
        (DateTime.now().millisecondsSinceEpoch - startGameTime);
    return DateTime.now().millisecondsSinceEpoch + timeLeft;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          isWin = true;
                          context.router.pop();
                        },
                        child: SvgPicture.asset(
                            'assets/images/elements/arrow-back.svg'),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                        width: 300,
                        decoration: BoxDecoration(
                            color: AppColors.grey,
                            border:
                                Border.all(color: AppColors.green, width: 2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0))),
                        child: Text(
                          widget.quiz.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView.builder(
                    controller: _controller!,
                    onPageChanged: (page) {
                      if (page == widget.quiz.quiz.length - 1) {
                        setState(() {
                          btnText = "Choose Next Quiz";
                        });
                      }
                      setState(() {
                        answered = false;
                      });
                    },
                    physics: new NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18.0))),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Questions: ',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "${index + 1}/${widget.quiz.questionCount}",
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
                                Container(
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      border:
                                          Border.all(color: Colors.transparent),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(18.0))),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          'assets/images/elements/timer.svg'),
                                      SizedBox(width: 5),
                                      Text(
                                        'Time: ',
                                        style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 100,
                                        child: CountdownTimer(
                                          endWidget: Center(
                                              child: Text(
                                            '00 : 00 : 00',
                                            style: TextStyle(
                                              color: AppColors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          )),
                                          textStyle: TextStyle(
                                            color: AppColors.green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          endTime: endTime(),
                                          onEnd: () {
                                            if (isWin = false) {
                                              context.router.push(FailQuizRoute(
                                                  quiz: widget.quiz,
                                                  result: result));
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(23),
                                child: Image.asset(
                                  widget.quiz.quiz[index].image,
                                  fit: BoxFit.cover,
                                  height: 200,
                                  width: double.infinity,
                                )),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                "${widget.quiz.quiz[index].question}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            for (int i = 0;
                                i < widget.quiz.quiz[index].answers!.length;
                                i++)
                              Container(
                                width: double.infinity,
                                child: RawMaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  fillColor: btnPressed
                                      ? widget.quiz.quiz[index].answers!.values
                                              .toList()[i]
                                          ? AppColors.green
                                          : AppColors.red
                                      : AppColors.grey,
                                  onPressed: !answered
                                      ? () {
                                          if (widget
                                              .quiz.quiz[index].answers!.values
                                              .toList()[i]) {
                                            result++;
                                            print(result);
                                          } else {
                                            print(result);
                                          }
                                          setState(() {
                                            btnPressed = true;
                                            answered = true;
                                          });
                                        }
                                      : null,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12.0),
                                    child: Text(
                                        widget.quiz.quiz[index].answers!.keys
                                            .toList()[i],
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w700,
                                        )),
                                  ),
                                ),
                              ),
                            ActionButtonWidget(
                              text: btnText,
                              color: AppColors.green,
                              width: 300,
                              onTap: () {
                                if (_controller!.page?.toInt() ==
                                    widget.quiz.quiz.length - 1) {
                                  isWin = true;
                                  final int _timeSpendInt =
                                      DateTime.now().millisecondsSinceEpoch -
                                          startGameTime;
                                  final Duration _timeSpend =
                                      Duration(milliseconds: _timeSpendInt);
                                  context.router.push(CompleteQuizRoute(
                                      result: result,
                                      quiz: widget.quiz,
                                      timeSpend:
                                          '${_timeSpend.inMinutes.toString()}:${_timeSpend.inSeconds.toString()}'));
                                } else {
                                  _controller!.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease);
                                  setState(() {
                                    btnPressed = false;
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: widget.quiz.quiz.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
