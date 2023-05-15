// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import 'BookDetail.dart';

// class BookRecommendationPage extends StatefulWidget {
//   @override
//   _BookRecommendationPageState createState() => _BookRecommendationPageState();
// }

// class _BookRecommendationPageState extends State<BookRecommendationPage> {
//   final String apiUrl =
//       "https://www.googleapis.com/books/v1/volumes?q=recommended%20books&maxResults=10";

//   List<dynamic> books = [];

//   Future<void> fetchBooks() async {
//     var response = await http.get(Uri.parse(apiUrl));
//     if (response.statusCode == 200) {
//       var data = jsonDecode(response.body);
//       setState(() {
//         books = data["items"];
//       });
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     fetchBooks();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Book Recommendations"),
//       ),
//       body: Container(
//         child: ListView.builder(
//           itemCount: books.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//               leading: Image.network(
//                 books[index]["volumeInfo"]["imageLinks"]["thumbnail"],
//               ),
//               title: Text(books[index]["volumeInfo"]["title"]),
//               subtitle: Text(books[index]["volumeInfo"]["authors"].join(", ")),
//               onTap: () {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => BookDetailsPage(book: books[index]),
//     ),
//   );
// },

//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'BookDetail.dart';

class BookRecommendationPage extends StatefulWidget {
  @override
  _BookRecommendationPageState createState() => _BookRecommendationPageState();
}

class _BookRecommendationPageState extends State<BookRecommendationPage> {
  final String _apiUrl = "https://www.googleapis.com/books/v1/volumes?q=recommended%20books";
  int _startIndex = 1;
  List<dynamic> _books = [];

  Future<void> _fetchBooks(int startIndex) async {
    var response = await http.get(Uri.parse("$_apiUrl&startIndex=$startIndex"));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      setState(() {
        _books.addAll(data["items"]);
        _startIndex += data["items"].length as int;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchBooks(_startIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.menu_book, color: Colors.black),
            SizedBox(width: 10),
            Text('Books', style:
            TextStyle(color: Colors.black))
          ],
        ),
        // Text("Books",
        // style:TextStyle(
        // color: Colors.black)),
        backgroundColor: Color(0xfff9ded7),
        iconTheme: IconThemeData(
          color: Colors.black, // Set your desired color here
        ),
        //Color.fromARGB(255, 229, 170, 20),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _books.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.network(
                      _books[index]["volumeInfo"]["imageLinks"]["thumbnail"],
                    ),
                    title: Text(_books[index]["volumeInfo"]["title"]),
                    subtitle: Text(_books[index]["volumeInfo"]["authors"].join(", ")),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDetailsPage(book: _books[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _fetchBooks(_startIndex);
              },
              child: Text("Load More",
              style: TextStyle(
                color: Colors.black
              )),
              style: ElevatedButton.styleFrom(
                primary: Color(0xfff9ded7),)
            ),
          ],
        ),
      ),
    );
  }
}
