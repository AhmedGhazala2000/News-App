import 'package:flutter/material.dart';
import 'package:news_app/constant.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
 const CategoryListView({Key? key}) : super(key: key);


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
