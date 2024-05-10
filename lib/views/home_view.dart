import 'package:flutter/material.dart';
import 'package:news_app/widgets/catagory_list_widget.dart';
import 'package:news_app/widgets/get_news_post_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CategoryList(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 12,
              ),
            ),
            GetNewsPostList(
              catagory: "General",
            ),
          ],
        ),
      ),
    );
  }
}
