import 'package:flutter/material.dart';
import 'package:wetherapp/models/articles_model.dart';
import 'package:wetherapp/widget/news_list_view_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
final String category;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(category:category,),
        ],
      ),
    );
  }
}
