import 'package:flutter/material.dart';

// models
import '../models/news.dart';
// constants
import '../shared/constants.dart';
// widgets
import '../widgets/tagged.dart';

// dependencies
import 'package:cached_network_image/cached_network_image.dart';

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
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Tagged(TagType.primary, widget.news.contentCategory, 'fr'),
              Tagged(TagType.secondary, widget.news.contentCategory, 'mu')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Tagged(TagType.tertiary, widget.news.context, 'mu')
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
            child: getPhoto(widget.news.cardType, widget.news.imageURL),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
            child: Text(
              widget.news.title.toString(),
              textAlign: TextAlign.start,
              style: const TextStyle(
                fontSize: 18.0,
                fontFamily: 'Trebuchet',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 5, 0),
            child: Text(
              widget.news.text,
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              maxLines: 5,
              style: const TextStyle(
                height: 1.2,
                fontSize: 15.0,
                fontFamily: 'Trebuchet',
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getPhoto(String cardType, String imageURL) {
    if (cardType == 'photo_card') {
      return CachedNetworkImage(
        imageUrl: imageURL,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    } else {
      return Container();
    }
  }
}
