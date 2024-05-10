import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/new_post_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_post_list_widget.dart';

class GetNewsPostList extends StatefulWidget {
  const GetNewsPostList({
    super.key,
    required this.catagory,
  });

  final String catagory;

  @override
  State<GetNewsPostList> createState() => _GetNewsPostListState();
}

class _GetNewsPostListState extends State<GetNewsPostList> {
  // ignore: prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    super.initState();
    future = NewServices(Dio()).getNewGeneralService(catagory: widget.catagory);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewPostModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsPostList(
            newPost: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) - 212.1,
              child: const Center(
                child: Text(
                  "OOPS! was an Error, Try later",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          );
        } else {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: (MediaQuery.of(context).size.height) - 212.1,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
      },
    );
  }
}
