import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/puzzle_model.dart';
import 'package:DK_app/repository/football_puzzle_repository.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:flutter/material.dart';

class FootballPuzzlesTab extends StatefulWidget {
  const FootballPuzzlesTab({super.key});

  @override
  State<FootballPuzzlesTab> createState() => _FootballPuzzlesTabState();
}

class _FootballPuzzlesTabState extends State<FootballPuzzlesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: footballPuzzleRepository.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              final PuzzleModel _puzzle = footballPuzzleRepository[index];
              return GestureDetector(
                onTap: () {
                  context.router.push(PuzzleRoute(puzzle: _puzzle, title: 'Football Puzzle'));
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.grey,
                      border: Border.all(color: AppColors.white, width: 6),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(_puzzle.image),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
