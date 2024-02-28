import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/puzzle_model.dart';
import 'package:DK_app/repository/basketball_puzzle_repository.dart';
import 'package:DK_app/repository/football_puzzle_repository.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:DK_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class CompletePuzzleScreen extends StatefulWidget {
  final PuzzleModel puzzle;
  final String title;
  final String timeSpend;

  const CompletePuzzleScreen(
      {super.key,
      required this.puzzle,
      required this.timeSpend,
      required this.title});

  @override
  State<CompletePuzzleScreen> createState() => _CompletePuzzleScreenState();
}

class _CompletePuzzleScreenState extends State<CompletePuzzleScreen> {
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
                  'puzzle completed'.toUpperCase(),
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
                        "${widget.timeSpend}",
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
                Column(
                  children: [
                    ActionButtonWidget(
                        text: 'Next Puzzle',
                        color: AppColors.green,
                        width: 220,
                        onTap: () {
                          switch (widget.title) {
                            case 'Basketball Puzzle':
                              if (basketballPuzzleRepository
                                  .indexOf(widget.puzzle) == basketballPuzzleRepository.length-1) {
                                context.router.push(PuzzleRoute(
                                    puzzle:
                                    basketballPuzzleRepository[0],
                                    title: widget.title));
                              } else {
                                int _nextPuzzle = basketballPuzzleRepository
                                    .indexOf(widget.puzzle) +
                                    1;
                                context.router.push(PuzzleRoute(
                                    puzzle:
                                    basketballPuzzleRepository[_nextPuzzle],
                                    title: widget.title));
                              }
                            case 'Football Puzzle':

                              if (footballPuzzleRepository
                                  .indexOf(widget.puzzle) == footballPuzzleRepository.length-1) {
                                context.router.push(PuzzleRoute(
                                    puzzle: footballPuzzleRepository[0],
                                    title: widget.title));
                              } else {
                                int _nextPuzzle = footballPuzzleRepository
                                    .indexOf(widget.puzzle) +
                                    1;
                                context.router.push(PuzzleRoute(
                                    puzzle: footballPuzzleRepository[_nextPuzzle],
                                    title: widget.title));
                              }
                          }
                        }),
                    SizedBox(height: 15),
                    ActionButtonWidget(
                        text: 'Play Again',
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
