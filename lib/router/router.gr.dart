// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AboutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AboutScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfileScreen(data: args.data),
      );
    },
    CompletePuzzleRoute.name: (routeData) {
      final args = routeData.argsAs<CompletePuzzleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CompletePuzzleScreen(
          key: args.key,
          puzzle: args.puzzle,
          timeSpend: args.timeSpend,
          title: args.title,
        ),
      );
    },
    CompleteQuizRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteQuizRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CompleteQuizScreen(
          key: args.key,
          quiz: args.quiz,
          timeSpend: args.timeSpend,
          result: args.result,
        ),
      );
    },
    FailPuzzleRoute.name: (routeData) {
      final args = routeData.argsAs<FailPuzzleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FailPuzzleScreen(
          key: args.key,
          puzzle: args.puzzle,
          title: args.title,
        ),
      );
    },
    FailQuizRoute.name: (routeData) {
      final args = routeData.argsAs<FailQuizRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: FailQuizScreen(
          key: args.key,
          quiz: args.quiz,
          result: args.result,
        ),
      );
    },
    LoadingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoadingScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    NewsInfoRoute.name: (routeData) {
      final args = routeData.argsAs<NewsInfoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsInfoScreen(
          key: args.key,
          news: args.news,
        ),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    PuzzleRoute.name: (routeData) {
      final args = routeData.argsAs<PuzzleRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PuzzleScreen(
          key: args.key,
          puzzle: args.puzzle,
          title: args.title,
        ),
      );
    },
    QuizRoute.name: (routeData) {
      final args = routeData.argsAs<QuizRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: QuizScreen(
          key: args.key,
          quiz: args.quiz,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsScreen(),
      );
    },
  };
}

/// generated route for
/// [AboutScreen]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
      : super(
          AboutRoute.name,
          initialChildren: children,
        );

  static const String name = 'AboutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CompletePuzzleScreen]
