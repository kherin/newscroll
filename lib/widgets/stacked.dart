import 'package:flutter/material.dart';
// models
import 'package:newscroll/models/newspaper.dart';
import 'package:newscroll/models/news.dart';

// Deck
import '../widgets/deck.dart';

// News Card
import '../widgets/news_card.dart';

class Stacked {
  static Widget generate(NewsPaperModel newspaper) {
    List<NewsModel> news = newspaper.news;
    List<Widget> cards = news.map((paper) => writeArticle(paper)).toList();
    return Deck(cards);
  }

  static Widget writeArticle(NewsModel paper) {
    return NewsCard(paper);
  }
}
