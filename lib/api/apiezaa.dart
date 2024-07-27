import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String?> fetchArabicLanguage() async {
  final url = Uri.parse('https://mp3quran.net/api/v3/languages');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Parse the JSON data
      final data = jsonDecode(response.body);

      // Extract the list of languages
      List<dynamic> languages = data['language'];

      // Find the language with the locale 'ar'
      final arabicLanguage = languages.firstWhere(
        (language) => language['locale'] == 'ar',
        orElse: () => null,
      );

      if (arabicLanguage != null) {
        // Return the radio URL
        return arabicLanguage['radios'];
      } else {
        print('Arabic language not found.');
        return null;
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
      return null;
    }
  } catch (e) {
    print('Error occurred: $e');
    return null;
  }
}

Future<void> fetchRadios() async {
  final url = Uri.parse('https://www.mp3quran.net/api/v3/radios?language=ar');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      // Parse the JSON data
      final data = jsonDecode(response.body);

      // Extract the list of radios
      List<dynamic> radios = data['radios'];

      if (radios.isNotEmpty) {
        // Print details for each radio
        for (var radio in radios) {
       Radiourl.add(radio['url']);
          print(Radiourl);
        }
      } else {
        print('No radios found.');
      }
    } else {
      print('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error occurred: $e');
  }
}

 List Radiourl = [];
