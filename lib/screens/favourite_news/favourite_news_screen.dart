import 'package:DK_app/screens/favourite_news/tabs/favourite_basketball_news_tab.dart';
import 'package:DK_app/screens/favourite_news/tabs/favourite_football_news_tab.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:flutter/material.dart';

class FavouriteNewsScreen extends StatefulWidget {
  const FavouriteNewsScreen({super.key});

  @override
  State<FavouriteNewsScreen> createState() => _FavouriteNewsScreenState();
}

class _FavouriteNewsScreenState extends State<FavouriteNewsScreen> {

  final List<Widget> _tabs = [
    FavouriteBasketballNewsTab(),
    FavouriteFootballNewsTab(),
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
