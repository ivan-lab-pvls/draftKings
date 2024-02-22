import 'package:draftkings_app/screens/puzzle/tabs/basketball_puzzles_tab.dart';
import 'package:draftkings_app/screens/puzzle/tabs/football_puzzles_tab.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';

class PuzzleListScreen extends StatefulWidget {
  const PuzzleListScreen({super.key});

  @override
  State<PuzzleListScreen> createState() => _PuzzleListScreenState();
}

class _PuzzleListScreenState extends State<PuzzleListScreen> {
  final List<Widget> _tabs = [
    BasketballPuzzlesTab(),
    FootballPuzzlesTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.black,
        appBar: AppBar(
            toolbarHeight: 120,
            backgroundColor: AppColors.black,
            automaticallyImplyLeading: false,
            title: Column(
              children: [
                Text(
                  'Select Puzzle'.toUpperCase(),
                  style: TextStyle(
                    color: AppColors.green,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.grey,
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(100.0))),
                  child: TabBar(
                    dividerColor: Colors.transparent,
                    indicatorColor: AppColors.green,
                    labelColor: AppColors.green,
                    unselectedLabelColor: AppColors.lightGrey,
                    tabs: [
                      Tab(text: 'Basketball'),
                      Tab(text: 'American Football'),
                    ],
                  ),
                ),
              ],
            )
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
