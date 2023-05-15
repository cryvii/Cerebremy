import 'package:flutter/material.dart';
import 'package:testest/views/widgets/recipe_card.dart';

import '../models/movie.api.dart';
import '../models/movie.dart';
class MoviePage extends StatefulWidget {
  @override
  _MoviePageState createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late List<Movie> _movies = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadMovies();
  }

  Future<void> _loadMovies() async {
    try {
      final movies = await MovieApi.getMovies();
      setState(() {
        _movies = movies;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      print('Failed to load movies');
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.local_movies_rounded, color: Colors.black),
            SizedBox(width: 10),
            Text('Movies', style:
            TextStyle(color: Colors.black))
          ],
        ),
        // title: Text('Movie List',
        // style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xfff3effd),
        iconTheme: IconThemeData(
          color: Colors.black, // Set your desired color here
        ),
      ),
      body: _isLoading
          ? Center(
        child: CircularProgressIndicator(),
      )
          : ListView.builder(
        itemCount: _movies.length,
        itemBuilder: (context, index) {
          final movie = _movies[index];
          return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          Container(
          height: 200,
          decoration: BoxDecoration(
          image: DecorationImage(
          image: NetworkImage(movie.posterUrl),
          fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0),
          ),
          ),
          SizedBox(height: 8.0),
          // Text(
          // movie.title,
          // style: TextStyle(fontSize: 18.0),
          // ),
          //SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(movie: movie),
                  ),
                );
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  movie.title,
                  style: TextStyle(fontSize: 18.0),
                ),

                //Icon(Icons.arrow_forward),
              ),
            ),
    ],
    ),
    );
    },
    ),







          //   ListTile(
          //   leading: Image.network(movie.posterUrl),
          //   title: Text(movie.title),
          //   //subtitle: Text(movie.director),
          //   trailing: Icon(Icons.arrow_forward),
          //   onTap: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => MovieDetailPage(movie: movie),
          //       ),
          //     );
          //   },
          // );


      //   },
      // ),
    );
  }
}

class MovieDetailPage extends StatelessWidget {
  final Movie movie;

  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 500,
               // width: 355,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(movie.posterUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              // Text(
              //   'Director: ${movie.director}',
              //   style: TextStyle(fontSize: 18),
              // ),
              SizedBox(height: 8),
           Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.star, color: Colors.amber, size: 18),
              const SizedBox(width: 5),
              Text(
                '${movie.voteAverage}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
              SizedBox(height: 8),
              Text(
                'Release Year: ${movie.releaseDate}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Description: ${movie.overview}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
