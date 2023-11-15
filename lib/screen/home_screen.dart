import 'package:flutter/material.dart';

import '../services/news_services.dart';
import '../widget/category_list_view.dart';
import '../widget/news_liste_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "News ",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orange),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            NewsListeView(),
          ],
        ),
      ),
    );
  }
}
