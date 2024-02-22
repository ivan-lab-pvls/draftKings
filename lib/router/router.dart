import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/models/puzzle_model.dart';
import 'package:draftkings_app/models/quiz_model.dart';
import 'package:draftkings_app/screens/loading/loading_screen.dart';
import 'package:draftkings_app/screens/main/main_screen.dart';
import 'package:draftkings_app/screens/news/news_info/news_info_screen.dart';
import 'package:draftkings_app/screens/onboarding/onboarding_screen.dart';
import 'package:draftkings_app/models/news_model.dart';
import 'package:draftkings_app/screens/puzzle/puzzle_screen.dart';
import 'package:draftkings_app/screens/quiz/complete_quiz_screen.dart';
import 'package:draftkings_app/screens/quiz/fail_quiz_screen.dart';
import 'package:draftkings_app/screens/quiz/quiz_screen.dart';
import 'package:draftkings_app/screens/settings/about_screen.dart';
import 'package:draftkings_app/screens/settings/settings_screen.dart';

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
    AutoRoute(page: CompleteQuizRoute.page),
    AutoRoute(page: FailQuizRoute.page),
    AutoRoute(page: PuzzleRoute.page),

  ];
}