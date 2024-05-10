import 'package:flutter/material.dart';
import 'package:news_app/widgets/new_post_widget.dart';
import 'package:news_app/models/new_post_model.dart';

class NewsPostList extends StatelessWidget {
  const NewsPostList({super.key, required this.newPost});

  final List<NewPostModel> newPost;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: newPost.length,
        (context, index) => NewPost(newPost: newPost[index]),
      ),
    );
  }
}
