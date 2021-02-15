import 'package:flutter/cupertino.dart';
import 'package:flutter_with_bloc_arhetecture/model/movie_responce.dart';

class NowPlaying extends StatefulWidget{
  @override
  _NowPlaying createState() => _NowPlaying()
  }

  class _NowPlaying extends State<NowPlaying> {

    @override
    void initState() {
      super.initState();
      nowPlayingMo
    }
    @override
    Widget build(BuildContext context) {
      return StreamBuilder < MovieResponce > {
        stream: mowPlayingMoviesBloc.subject.stream,
        builder: (context, AsyncSnapshot<MovieResponce> snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data.error != null && snapshot.data.error.length > 0) {
              return _buildErrorWidget(snapshot.data.error)
            }
            return _buildNowPlayingWidget(snapshot.data);
          }
          else if (snapshot.hasError) {
            return _buildErrorWidget(snapshot.error);
          }
          else {
            return _buildLoadingWidget();
          }
        };
      };
    }
  }