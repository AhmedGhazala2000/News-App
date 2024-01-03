import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModels articlesModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              articlesModel.image?? 'https://th.bing.com/th?id=OIF.Lu0d0i9UPOxI8P%2fgwmPaGw&rs=1&pid=ImgDetMain',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5,),
          Text(
            articlesModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            articlesModel.description?? '',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
