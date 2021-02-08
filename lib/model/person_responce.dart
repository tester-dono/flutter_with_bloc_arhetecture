import 'package:flutter_with_bloc_arhetecture/model/person.dart';

class PersonResponce{
  final List<Person> movies;
  final String error;

  PersonResponce(this.movies,this.error);

  PersonResponce.fromJson(Map<String,dynamic> json)
      : movies = (json["results"] as List).map((i) => new Person.fromJson(i)).toList(),
        error = "";

  PersonResponce.withError(String errorValue)
      : movies = List(),
        error = errorValue;
}
