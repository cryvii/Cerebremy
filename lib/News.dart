import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<dynamic> _articles = [];

  Future<void> _fetchNews() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=88e37200c01e4e09b60b9de5a7f05cc0'));
    if (response.statusCode == 200) {
      setState(() {
        _articles = json.decode(response.body)['articles'];
      });
    } else {
      throw Exception('Failed to fetch news');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        backgroundColor: Color(0xFF880808),
      ),
      body: _articles.isNotEmpty
          ? ListView.builder(
        itemCount: _articles.length,
        itemBuilder: (context, index) {
          final article = _articles[index];
          return Card(
            child: InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(article['urlToImage']),
                  ListTile(
                    title: Text(article['title']),
                    subtitle: Text(article['description']),
                  ),
                ],
              ),
            ),
          );
        },
      )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
