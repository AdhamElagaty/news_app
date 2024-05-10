import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostWebView extends StatelessWidget {
  const PostWebView({
    super.key,
    required this.controller,
  });

  final WebViewController controller;

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
      body: WebViewWidget(controller: controller),
    );
  }
}
