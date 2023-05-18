// import 'package:flutter/material.dart';
// import 'package:testest/Settings.dart';

// class Page2 extends StatelessWidget {
//   final String name = "Fragile Monster";
//   final int age = 19;
//   final String bio = "Dumpling";
//   final String profileImageUrl = "assets/avatar.png";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//   appBar: AppBar(
//     title: Text(
//       'My Profile',
//       style: TextStyle(
//         fontSize: 24,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     backgroundColor: Color.fromARGB(255, 35, 16, 105),
//     actions: [
//       IconButton(
//         icon: Icon(Icons.settings),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => Settings()),
//           );
//         },
//       ),
//     ],
//   ),
//   body: SafeArea(
//     top: true,
//     child: Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 100),
//           CircleAvatar(
//             radius: 100,
//             child: Image.asset(
//               'assets/avatar.png',
//             ),
//           ),
//           SizedBox(height: 16),
//           Text(
//             "Fragile Monster",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 8),
//           Text(
//             '19 years old',
//             style: TextStyle(fontSize: 18),
//           ),
//           SizedBox(height: 8),
//           Text(
//             bio,
//             style: TextStyle(fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     ),
//   ),
// );

//   }
// }

// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Settings'),
//       ),
//       body: Center(
//         child: Text('This is the settings page.'),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    title: 'Mental Health Profile',
    theme: ThemeData(
      primaryColor: Colors.blue,
      accentColor: Colors.blueAccent,
    ),
    home: MentalHealthProfilePage(),
  ));
}

class MentalHealthProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Health Profile', style: GoogleFonts.merriweather()),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Anonymous User',
              style: GoogleFonts.merriweather(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Characteristics: Listener, Support Seeker',
              style: GoogleFonts.merriweather(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Card(
              elevation: 4.0,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Me',
                      style: GoogleFonts.merriweather(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'I am an anonymous user seeking support and understanding. '
                      'I am here to listen and provide support to others as well.',
                      style: GoogleFonts.merriweather(fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit Profile', style: GoogleFonts.merriweather()),
              style: ElevatedButton.styleFrom(primary: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
