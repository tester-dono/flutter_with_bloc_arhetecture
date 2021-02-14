
import 'package:flutter_with_bloc_arhetecture/model/person_responce.dart';
import 'package:flutter_with_bloc_arhetecture/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class PeopleListBlock {
  final Movierepository _rep = Movierepository();
  final BehaviorSubject<PersonResponce> _subject =
  BehaviorSubject<PersonResponce>();

  getMovies() async {
   // PersonResponce responce = await _rep.getPeople();
   // _subject.sink.add(responce); hmmmmmmmm
    //todo
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<PersonResponce> get subject => _subject;
}

final peopleBloc = PeopleListBlock();