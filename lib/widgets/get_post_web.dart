import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/post_wep_view.dart';

class GetPostWeb extends StatelessWidget {
  const GetPostWeb({super.key, required this.link});

  final String? link;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewServices.web().getWeb(link: link),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PostWebView(
              controller: snapshot.data!,
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
