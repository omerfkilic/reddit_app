import 'package:http/http.dart' as http;

String _url = 'https://www.reddit.com/r/flutterdev/top.json?count=20';

Future<http.Response?> getAllPostsFromApi() async {
  final uri = Uri.parse(_url);
  var response = await http.get(uri);

  print('response: ' + response.body);

  if (response.statusCode == 200) {
    return response;
  }
  return null;
}
