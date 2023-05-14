import 'package:flutter/material.dart';
import 'package:testest/Settings.dart';

class Page2 extends StatelessWidget {
  final String name = "Fragile Monster";
  final int age = 19;
  final String bio = "Dumpling";
  final String profileImageUrl = "assets/avatar.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
      'My Profile',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Color.fromARGB(255, 35, 16, 105),
    actions: [
      IconButton(
        icon: Icon(Icons.settings),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );
        },
      ),
    ],
  ),
  body: SafeArea(
    top: true,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 100),
          CircleAvatar(
            radius: 100,
            child: Image.asset(
              'assets/avatar.png',
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Fragile Monster",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text(
            '19 years old',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 8),
          Text(
            bio,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  ),
);

  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('This is the settings page.'),
      ),
    );
  }
}
