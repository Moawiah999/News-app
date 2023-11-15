import 'package:flutter/material.dart';

import '../models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 120,
        width: 150,
        child: Center(
            child: Text(
          category.title,
          style: const TextStyle(color: Colors.white),
        )),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image),
          ),
        ),
      ),
    );
  }
}
