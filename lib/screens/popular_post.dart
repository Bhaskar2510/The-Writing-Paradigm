// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:thewritingparadigm/screens/post_details.dart';
import 'package:thewritingparadigm/service/mycategory.dart';

class PopularPost extends StatefulWidget {
  const PopularPost({Key? key}) : super(key: key);

  @override
  _PopularPostState createState() => _PopularPostState();
}

class _PopularPostState extends State<PopularPost> {
  MyCategory categoryPostService = MyCategory();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<List>(
        future: categoryPostService.getCategoryPost(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data!.isEmpty) {
              return const Center(
                child: Text("0 Post"),
              );
            }
            return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data?.length,
                itemBuilder: (context, i) {
                  return Card(
                    child: ListTile(
                      title: Column(
                        children: [
                          const SizedBox(
                            height: 20.0,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 250.0,
                            child: Image.network(snapshot.data![i]
                                    ["_embedded"]!["wp:featuredmedia"][0]
                                ["source_url"]),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Text(
                            snapshot.data![i]['title']['rendered'],
                            style: const TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Container(
                        padding: const EdgeInsets.only(
                            left: 5.0, right: 5.0, bottom: 25.0),
                        child: Text(
                          snapshot.data![i]['content']['rendered']
                              .toString()
                              .replaceAll("<p>", "")
                              .replaceAll("</p>", ""),
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 16.0),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                PostDetails(data: snapshot.data?[i]),
                          ),
                        );
                      },
                    ),
                  );
                });
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
