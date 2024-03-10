import 'package:DK_app/screens/settings/profile.dart';
import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/puzzle_model.dart';
import 'package:DK_app/models/quiz_model.dart';
import 'package:DK_app/screens/loading/loading_screen.dart';
import 'package:DK_app/screens/main/main_screen.dart';
import 'package:DK_app/screens/news/news_info/news_info_screen.dart';
import 'package:DK_app/screens/onboarding/onboarding_screen.dart';
import 'package:DK_app/models/news_model.dart';
import 'package:DK_app/screens/puzzle/complete_puzzle_screen.dart';
import 'package:DK_app/screens/puzzle/fail_puzzle_screen.dart';
import 'package:DK_app/screens/puzzle/puzzle_screen.dart';
import 'package:DK_app/screens/quiz/complete_quiz_screen.dart';
import 'package:DK_app/screens/quiz/fail_quiz_screen.dart';
import 'package:DK_app/screens/quiz/quiz_screen.dart';
import 'package:DK_app/screens/settings/about_screen.dart';
import 'package:DK_app/screens/settings/settings_screen.dart';

import 'package:flutter/material.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoadingRoute.page, initial: true),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: MainRoute.page),
        AutoRoute(page: NewsInfoRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: AboutRoute.page),
        AutoRoute(page: QuizRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: CompleteQuizRoute.page),
        AutoRoute(page: FailQuizRoute.page),
        AutoRoute(page: PuzzleRoute.page),
        AutoRoute(page: CompletePuzzleRoute.page),
        AutoRoute(page: FailPuzzleRoute.page),
      ];
}
