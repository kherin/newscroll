// models
import 'news.dart';

// utils
import '../shared/utils.dart';

class NewsPaperModel {
  final DateTime publishedDate;
  final List<NewsModel> news;

  const NewsPaperModel(this.publishedDate, this.news);

  factory NewsPaperModel.fromJson(Map<String, dynamic> json) {
    var publishedDate = json.entries.first.key;
    var newsList = json.entries.first.value;

    return NewsPaperModel(
      Utils.parseDateTime(publishedDate),
      parseNewsModel(newsList),
    );
  }

  static List<NewsModel> parseNewsModel(Iterable newsList) {
    return List<NewsModel>.from(
        newsList.map((model) => NewsModel.fromJson(model)));
  }
}
