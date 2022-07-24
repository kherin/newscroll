import 'package:flutter/material.dart';
// models
import 'package:newscroll/models/newspaper.dart';
import 'package:newscroll/models/news.dart';

class Stacked {
  static generate(NewsPaperModel newspaper) {
    List<NewsModel> news = newspaper.news;
    return Column(
      children: <Widget>[
        ...news.map((NewsModel article) {
          return Text('Id: ${article.id}');
        })
      ],
    );
  }

  static writeArticle(NewsModel paper) {
    return Text('Id: ${paper.id}');
  }
}
