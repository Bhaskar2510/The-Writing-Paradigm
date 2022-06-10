import 'package:http/http.dart' as http;
import 'dart:convert';

class MyCategory {
  String baseURL =
      "http://thewritingparadigm.com/wp-json/wp/v2/posts?_embed&categories=7";
  Future<List> getCategoryPost() async {
    try {
      var response = await http.get(Uri.parse(baseURL));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (socketException) {
      return Future.error("Error Fetching Data");
    }
  }
}
