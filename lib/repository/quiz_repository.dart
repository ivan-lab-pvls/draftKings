import 'package:draftkings_app/models/question_model.dart';
import 'package:draftkings_app/models/quiz_model.dart';

final List<QuizModel> quizRepository = [
  QuizModel(
    title: 'Rules and History Of Basketball Quiz',
    image: 'assets/images/quiz/quiz-1.png',
    minutes: 2,
    seconds: 0,
    questionCount: 10,
    result: 0,
    quiz: [
      QuestionModel(
        question: 'How high is the regulation goal in the game of basketball?',
        image: 'assets/images/quiz/quiz-1/1.png',
        answers: {
          '6 feet': false,
          '8 feet': false,
          '10 feet': true,
          '11 and a half feet': false,
        },
      ),
      QuestionModel(
        question: 'How many total players are on the basketball court at one time during a game?',
        image: 'assets/images/quiz/quiz-1/2.jpeg',
        answers: {
          '10 players': true,
          '12 players': false,
          '5 players': false,
          '6 players': false,
        },
      ),
      QuestionModel(
        question: 'How many points is a free throw worth?',
        image: 'assets/images/quiz/quiz-1/3.jpeg',
        answers: {
          '2 points': false,
          '1 points': true,
          '3 points': false,
          '4 points': false,
        },
      ),
      QuestionModel(
        question: 'How many points are awarded when a shot inside the paint is made?',
        image: 'assets/images/quiz/quiz-1/4.jpeg',
        answers: {
          '2 points': true,
          '1 points': false,
          '3 points': false,
          '4 points': false,
        },
      ),
      QuestionModel(
        question: 'When basketball was first made, which were used as the goals?',
        image: 'assets/images/quiz/quiz-1/5.jpeg',
        answers: {
          'square boxes': false,
          'hoops': false,
          'peach baskets': true,
          'metal containers': false,
        },
      ),
      QuestionModel(
        question: 'A flagrant foul is a __________ ?',
        image: 'assets/images/quiz/quiz-1/6.jpeg',
        answers: {
          'tripping foul': false,
          'moving screen foul': false,
          'regular foul': false,
          'foul made purposely for harm': true,
        },
      ),
      QuestionModel(
        question: 'In the NBA, how long may a defensive player stand in the paint without guarding anyone?',
        image: 'assets/images/quiz/quiz-1/7.jpeg',
        answers: {
          'forever': false,
          '7 seconds': false,
          '5 seconds': false,
          '3 seconds': true,
        },
      ),
      QuestionModel(
        question: 'The player that brings the ball down court and runs the offense is called the ________ .',
        image: 'assets/images/quiz/quiz-1/8.jpeg',
        answers: {
          'post defence': false,
          'point guard': true,
          'center forward': false,
          'right wing': false,
        },
      ),
      QuestionModel(
        question: 'In a regulation game of basketball, what is the least difference of points needed to win a game?',
        image: 'assets/images/quiz/quiz-1/9.jpeg',
        answers: {
          '0 points': false,
          '2 points': false,
          '1 points': true,
          '3 points': false,
        },
      ),
      QuestionModel(
        question: 'Basketball was created by a YMCA teacher to keep athletes fit during the winter months.',
        image: 'assets/images/quiz/quiz-1/10.jpeg',
        answers: {
          'True': true,
          'False': false,
        },
      ),
    ],
  ),

  QuizModel(
    title: 'NFL Teams Trivia Quiz',
    image: 'assets/images/quiz/quiz-2.png',
    minutes: 2,
    seconds: 0,
    questionCount: 10,
    result: 0,
    quiz: [
      QuestionModel(
        question: 'This team features a lightning bolt on its helmet.',
        image: 'assets/images/quiz/quiz-2/1.png',
        answers: {
          'New England Patriots': false,
          'Seattle Seahawks': false,
          'Baltimore Ravens': false,
          'Los Angeles Chargers': true,
        },
      ),
      QuestionModel(
        question: 'Los Angeles Chargers',
        image: 'assets/images/quiz/quiz-2/2.jpeg',
        answers: {
          'Minnesota Vikings': true,
          'Baltimore Ravens': false,
          'Green Bay Packers': false,
          'There is no team with this color scheme': false,
        },
      ),
      QuestionModel(
        question: 'This team has a shiny silver helmet, and their mascot is a big cat!',
        image: 'assets/images/quiz/quiz-2/3.jpeg',
        answers: {
          'Carolina Panthers': true,
          'New York Jets': false,
          'Green Bay Packers': false,
          'Dallas Cowboys': false,
        },
      ),
      QuestionModel(
        question: 'This team is named after its first coach.',
        image: 'assets/images/quiz/quiz-2/4.jpeg',
        answers: {
          'Tampa Bay Buccaneers': false,
          'San Francisco 49ers': false,
          'Cleveland Browns': true,
          'New York Giants': false,
        },
      ),
      QuestionModel(
        question: 'This team shares a logo with the University of Georgia.',
        image: 'assets/images/quiz/quiz-2/5.jpeg',
        answers: {
          'Washington Redskins': false,
          'Green Bay Packers': true,
          'Arizona Cardinals': false,
          'Kansas City Chiefs': false,
        },
      ),
      QuestionModel(
        question: 'This team got their name from a poem!',
        image: 'assets/images/quiz/quiz-2/6.jpeg',
        answers: {
          'Baltimore Ravens': true,
          'Detroit Lions': false,
          'Chicago Bears': false,
          'Oakland Raiders': false,
        },
      ),
      QuestionModel(
        question: 'This team\'s logo is the head of a bird.',
        image: 'assets/images/quiz/quiz-2/7.jpeg',
        answers: {
          'Miami Dolphins': false,
          'Chicago Bears': false,
          'Philadelphia Eagles': true,
          'New York Giants': false,
        },
      ),
      QuestionModel(
        question: 'This team gets their name from Greek myth.',
        image: 'assets/images/quiz/quiz-2/8.jpeg',
        answers: {
          'Tampa Bay Buccaneers': false,
          'Indianapolis Colts': false,
          'New Orleans Saints': false,
          'Tennessee Titans': true,
        },
      ),
      QuestionModel(
        question: 'Two of this team\'s colors are teal and orange.',
        image: 'assets/images/quiz/quiz-2/9.jpeg',
        answers: {
          'Buffalo Bills': false,
          'Jacksonville Jaguars': false,
          'Miami Dolphins': true,
          'Chicago Bears': false,
        },
      ),
      QuestionModel(
        question: 'This team has a red bird as its logo.',
        image: 'assets/images/quiz/quiz-2/10.jpeg',
        answers: {
          'Arizona Cardinals': true,
          'Houston Texans': false,
          'Seattle Seahawks': false,
          'Oakland Raiders': false,
        },
      ),
    ],
  ),

  QuizModel(
    title: 'American Football The Basics Trivia Quiz',
    image: 'assets/images/quiz/quiz-3.png',
    minutes: 2,
    seconds: 0,
    questionCount: 10,
    result: 0,
    quiz: [
      QuestionModel(
        question: 'Which one of the following is not a position in football?',
        image: 'assets/images/quiz/quiz-3/1.png',
        answers: {
          'Fullback': false,
          'Halfback': false,
          'Quarterback': false,
          'Doubleback': true,
        },
      ),
      QuestionModel(
        question: 'Which one of these numbers would be LEAST likely to be worn by a runningback in the NFL?',
        image: 'assets/images/quiz/quiz-3/2.jpeg',
        answers: {
          '21': false,
          '43': false,
          '12': true,
          '32': false,
        },
      ),
      QuestionModel(
        question: 'Which one of these is NOT a defensive position?',
        image: 'assets/images/quiz/quiz-3/3.jpeg',
        answers: {
          'Safety': false,
          'Cornerback': false,
          'Linebacker': false,
          'Center': true,
        },
      ),
      QuestionModel(
        question: 'What is it called when players rush at the quarterback and try to pressure him?',
        image: 'assets/images/quiz/quiz-3/4.jpeg',
        answers: {
          'Cover': false,
          'Hail Mary': false,
          'Blitz': true,
          'Touchdown': false,
        },
      ),
      QuestionModel(
        question: 'What is it called when a player drops the ball? ',
        image: 'assets/images/quiz/quiz-3/5.jpeg',
        answers: {
          'Safety': false,
          'Interception': false,
          'Fumble': true,
          'Sack': false,
        },
      ),
      QuestionModel(
        question: 'What are the two conferences in the NFL?',
        image: 'assets/images/quiz/quiz-3/6.jpeg',
        answers: {
          'NFA and AFA': false,
          'Atlantic and Pacific': false,
          'Western and Eastern': false,
          'AFC and NFC': true,
        },
      ),
      QuestionModel(
        question: 'How many points would you have if you made two touchdowns, missed one extra point, made three field goals, and a safety?',
        image: 'assets/images/quiz/quiz-3/7.jpeg',
        answers: {
          '35': false,
          '88': false,
          '60': false,
          '24': true,
        },
      ),
      QuestionModel(
        question: 'Which one of these teams has NEVER been an NFL team?',
        image: 'assets/images/quiz/quiz-3/8.jpeg',
        answers: {
          'Houston Oilers': false,
          'Los Angeles Rams': false,
          'Minneapolis Lakers': true,
          'Green Bay Packers': false,
        },
      ),
      QuestionModel(
        question: 'What is name of the trophy that the Super Bowl winners receive?',
        image: 'assets/images/quiz/quiz-3/9.jpeg',
        answers: {
          'The Football Champion\'s Trophy': false,
          'Stanley Cup': false,
          'Lombardi Trophy': true,
          'Davis Cup': false,
        },
      ),
      QuestionModel(
        question: 'Which hall of fame quarterback led the Denver Broncos to five Super Bowls and won two of them?',
        image: 'assets/images/quiz/quiz-3/10.jpeg',
        answers: {
          'Brett Favre': false,
          'John Elway': true,
          'Joe Montana': false,
          'Terry Bradshaw': false,
        },
      ),
    ],
  ),
];
