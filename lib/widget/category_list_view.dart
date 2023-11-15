import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  final List<CategoryModel> categorysitem = [
    CategoryModel(
      image: "asset/images/entertaiment.avif",
      title: "entertaiment",
    ),
    CategoryModel(
      image: "asset/images/health.avif",
      title: "health",
    ),
    CategoryModel(
      image: "asset/images/science.avif",
      title: "science",
    ),
    CategoryModel(
      image: "asset/images/technology.jpeg",
      title: "technology",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorysitem.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categorysitem[index],
          );
        },
      ),
    );
  }
}
