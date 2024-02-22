import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/models/puzzle_model.dart';
import 'package:draftkings_app/repository/basketball_puzzle_repository.dart';
import 'package:draftkings_app/router/router.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';

class BasketballPuzzlesTab extends StatefulWidget {
  const BasketballPuzzlesTab({super.key});

  @override
  State<BasketballPuzzlesTab> createState() => _BasketballPuzzlesTabState();
}

class _BasketballPuzzlesTabState extends State<BasketballPuzzlesTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: basketballPuzzleRepository.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              final PuzzleModel _puzzle = basketballPuzzleRepository[index];
              return GestureDetector(
                onTap: () {
                  context.router.push(PuzzleRoute(puzzle: _puzzle, title: 'Basketball Puzzle'));
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
