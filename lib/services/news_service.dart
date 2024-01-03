import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  NewsService();

  final Dio dio = Dio();

  Future<List<ArticlesModels>> getNews({required category}) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?apiKey=f35760322f714f8e8cd54b3588af9630&searchIn=title&q=$category');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];
    List<ArticlesModels> articlesList = [];
    for (var article in articles) {
      ArticlesModels articlesModels = ArticlesModels.fromJson(json: article);
      articlesList.add(articlesModels);
    }
    return articlesList;
  }
}
