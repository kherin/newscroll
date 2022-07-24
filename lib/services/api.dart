import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

// model
import '../models/news.dart';
import '../models/newspaper.dart';

// constants
import '../shared/constants.dart';

class ApiService {
  static Future<List<NewsModel>?> getNews() async {
    try {
      var endpoint =
          '${ApiConstants['baseUrl']}${ApiConstants['newsEndpoint']}';
      var url = Uri.parse(endpoint);
      var response = await http.get(url);

      if (response.statusCode == 200) {
        // List<NewsModel> model = NewsModel.fromJson(response.body);
        // return model;
      }
    } catch (e) {
      return <NewsModel>[];
    }
  }

  static Future<List<NewsPaperModel>?> getMockedNews() async {
    final String response =
        await rootBundle.loadString('assets/mocks/news.json');

    Iterable newspaperList = jsonDecode(response);

    List<NewsPaperModel> newspapers = List<NewsPaperModel>.from(
      newspaperList.map((model) => NewsPaperModel.fromJson(model)),
    );
    print('newspapers: $newspapers');
    return newspapers;
  }
}
