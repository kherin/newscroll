// utils
import '../shared/utils.dart';

class NewsModel {
  final String id;
  final String text;
  final String context;
  final String imageURL;
  final String cardType;
  final String markedAsRead;
  final String contentCategory;
  final DateTime publishedDate;

  const NewsModel(
    this.id,
    this.text,
    this.context,
    this.imageURL,
    this.cardType,
    this.markedAsRead,
    this.publishedDate,
    this.contentCategory,
  );

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      json['id'] as String,
      json['text'] as String,
      json['context'] as String,
      json['imageURL'] as String,
      json['cardType'] as String,
      json['markedAsRead'] as String,
      Utils.parseDateTime(json['publishedDate']),
      json['contentCategory'] as String,
    );
  }
}
