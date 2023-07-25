import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final List<dynamic> characters = jsonData['results'];

      for (final character in characters) {
        print('${character['name']}');
      }
    } else {
      print('Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error caught: $e');
  }
}
