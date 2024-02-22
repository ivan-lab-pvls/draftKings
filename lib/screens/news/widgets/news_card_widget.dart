import 'package:draftkings_app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsCardWidget extends StatefulWidget {
  final void Function()? onTap;
  final void Function()? FavOnTap;
  final String image;
  final String title;
  final String date;
  final bool isFavourite;

  const NewsCardWidget(
      {super.key,
      required this.onTap,
      required this.FavOnTap,
      required this.image,
      required this.title,
      required this.date,
      required this.isFavourite});

  @override
  State<NewsCardWidget> createState() => _NewsCardWidgetState();
}

class _NewsCardWidgetState extends State<NewsCardWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                height: 180,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 330,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      widget.date,
                      style: TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: widget.FavOnTap,
                  child: SvgPicture.asset(widget.isFavourite
                      ? 'assets/images/elements/fav.svg'
                      : 'assets/images/elements/unfav.svg'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
