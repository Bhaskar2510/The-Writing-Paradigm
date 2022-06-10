// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';

class PostDetails extends StatelessWidget {
  final data;
  const PostDetails({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 25.0, top: 25.0),
              child: Text(
                data['title']['rendered'],
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Image.network(data["_embedded"]["wp:featuredmedia"][0]["source_url"]),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              data['content']['rendered']
                  .toString()
                  .replaceAll("<p>", "")
                  .replaceAll("</p>", ""),
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
        ],
      ),
    );
  }
}
