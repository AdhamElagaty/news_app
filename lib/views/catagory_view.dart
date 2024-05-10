// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app/widgets/get_news_post_list.dart';

class CatagoryView extends StatelessWidget {
  const CatagoryView({
    Key? key,
    required this.catagory,
  }) : super(key: key);

  final String catagory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            GetNewsPostList(catagory: catagory),
          ],
        ),
      ),
    );
  }
}
