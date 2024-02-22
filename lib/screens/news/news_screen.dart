import 'package:draftkings_app/screens/news/tabs/basketball_news_tab.dart';
import 'package:draftkings_app/screens/news/tabs/football_news_tab.dart';
import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final List<Widget> _tabs = [
    BasketballNewsTab(),
    FootballNewsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        backgroundColor: AppColors.grey,
        appBar: AppBar(
          toolbarHeight: 90,
          backgroundColor: AppColors.black,
          automaticallyImplyLeading: false,
          title: Container(
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
          )
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
