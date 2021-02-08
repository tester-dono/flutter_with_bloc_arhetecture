class Movie {
  final int id;
  final double popular;
  final String title;
  final String backPoster;
  final String overview;
  final String rating;

  Movie(
    this.id,
    this.popular,
    this.title,
    this.backPoster,
    this.overview,
    this.rating,
  );

  Movie.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        popular = json["id"],
        title = json["title"],
        backPoster = json["backdrop_path"],
        overview = json["overview"],
        rating = json["rating"];
}
