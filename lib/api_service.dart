import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'article.dart';

class ApiService {
  Future<List<Article>> fetchArticles() async {
    final String response = await rootBundle.loadString('assets/donner.json');
    List jsonResponse = json.decode(response);
    return jsonResponse.map((data) => Article.fromJson(data)).toList();
  }
}
