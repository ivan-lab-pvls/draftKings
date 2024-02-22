import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';

class OnboardingCardWidget extends StatelessWidget {
  final String image;
  final String text;
  const OnboardingCardWidget({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Image.asset(image),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