class CompletePuzzleRoute extends PageRouteInfo<CompletePuzzleRouteArgs> {
  CompletePuzzleRoute({
    Key? key,
    required PuzzleModel puzzle,
    required String timeSpend,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          CompletePuzzleRoute.name,
          args: CompletePuzzleRouteArgs(
            key: key,
            puzzle: puzzle,
            timeSpend: timeSpend,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'CompletePuzzleRoute';

  static const PageInfo<CompletePuzzleRouteArgs> page =
      PageInfo<CompletePuzzleRouteArgs>(name);
}

class CompletePuzzleRouteArgs {
  const CompletePuzzleRouteArgs({
    this.key,
    required this.puzzle,
    required this.timeSpend,
    required this.title,
  });

  final Key? key;

  final PuzzleModel puzzle;

  final String timeSpend;

  final String title;

  @override
  String toString() {
    return 'CompletePuzzleRouteArgs{key: $key, puzzle: $puzzle, timeSpend: $timeSpend, title: $title}';
  }
}

/// generated route for
/// [CompleteQuizScreen]
class CompleteQuizRoute extends PageRouteInfo<CompleteQuizRouteArgs> {
  CompleteQuizRoute({
    Key? key,
    required QuizModel quiz,
    required String timeSpend,
    required int result,
    List<PageRouteInfo>? children,
  }) : super(
          CompleteQuizRoute.name,
          args: CompleteQuizRouteArgs(
            key: key,
            quiz: quiz,
            timeSpend: timeSpend,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteQuizRoute';

  static const PageInfo<CompleteQuizRouteArgs> page =
      PageInfo<CompleteQuizRouteArgs>(name);
}

class CompleteQuizRouteArgs {
  const CompleteQuizRouteArgs({
    this.key,
    required this.quiz,
    required this.timeSpend,
    required this.result,
  });

  final Key? key;

  final QuizModel quiz;

  final String timeSpend;

  final int result;

  @override
  String toString() {
    return 'CompleteQuizRouteArgs{key: $key, quiz: $quiz, timeSpend: $timeSpend, result: $result}';
  }
}

/// generated route for
/// [FailPuzzleScreen]
class FailPuzzleRoute extends PageRouteInfo<FailPuzzleRouteArgs> {
  FailPuzzleRoute({
    Key? key,
    required PuzzleModel puzzle,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          FailPuzzleRoute.name,
          args: FailPuzzleRouteArgs(
            key: key,
            puzzle: puzzle,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'FailPuzzleRoute';

  static const PageInfo<FailPuzzleRouteArgs> page =
      PageInfo<FailPuzzleRouteArgs>(name);
}

class FailPuzzleRouteArgs {
  const FailPuzzleRouteArgs({
    this.key,
    required this.puzzle,
    required this.title,
  });

  final Key? key;

  final PuzzleModel puzzle;

  final String title;

  @override
  String toString() {
    return 'FailPuzzleRouteArgs{key: $key, puzzle: $puzzle, title: $title}';
  }
}

/// generated route for
/// [FailQuizScreen]
class FailQuizRoute extends PageRouteInfo<FailQuizRouteArgs> {
  FailQuizRoute({
    Key? key,
    required QuizModel quiz,
    required int result,
    List<PageRouteInfo>? children,
  }) : super(
          FailQuizRoute.name,
          args: FailQuizRouteArgs(
            key: key,
            quiz: quiz,
            result: result,
          ),
          initialChildren: children,
        );

  static const String name = 'FailQuizRoute';

  static const PageInfo<FailQuizRouteArgs> page =
      PageInfo<FailQuizRouteArgs>(name);
}

class FailQuizRouteArgs {
  const FailQuizRouteArgs({
    this.key,
    required this.quiz,
    required this.result,
  });

  final Key? key;

  final QuizModel quiz;

  final int result;

  @override
  String toString() {
    return 'FailQuizRouteArgs{key: $key, quiz: $quiz, result: $result}';
  }
}

/// generated route for
/// [LoadingScreen]
class LoadingRoute extends PageRouteInfo<void> {
  const LoadingRoute({List<PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsInfoScreen]
class NewsInfoRoute extends PageRouteInfo<NewsInfoRouteArgs> {
  NewsInfoRoute({
    Key? key,
    required NewsModel news,
    List<PageRouteInfo>? children,
  }) : super(
          NewsInfoRoute.name,
          args: NewsInfoRouteArgs(
            key: key,
            news: news,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsInfoRoute';

  static const PageInfo<NewsInfoRouteArgs> page =
      PageInfo<NewsInfoRouteArgs>(name);
}

class NewsInfoRouteArgs {
  const NewsInfoRouteArgs({
    this.key,
    required this.news,
  });

  final Key? key;

  final NewsModel news;

  @override
  String toString() {
    return 'NewsInfoRouteArgs{key: $key, news: $news}';
  }
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// Generated route for the Profile screen.
class ProfileRoute extends PageRouteInfo<ProfileRouteArgs> {
  /// Constructs the ProfileRoute.
  ProfileRoute({required ProfileRouteArgs args}) : super(name, args: args);

  /// The name of the route.
  static const String name = 'ProfileRoute';

  /// Information about the ProfileRoute page.
  static const PageInfo<ProfileRouteArgs> page =
      PageInfo<ProfileRouteArgs>(name);
}

/// Arguments holder class for ProfileRoute.
class ProfileRouteArgs {
  /// The data to be passed to the profile screen.
  final String data;

  /// Constructs the ProfileRouteArgs.
  ProfileRouteArgs({required this.data});
}

/// generated route for
/// [PuzzleScreen]
class PuzzleRoute extends PageRouteInfo<PuzzleRouteArgs> {
  PuzzleRoute({
    Key? key,
    required PuzzleModel puzzle,
    required String title,
    List<PageRouteInfo>? children,
  }) : super(
          PuzzleRoute.name,
          args: PuzzleRouteArgs(
            key: key,
            puzzle: puzzle,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'PuzzleRoute';

  static const PageInfo<PuzzleRouteArgs> page = PageInfo<PuzzleRouteArgs>(name);
}

class PuzzleRouteArgs {
  const PuzzleRouteArgs({
    this.key,
    required this.puzzle,
    required this.title,
  });

  final Key? key;

  final PuzzleModel puzzle;

  final String title;

  @override
  String toString() {
    return 'PuzzleRouteArgs{key: $key, puzzle: $puzzle, title: $title}';
  }
}

/// generated route for
/// [QuizScreen]
class QuizRoute extends PageRouteInfo<QuizRouteArgs> {
  QuizRoute({
    Key? key,
    required QuizModel quiz,
    List<PageRouteInfo>? children,
  }) : super(
          QuizRoute.name,
          args: QuizRouteArgs(
            key: key,
            quiz: quiz,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizRoute';

  static const PageInfo<QuizRouteArgs> page = PageInfo<QuizRouteArgs>(name);
}

class QuizRouteArgs {
  const QuizRouteArgs({
    this.key,
    required this.quiz,
  });

  final Key? key;

  final QuizModel quiz;

  @override
  String toString() {
    return 'QuizRouteArgs{key: $key, quiz: $quiz}';
  }
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
