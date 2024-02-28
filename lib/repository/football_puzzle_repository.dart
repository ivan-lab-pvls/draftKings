import 'package:DK_app/models/puzzle_model.dart';
import 'package:DK_app/models/puzzle_pieces_model.dart';

final List<PuzzleModel> footballPuzzleRepository = [
  PuzzleModel(
      image: 'assets/images/puzzle/football/1/full-1.png',
      number: 0,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/1/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/2/full-2.png',
      number: 1,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/2/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/3/full-3.png',
      number: 2,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/3/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/4/full-4.png',
      number: 3,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/4/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/5/full-5.png',
      number: 4,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/5/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/6/full-6.png',
      number: 5,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/6/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/7/full-7.png',
      number: 6,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/7/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/8/full-8.png',
      number: 7,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/8/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/9/full-9.png',
      number: 8,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/9/${i+1}.png'))),
  PuzzleModel(
      image: 'assets/images/puzzle/football/10/full-10.png',
      number: 9,
      minutes: 2,
      seconds: 0,
      puzzlePieces: List<PuzzlePieceModel>.generate(
          16, (i) => PuzzlePieceModel(index: i, pieces: 'assets/images/puzzle/football/10/${i+1}.png'))),
];
