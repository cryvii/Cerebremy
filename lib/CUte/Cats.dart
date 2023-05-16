import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'Cute Cat Pictures',
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
    home: CuteCatPicturesPage(),
  ));
}

class CuteCatPicturesPage extends StatefulWidget {
  @override
  _CuteCatPicturesPageState createState() => _CuteCatPicturesPageState();
}

class _CuteCatPicturesPageState extends State<CuteCatPicturesPage> {
  List<String> _catPictureUrls = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchCatPictures();
  }

  Future<void> fetchCatPictures() async {
    final response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/random?count=10&query=cat&client_id=ojK1TDzE-rrfeHsAd8rou4HdwwbTR0gIp-WEoFfiZq0'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<String> urls =
          data.map((item) => item['urls']['regular']).cast<String>().toList();
      setState(() {
        _catPictureUrls = urls;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cute Cat Pictures'),
      ),
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              padding: EdgeInsets.all(8.0),
              itemCount: _catPictureUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Image.network(
                    _catPictureUrls[index],
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
    );
  }
}
