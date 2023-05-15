import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testest/models/movie.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class MovieApi {
  static const _apiKey = '6e4659fa73669484822745bc4399b700';
  static const _baseUrl = 'https://api.themoviedb.org/3';

  static Future<List<Movie>> getMovies() async {
    final response = await http.get(Uri.parse('$_baseUrl/movie/popular?api_key=$_apiKey&per_page=1000'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final results = data['results'] as List<dynamic>;

      return Movie.listFromJson(results);
    } else {
      throw Exception('Failed to load movies');
    }
  }
}

