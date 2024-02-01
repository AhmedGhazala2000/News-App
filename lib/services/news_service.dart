import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  NewsService();

  final Dio dio = Dio();

  Future<List<ArticlesModel>> getNews({required category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?apiKey=f35760322f714f8e8cd54b3588af9630&searchIn=title&q=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticlesModel> articlesList = [];
    for (var article in articles) {
      ArticlesModel articlesModel = ArticlesModel.fromJson(jsonData: article);
      articlesList.add(articlesModel);
    }
    return articlesList;
  }
}
