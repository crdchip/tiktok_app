// import 'dart:convert';

// import 'package:appclo/config/data/tiktok/tiktok_data.dart';
// import 'package:http/http.dart' as http;

// class TiktoksApi {
//   static Future<List<Tiktok>> getTiktoks(String query) async {
//     final url = Uri.parse('http://dak-api.site/api/crawler/tiktok');
//     final response = await http.get(url);

//     if (response.statusCode == 200) {
//       final List tiktoks = json.decode(response.body)['data'];

//       return tiktoks.map((json) => Tiktok.fromJson(json)).toList();
//     } else {
//       throw Exception();
//     }
//   }
// }
