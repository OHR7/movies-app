import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:movies_app/src/models/movie_model.dart';


class MoviesProvider {
  String _apiKey = 'cb325ef81aab2d033163e3af0cad8667';
  String _url = 'api.themoviedb.org';
  String _language = 'en-US';

  Future<List<Movie>>getInTheaters() async{

    final url = Uri.https(_url, '3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });

    final res = await http.get(url);
    final decodedData = json.decode(res.body);

    final movies = new Movies.fromJsonList(decodedData['results']);

    return movies.items;
  }
}