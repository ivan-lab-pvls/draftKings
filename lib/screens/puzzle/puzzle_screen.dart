import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/models/puzzle_model.dart';
import 'package:draftkings_app/models/puzzle_pieces_model.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:draftkings_app/widgets/action_button_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:flutter_svg/flutter_svg.dart';


@RoutePage()
class PuzzleScreen extends StatefulWidget {
  final String title;
  final PuzzleModel puzzle;

  const PuzzleScreen({super.key, required this.puzzle, required this.title});

  @override
  State<PuzzleScreen> createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends State<PuzzleScreen> {
  List<PuzzlePieceModel> currentSequence = [];
  List<PuzzlePieceModel> puzzlePieces = [];
  List<PuzzlePieceModel> correctSequence = [];

  int startGameTime = DateTime.now().millisecondsSinceEpoch;
  bool isWin = false;

  int selectedPieceIndex = -1;

  @override
  void initState() {
    initialPuzzle();
    currentSequence = puzzlePieces.toList()..shuffle();
    correctSequence = puzzlePieces.toList()..sort((a, b) => a.index.compareTo(b.index));
    super.initState();
  }

  void initialPuzzle() {
    puzzlePieces = widget.puzzle.puzzlePieces;
  }

  void shuffleSequence() {
    currentSequence..shuffle();
    setState(() {});
  }

  void checkSequence() {
    if (listEquals(currentSequence, correctSequence)) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Congratulations!'),
            content: Text('You solved the puzzle!'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }


  void swapPieces(int index1, int index2) {
    List<PuzzlePieceModel> newSequence = List.from(currentSequence);
    PuzzlePieceModel temp = newSequence[index1];
    newSequence[index1] = newSequence[index2];
    newSequence[index2] = temp;
    setState(() {
      currentSequence = newSequence;
      checkSequence();
    });
  }

  int endTime() {
    final int levelCountdownTimer =
        widget.puzzle.minutes * 60 * 1000 + widget.puzzle.seconds * 1000;
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
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                    EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    width: 250,
                    decoration: BoxDecoration(
                        color: AppColors.grey,
                        border:
                        Border.all(color: AppColors.green, width: 2),
                        borderRadius:
                        BorderRadius.all(Radius.circular(12.0))),
                    child: Text(
                      widget.title,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                              // if (isWin = false) {
                              //   context.router.push(FailQuizRoute(
                              //       quiz: widget.quiz,
                              //       result: result));
                              // }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 165,
                height: 165,
                decoration: BoxDecoration(
                    color: AppColors.grey,
                    border: Border.all(color: AppColors.white, width: 6),
                    borderRadius: BorderRadius.all(Radius.circular(12.0))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(widget.puzzle.image),
                ),
              ),
              ActionButtonWidget(text: 'Shuffle', color: AppColors.green, width: 250, onTap: () {
                shuffleSequence();
              }),
              Container(
                padding: EdgeInsets.all(10),
                color:AppColors.grey,
                height: 350,
                width: 350,
                child: Center(
                  child: GridView.builder(
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemCount: currentSequence.length,
                    itemBuilder: (context, index) {
                      PuzzlePieceModel piece = currentSequence[index];
                      return GestureDetector(
                        onTap: () {
                          if (selectedPieceIndex == -1) {
                            setState(() {
                              selectedPieceIndex = index;
                            });
                          } else {
                            if (selectedPieceIndex != index) {
                              swapPieces(selectedPieceIndex, index);
                            }
                            setState(() {
                              selectedPieceIndex = -1;
                            });
                          }
                        },
                        child: Container(
                          margin: EdgeInsets.all(2),
                          color: Colors.white,
                          child: Center(
                            child: Image.asset(piece.pieces),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
