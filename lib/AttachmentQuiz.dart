import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebPages(),
    );
  }
}

class WebPages extends StatefulWidget {
  @override
  _WebPagesState createState() => _WebPagesState();
}

class _WebPagesState extends State<WebPages> {
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attachment Quiz'),
        backgroundColor: Color.fromARGB(255, 211, 115, 60),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: 'https://quiz.attachmentproject.com/relationship-structures/mother-conditions?token=cf0efdbcc9fde8ae9fe0587b2cf1f2fd',
            javascriptMode: JavascriptMode.unrestricted,
            onPageStarted: (String url) {
              setState(() {
                _isLoading = true;
              });
            },
            onPageFinished: (String url) {
              setState(() {
                _isLoading = false;
              });
            },
          ),
          if (_isLoading)
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}
