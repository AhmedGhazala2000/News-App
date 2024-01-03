import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlesModels> articlesList;
  const NewsListView({super.key, required this.articlesList});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlesList.length,
        (context, index) => NewsTile(articlesModel: articlesList[index]),
      ),
    );
  }
}
