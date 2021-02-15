import 'package:dio/dio.dart';
import 'package:flutter_with_bloc_arhetecture/model/movie_responce.dart';
import 'package:flutter_with_bloc_arhetecture/model/person_responce.dart';

class Movierepository {
  final String apikey = "key";
  static String mainUrl = "url";
  final Dio _dio = Dio();
  var getPopularUrl = "$mainUrl/movie/top_rated";
  var getMovieUrl = "$mainUrl/discover/movie";
  var getPersonUrl = "$mainUrl/trending/person/week";

  Future <MovieResponce> getMovies() async {
    var params = {
      "api_key": apikey,
      "language": "en-US",
      "page": "1"
    };
    try {
      Response responce = await _dio.get(
          getPopularUrl, queryParameters: params);
      return MovieResponce.fromJson(responce.data);
    } catch (error, stacktrace) {
      print("error");
      return MovieResponce.withError("error");
    }
  }

  Future <PersonResponce> getPeople() async {
    var params = {
      "api_key": apikey
    };
    try {
      Response responce = await _dio.get(
          getPopularUrl, queryParameters: params);
      return PersonResponce.fromJson(responce.data);
    } catch (error, stacktrace) {
      print("error");
      return PersonResponce.withError("error");
    }
  }

}
