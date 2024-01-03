import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({Key? key}) : super(key: key);
  final List<CategoryModel> categories = [
    CategoryModel(categoryAssetImage: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(categoryAssetImage: 'assets/science.webp', categoryName: 'Science'),
    CategoryModel(categoryAssetImage: 'assets/technology.jpg', categoryName: 'Technology'),
    CategoryModel(categoryAssetImage: 'assets/sports.webp', categoryName: 'Sports'),
    CategoryModel(categoryAssetImage: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(categoryAssetImage: 'assets/entertainment.png', categoryName: 'Entertainment'),
    CategoryModel(categoryAssetImage: 'assets/general.jpg', categoryName: 'General'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Category(category: categories[index],);
        },
      ),
    );
  }
}
