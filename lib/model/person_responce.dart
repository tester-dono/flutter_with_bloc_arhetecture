import 'package:flutter_with_bloc_arhetecture/model/person.dart';

class PersonResponce{
  final List<Person> persons;
  final String error;

  PersonResponce(this.persons,this.error);

  PersonResponce.fromJson(Map<String,dynamic> json)
      : persons = (json["results"] as List).map((i) => new Person.fromJson(i)).toList(),
        error = "";

  PersonResponce.withError(String errorValue)
      : persons = List(),
        error = errorValue;
}
