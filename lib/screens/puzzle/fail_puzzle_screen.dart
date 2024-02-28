import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/puzzle_model.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:DK_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class FailPuzzleScreen extends StatefulWidget {
  final PuzzleModel puzzle;
  final String title;

  const FailPuzzleScreen({super.key, required this.puzzle, required this.title});

  @override
  State<FailPuzzleScreen> createState() => _FailPuzzleScreenState();
}

class _FailPuzzleScreenState extends State<FailPuzzleScreen> {
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
                  'you lose'.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: 220,
                  decoration: BoxDecoration(
                      color: AppColors.grey,
                      border: Border.all(color: AppColors.green, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(18.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/elements/timer.svg', color: AppColors.lightGrey,),
                      SizedBox(width: 5),
                      Text(
                        'Time spent: ',
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "00:00",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.lightGrey,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ActionButtonWidget(
                        text: 'Restart Game',
                        color: AppColors.green,
                        width: 220,
                        onTap: () {
                          context.router.push(PuzzleRoute(
                              puzzle: widget.puzzle, title: widget.title));
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
