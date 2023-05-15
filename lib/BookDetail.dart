import 'package:flutter/material.dart';

class BookDetailsPage extends StatelessWidget {
  final dynamic book;

  BookDetailsPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(book["volumeInfo"]["title"]),
        backgroundColor: Color.fromARGB(240, 237, 120, 10),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                book["volumeInfo"]["imageLinks"]["thumbnail"],
                height: 200.0,
              ),
              SizedBox(height: 16.0),
              Text(
                "Title: ${book["volumeInfo"]["title"]}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                "Author(s): ${book["volumeInfo"]["authors"].join(", ")}",
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text(
                "Description: ${book["volumeInfo"]["description"]}",
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
