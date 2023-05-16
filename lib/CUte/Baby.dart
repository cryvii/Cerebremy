import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    title: 'Cute Baby Pictures',
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
    home: CuteBabyPicturesPage(),
  ));
}

class CuteBabyPicturesPage extends StatefulWidget {
  @override
  _CuteBabyPicturesPageState createState() => _CuteBabyPicturesPageState();
}

class _CuteBabyPicturesPageState extends State<CuteBabyPicturesPage> {
  List<String> _babyPictureUrls = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchBabyPictures();
  }

  Future<void> fetchBabyPictures() async {
    final response = await http.get(Uri.parse(
        'https://api.unsplash.com/photos/random?count=10&query=baby&client_id=ojK1TDzE-rrfeHsAd8rou4HdwwbTR0gIp-WEoFfiZq0'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      final List<String> urls =
          data.map((item) => item['urls']['regular']).cast<String>().toList();
      setState(() {
        _babyPictureUrls = urls;
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Babies',style: GoogleFonts.merriweather()),
        backgroundColor: Color(0xfff7bfbe),
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
              itemCount: _babyPictureUrls.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  _babyPictureUrls[index],
                  fit: BoxFit.cover,
                );
              },
            ),
    );
  }
}


