import 'package:auto_route/auto_route.dart';
import 'package:draftkings_app/screens/favourite_news/favourite_news_screen.dart';
import 'package:draftkings_app/screens/news/news_screen.dart';
import 'package:draftkings_app/screens/puzzle/puzzle_list_screen.dart';
import 'package:draftkings_app/screens/quiz/quiz_list_screen.dart';
import 'package:draftkings_app/screens/settings/settings_screen.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _tabController = TabController(length: 5, vsync: this);

  final List<Widget> _tabs = [
    NewsScreen(),
    FavouriteNewsScreen(),
    QuizListScreen(),
    PuzzleListScreen(),
    SettingsScreen(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.grey,
        appBar: AppBar(
          toolbarHeight: 10,
          backgroundColor: AppColors.grey,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            controller: _tabController,
            dividerColor: AppColors.grey,
            indicatorColor: AppColors.green,
            labelColor: AppColors.green,
            unselectedLabelColor: AppColors.lightGrey,
            tabs: [
              Tab(
                  child: SvgPicture.asset(
                'assets/images/elements/news-tab.svg',
                color: _tabController.index == 0
                    ? AppColors.green
                    : AppColors.lightGrey,
              )),
              Tab(
                  child: SvgPicture.asset(
                'assets/images/elements/fav-tab.svg',
                color: _tabController.index == 1
                    ? AppColors.green
                    : AppColors.lightGrey,
              )),
              Tab(
                  child: SvgPicture.asset(
                'assets/images/elements/quiz-tab.svg',
                color: _tabController.index == 2
                    ? AppColors.green
                    : AppColors.lightGrey,
              )),
              Tab(
                  child: SvgPicture.asset(
                'assets/images/elements/puzzle-tab.svg',
                color: _tabController.index == 3
                    ? AppColors.green
                    : AppColors.lightGrey,
              )),
              Tab(
                  child: SvgPicture.asset(
                'assets/images/elements/settings-tab.svg',
                color: _tabController.index == 4
                    ? AppColors.green
                    : AppColors.lightGrey,
              )),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: _tabs,
        ),
      ),
    );
  }
}
