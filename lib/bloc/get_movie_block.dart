import 'package:flutter_with_bloc_arhetecture/model/movie_responce.dart';
import 'package:flutter_with_bloc_arhetecture/repository/repository.dart';
import 'package:rxdart/subjects.dart';

class MovieListBlock {
  final Movierepository _rep = Movierepository();
  final BehaviorSubject<MovieResponce> _subject =
  BehaviorSubject<MovieResponce>();

  getMovies() async {
    MovieResponce responce = await _rep.getMovies();
    _subject.sink.add(responce);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MovieResponce> get subject => _subject;
}

final MoviesBloc = MovieListBlock();