import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:wetherapp/models/articles_model.dart';

import '../services/news_services.dart';
import 'news_tile.dart';

class NewsListeView extends StatefulWidget {
  const NewsListeView({
    super.key,
  });

  @override
  State<NewsListeView> createState() => _NewsListeViewState();
}

class _NewsListeViewState extends State<NewsListeView> {
  List<ArticlesModel> articles = [];
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices(Dio()).getNews();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsTile(
            articlesModel: articles[index],
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
