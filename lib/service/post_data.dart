import 'package:http/http.dart' as http;
import 'dart:convert';

class Post {
  final String _baseURL =
      "http://thewritingparadigm.com/wp-json/wp/v2/posts?_embed"; //Add URL
  Future<List> getAllPost() async {
    try {
      var response = await http.get(Uri.parse(_baseURL));
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
