import 'package:flutter/material.dart';

// models
import '../models/news.dart';
// constants
import '../shared/constants.dart';
// widgets
import '../widgets/tagged.dart';

class NewsCard extends StatefulWidget {
  final NewsModel news;
  const NewsCard(this.news);

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: CARD_BACKGROUND_COLOR,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: <Widget>[Tagged(TagType.primary, 'ki_news', 'fr')],
      ),
    );
  }
}
