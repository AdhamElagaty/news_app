import 'package:dio/dio.dart';
import 'package:news_app/models/new_post_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewServices {
  final Dio dio;

  NewServices(this.dio);
  factory NewServices.web() {
    return NewServices(Dio());
  }
  Future<List<NewPostModel>> getNewGeneralService(
      {required String catagory}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=97f6b451c81e442f84f1c272cc3fa05a&language=en&urlToImage=true&q=$catagory');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<NewPostModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(
          NewPostModel.fromJson(article),
        );
      }
      return articlesList;
      // ignore: unused_catch_clause
    } on Exception catch (e) {
      return [];
    }
  }

  Future<WebViewController> getWeb({required String? link}) async {
    final WebViewController controller = WebViewController()
      ..loadRequest(Uri.parse(link ?? ""));
    return controller;
  }
}
