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
        elevation: 0.5,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          data['title']['rendered'],
          style: const TextStyle(
              fontFamily: 'SourceSansPro', fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Image.network(data["_embedded"]["wp:featuredmedia"][0]["source_url"]),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                Text(
                  data['content']['rendered']
                      .toString()
                      .replaceAll("<p>", "")
                      .replaceAll("</p>", ""),
                  style: const TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
