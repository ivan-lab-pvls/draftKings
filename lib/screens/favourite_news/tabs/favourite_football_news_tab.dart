import 'package:auto_route/auto_route.dart';
import 'package:DK_app/models/news_model.dart';
import 'package:DK_app/repository/football_news_repository.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/screens/news/widgets/news_card_widget.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:flutter/material.dart';

class FavouriteFootballNewsTab extends StatefulWidget {
  const FavouriteFootballNewsTab({super.key});

  @override
  State<FavouriteFootballNewsTab> createState() => _FavouriteFootballNewsTabState();
}

class _FavouriteFootballNewsTabState extends State<FavouriteFootballNewsTab> {

  List<NewsModel> _favouriteNews() {
    List<NewsModel> favouriteNews = [];

    for (NewsModel news in footballNewsRepository) {
      if (news.isFavourite) {
        favouriteNews.add(news);
      }
    }
    return favouriteNews;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'Basketball News',
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(vertical: 20),
                itemCount: _favouriteNews().length,
                separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 25),
                itemBuilder: (BuildContext context, int index) {
                  final _news = _favouriteNews()[index];
                  return NewsCardWidget(
                    onTap: () {
                      context.router.push(NewsInfoRoute(news: _news));
                    },
                    image: _news.image,
                    title: _news.title,
                    date: _news.date,
                    isFavourite: _news.isFavourite,
                    FavOnTap: () {
                      _news.isFavourite ? _news.isFavourite = false : _news.isFavourite = true;
                      setState(() {});
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
