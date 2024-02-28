import 'package:auto_route/auto_route.dart';
import 'package:DK_app/router/router.dart';
import 'package:DK_app/screens/onboarding/widgets/onboarding_card_widget.dart';
import 'package:DK_app/theme/colors.dart';
import 'package:DK_app/widgets/action_button_widget.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 700,
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      isLastPage = index == 2;
                    });
                  },
                  controller: controller,
                  children: [
                    OnboardingCardWidget(
                      image: 'assets/images/onboarding/1.png',
                      text:
                          'Fresh Articles on Basketball and American Football. Read and add them to Favorite',
                    ),
                    OnboardingCardWidget(
                      image: 'assets/images/onboarding/2.png',
                      text:
                          'Test your sports knowledge with basketball and American football quizzes',
                    ),
                    OnboardingCardWidget(
                      image: 'assets/images/onboarding/3.png',
                      text:
                          'Develop your mind by playing interesting puzzles with a sports theme',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.router.push(MainRoute());
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    ActionButtonWidget(
                        text: 'Next',
                        color: AppColors.green,
                        width: 90,
                        onTap: () {
                          isLastPage
                              ? context.router.push(MainRoute())
                              : controller.nextPage(
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut);
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
