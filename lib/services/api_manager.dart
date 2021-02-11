import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leaditteam/constants/string.dart';
import 'package:leaditteam/models/news_info.dart';

class APIManager {
  Future<Welcome> getNews() async {
    var client = http.Client();
    var newsModel = null;

    try {
      var response = await client.get(Strings.news_url);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        Welcome.fromJson(jsonMap);
      }
    } catch (Exception) {
      return newsModel;
    }

    return newsModel;
  }
}