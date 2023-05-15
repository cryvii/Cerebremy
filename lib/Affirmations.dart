// import 'dart:math';
// import 'package:flutter/material.dart';
//
// class MentalHealthPage extends StatelessWidget {
//   final List<String> images = [
//     "affirmations/image1.jpg",
//     "affirmations/image2.jpg",
//     "affirmations/image3.jpg",
//     "affirmations/image4.jpg",
//     "affirmations/image5.jpg",
//     "affirmations/image6.jpg",
//     "affirmations/image7.jpg",
//     "affirmations/image8.jpg",
//     "affirmations/image9.jpg",
//     "affirmations/image10.jpg"
//     "affirmations/image11.jpg"
//     "affirmations/image12.jpg",
//     "affirmations/image13.jpg",
//     "affirmations/image14.jpg",
//     "affirmations/image15.jpg",
//     "affirmations/image16.jpg",
//     "affirmations/image17.jpg",
//     "affirmations/image18.jpg",
//     // Add more image paths here
//   ];
//
//   String getRandomImage() {
//     Random random = Random();
//     int index = random.nextInt(images.length);
//     return images[index];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     String imagePath = getRandomImage();
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Positive Affirmations'),
//       ),
//       body: Center(
//         child: Image.asset(
//           imagePath,
//           width: 400,
//           height: 400,
//         ),
//       ),
//     );
//   }
// }


import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MentalHealthPage extends StatelessWidget {
  final Map<String, Color> imageColorMap = {
    "affirmations/image1.jpg": Color(0xfffecdbe),
    "affirmations/image2.jpg": Color(0xffffffff),
    "affirmations/image3.jpg": Color(0xffffffff),
    "affirmations/image4.jpg": Color(0xffffffff),
    "affirmations/image5.jpg": Color(0xfffafbfd),
    "affirmations/image6.jpg": Color(0xffffffff),
    "affirmations/image7.jpg": Color(0xffffffff),
    "affirmations/image8.jpg": Color(0xfffee3f2),
    "affirmations/image9.jpg": Color(0xfff9fafc),
    "affirmations/image10.jpg": Color(0xffbbd8de),
    "affirmations/image11.jpg": Color(0xfffcf1ef),
    "affirmations/image12.jpg": Color(0xffffffff),
    "affirmations/image13.jpg": Color(0xffffffff),
    "affirmations/image14.jpg": Color(0xfff8b2bd),
    "affirmations/image15.jpg": Color(0xffffffff),
    "affirmations/image16.jpg": Color(0xfff6efdf),
    "affirmations/image17.jpg": Color(0xffffffff),
    "affirmations/image18.jpg": Color(0xffb2a1ff),
    // Add more image-color mappings here
  };
  final Map<String, Color> appBarColorMap = {
    "affirmations/image1.jpg": Color(0xffb64f3c),
    "affirmations/image2.jpg": Color(0xffd268cc),
    "affirmations/image3.jpg": Color(0xffffc3ff),
    "affirmations/image4.jpg": Color(0xff123f97),
    "affirmations/image5.jpg": Color(0xff032645),
    "affirmations/image6.jpg": Color(0xff032693),
    "affirmations/image7.jpg": Color(0xff01ddb9),
    "affirmations/image8.jpg": Color(0xff1a0062),
    "affirmations/image9.jpg": Color(0xffe9511f),
    "affirmations/image10.jpg": Color(0xfff4d4ac),
    "affirmations/image11.jpg": Color(0xff013e84),
    "affirmations/image12.jpg": Color(0xffffb294),
    "affirmations/image13.jpg": Color(0xfff5d4f1),
    "affirmations/image14.jpg": Color(0xff000000),
    "affirmations/image15.jpg": Color(0xffaa78af),
    "affirmations/image16.jpg": Color(0xff6496a9),
    "affirmations/image17.jpg": Color(0xfffdbfb0),
    "affirmations/image18.jpg": Color(0xff000000),
    // Add more image-appBarColor mappings here
  };

  final List<String> images = [
    "affirmations/image1.jpg",
    "affirmations/image2.jpg",
    "affirmations/image3.jpg",
    "affirmations/image4.jpg",
    "affirmations/image5.jpg",
    "affirmations/image6.jpg",
    "affirmations/image7.jpg",
    "affirmations/image8.jpg",
    "affirmations/image9.jpg",
    "affirmations/image10.jpg",
    "affirmations/image11.jpg",
    "affirmations/image12.jpg",
    "affirmations/image13.jpg",
    "affirmations/image14.jpg",
    "affirmations/image15.jpg",
    "affirmations/image16.jpg",
    "affirmations/image17.jpg",
    "affirmations/image18.jpg",
    // Add more image paths here
  ];

  Color getBackgroundColor(String imagePath) {
    return imageColorMap[imagePath] ?? Colors.white;
  }
  Color getAppBarColor(String imagePath) {
    return appBarColorMap[imagePath] ?? Colors.grey;
  }
  String getRandomImage() {
    Random random = Random();
    int index = random.nextInt(images.length);
    return images[index];
  }

  @override
  Widget build(BuildContext context) {
    String imagePath = getRandomImage();
    Color backgroundColor = getBackgroundColor(imagePath);
    Color appBarColor = getAppBarColor(imagePath);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text('Today\'s Affirmation',
        style:GoogleFonts.merriweather(fontSize: 16)),
      ),
      body: Container(
        color: backgroundColor,
        child: Center(
          child: Image.asset(
            imagePath,
            width: 400,
            height: 400,
          ),
        ),
      ),
    );
  }
}
