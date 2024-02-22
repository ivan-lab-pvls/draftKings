import 'package:draftkings_app/models/puzzle_pieces_model.dart';

class PuzzleModel {
  final String image;
  final int number;
  final int minutes;
  final int seconds;
  final List<PuzzlePieceModel> puzzlePieces;

  PuzzleModel({
    required this.image,
    required this.number,
    required this.minutes,
    required this.puzzlePieces,
    required this.seconds,
  });
}
