import 'dart:convert';

import 'package:flutter_with_bloc_arhetecture/model/movie.dart';

class MovieResponce{
  final List<Movie> movies;
  final String error;

  MovieResponce(this.movies,this.error);

  MovieResponce.fromJson(Map<String,dynamic> json)
  : movies = (json["results"] as List).map((i) => new Movie.fromJson(i)).toList(),
  error = "";

  MovieResponce.withError(String errorValue)
  : movies = List(),
  error = errorValue;
}

