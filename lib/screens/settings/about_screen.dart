import 'package:auto_route/auto_route.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loading/loading-bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.router.pop();
                        },
                        child: SvgPicture.asset(
                            'assets/images/elements/arrow-back.svg'),
                      ),
                      Text(
                        'About us'.toUpperCase(),
                        style: TextStyle(
                            color: AppColors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    '''DK - Win Online is the perfect sports companion for all basketball and American football enthusiasts. With this app, you can stay updated on the latest news through a user-friendly interface and the option to save your favorite articles.
Key features:
1. News:
  - Get the latest updates on basketball and American football.
  - Read interesting articles from leading publications and industry experts.
2. Save Favorite Articles:
  - Bookmark intriguing articles in the "Favorites" section for future reference.
3. Quizzes:
  - Test your sports knowledge by taking quizzes on basketball and American football.
  - Compete with friends and other users to secure top positions in the rankings.
4. Puzzles:
  - Sharpen your mind with engaging sports-themed puzzles.
  - Collect pictures and learn more about your favorite teams and players''',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
