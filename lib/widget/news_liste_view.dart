import 'package:flutter/material.dart';
import 'package:wetherapp/models/articles_model.dart';

import 'news_tile.dart';

class NewsListeView extends StatelessWidget {
  final List<ArticlesModel> articles;

  NewsListeView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return NewsTile(
            articlesModel: articles[index],
          );
        },
      ),
    );
  }
}
