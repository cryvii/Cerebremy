import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'Cute Puppies',
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
    home: CutePuppiesPage(),
  ));
}

class CutePuppiesPage extends StatefulWidget {
  @override
  _CutePuppiesPageState createState() => _CutePuppiesPageState();
}

class _CutePuppiesPageState extends State<CutePuppiesPage> {
  List<String> _puppyGifUrls = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchPuppyGifs();
  }

  Future<void> fetchPuppyGifs() async {
    final response = await http.get(Uri.parse(
        'https://api.giphy.com/v1/gifs/search?api_key=4pdS2RQ0j6qMoDPFCcsceVjPIzxrbxbp&q=puppies&limit=10'));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> gifs = data['data'];
      final List<String> urls = gifs
          .map((item) => item['images']['original']['url'])
          .cast<String>()
          .toList();
      setState(() {
        _puppyGifUrls = urls;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Puppies', style: GoogleFonts.merriweather(),),
        backgroundColor: Colors.brown[400],
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 8.0,
                crossAxisSpacing: 8.0,
              ),
              itemCount: _puppyGifUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  _puppyGifUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
    );
  }
}
