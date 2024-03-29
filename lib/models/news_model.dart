import 'package:flutter/material.dart';

class NewsModel {
  final String image;
  final String title;
  final String article;
  final String date;
  bool isFavourite;

  NewsModel({
    required this.image,
    required this.isFavourite,
    required this.title,
    required this.article,
    required this.date,
  });
}