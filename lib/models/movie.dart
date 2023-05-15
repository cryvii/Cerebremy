class Movie {
  final int id;
  final String title;
  final String posterUrl;
  final String overview;
  final String releaseDate;
  final double voteAverage;
  final String posterPath;

  Movie({
    required this.id,
    required this.title,
    required this.posterUrl,
    required this.overview,
    required this.releaseDate,
   required this.voteAverage,
    required this.posterPath,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      posterUrl: 'https://image.tmdb.org/t/p/w185${json['poster_path']}' as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'],
      releaseDate: json['release_date'] as String,
     voteAverage: (json['vote_average'] as num).toDouble(),
    );
  }

  static List<Movie> listFromJson(List<dynamic> json) {
    return json.map((data) {
      return Movie.fromJson(data);
    }).toList();
  }
}
